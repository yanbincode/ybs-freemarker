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
 * 自定义指令，实现TemplateDirectiveModel接口
 * 
 * @author yanbin
 * 
 */
public class DefineDirective implements TemplateDirectiveModel {

	@Override
	public void execute(Environment env, Map params, TemplateModel[] loopVars, TemplateDirectiveBody body)
			throws TemplateException, IOException {
		// 检查是否传递参数，此指令禁止传参！ 这个参数指的是指令中的参数
		if (!params.isEmpty()) {
			throw new TemplateModelException("This directive doesn't allow parameters.");
		}

		// 循环次数不为0，就是禁用循环变量
		if (loopVars.length != 0) {
			throw new TemplateModelException("This directive doesn't allow loop variables.");
		}
		// 指令内容体不为空
		if (body != null) {
			// 标签下输出 “hello”
			env.getOut().write("hello");
		} else {
			throw new RuntimeException("missing body");
		}
	}

}

// 使用方法：
// <@hello>
// aaa bbb ccc
// </@hello>
// 输出结果为：
// hello