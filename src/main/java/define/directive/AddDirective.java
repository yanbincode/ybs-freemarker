package define.directive;

import java.io.IOException;
import java.util.Map;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelException;

/**
 * 自定义指令，将标签内传入的两个参数相加
 * 
 * @author yanbin
 * 
 */
public class AddDirective implements TemplateDirectiveModel {

	@Override
	public void execute(Environment env, Map params, TemplateModel[] loopVars, TemplateDirectiveBody body)
			throws TemplateException, IOException {
		Integer result = 0;
		if (!params.isEmpty()) {
			Integer v1 = Integer.parseInt(params.get("v1").toString());
			Integer v2 = Integer.parseInt(params.get("v2").toString());
			result = v1 + v2;
		}

		// 循环次数不为0，就是禁用循环变量
		if (loopVars.length != 0) {
			throw new TemplateModelException("This directive doesn't allow loop variables.");
		}
		env.getOut().write(result.toString());
	}

}

// 使用方法：
// <@add v1="1" v2="2">
// 输出结果为：
// 3

