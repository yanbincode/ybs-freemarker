package define.type;

import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateModelException;

public class DefineBoolean implements TemplateBooleanModel {

	@Override
	public boolean getAsBoolean() throws TemplateModelException {
		return false;
	}

}
