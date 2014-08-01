package define.method;

import java.util.List;

import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateModelException;

/**
 * 自定义方法
 * 
 * @author yanbin
 * 
 */
public class DefineMethod implements TemplateMethodModel {

	@Override
	public Object exec(List list) throws TemplateModelException {
		// 模拟做个加法
		Long addNum = (Long) list.get(0) + (Long) list.get(1);
		return addNum;
	}

}

// 使用方式：
// root.put("add", new DefineMethod());
// <#assign x = 1>
// ${add(2, x)}
// ${add(3, x)}

