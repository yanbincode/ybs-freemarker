package servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import freemarker.template.Configuration;
import freemarker.template.TemplateModelException;

/**
 * 核心servlet，只初始化 freemarker配置属性，存放在servletcontext中
 * 
 * @author yanbin
 * 
 */
public class InitFreemarkerConfig extends GenericServlet {

	private static final long serialVersionUID = -4960021987129723377L;

	@Override
	public void init() throws ServletException {
		try {
			// 获取根目录路径
			String path = this.getServletContext().getRealPath("/");

			// 配置freemarker的存放目录的路径
			Configuration config = new Configuration();
			config.setDirectoryForTemplateLoading(new File(path + "WEB-INF/ftl"));

			// 设置全局的共享变量
			config.setSharedVariable("company", "Foo Inc.");

			// 放入servlet上下文中，供后续调用
			this.getServletContext().setAttribute("freemarkerConfig", config);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (TemplateModelException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException {

	}

}
