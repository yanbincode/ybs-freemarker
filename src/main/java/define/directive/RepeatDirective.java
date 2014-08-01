package define.directive;

import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import freemarker.core.Environment;
import freemarker.template.SimpleNumber;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelException;
import freemarker.template.TemplateNumberModel;

/**
 * 重复执行的指令，重复的次数决定参数
 * 
 * @author yanbin
 * 
 */
public class RepeatDirective implements TemplateDirectiveModel {

	@Override
	public void execute(Environment env, Map params, TemplateModel[] loopVars, TemplateDirectiveBody body)
			throws TemplateException, IOException {

		// 初始定义循环次数为0
		Integer countParam = 0;

		// 遍历参数 params
		Set entrySet = params.entrySet();
		Iterator<Entry> iterator = entrySet.iterator();

		while (iterator.hasNext()) {
			Entry entry = iterator.next();
			String paramName = (String) entry.getKey();
			TemplateModel paramValue = (TemplateModel) entry.getValue();

			if (paramName.equals("count")) {
				if (!(paramValue instanceof TemplateNumberModel)) {
					throw new TemplateModelException("The \"count\" parameter must be a number.");
				}
				countParam = ((TemplateNumberModel) paramValue).getAsNumber().intValue();
				if (countParam < 0) {
					throw new TemplateModelException("The \"count\" parameter can't be negative.");
				}
			}
		}

		Writer out = env.getOut();
		if (null != body) {
			for (int i = 0; i < countParam; i++) {
				out.write("<hr>");
				// 如果有循环变量，那么就设置它:
				if (loopVars.length > 0) {
					loopVars[0] = new SimpleNumber(i + 1);
				}
				// 执行嵌入体部分（和FTL 中的<#nested>一样）。
				body.render(env.getOut());
			}
		} else {
			throw new RuntimeException("missing body");
		}
	}

}
