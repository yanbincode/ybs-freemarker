package servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import define.directive.AddDirective;
import define.directive.DefineDirective;
import define.directive.RepeatDirective;
import define.directive.UpperCaseDirective;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

public class DefineDirectiveServlet extends HttpServlet {

	private static final long serialVersionUID = 2687036897287439059L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取根目录路径
		String path = this.getServletContext().getRealPath("/");

		// 配置freemarker的存放目录的路径
		Configuration cfg = new Configuration();
		cfg.setDirectoryForTemplateLoading(new File(path + "WEB-INF/ftl"));

		// 获取ftl文件 Template 对象
		Template template = cfg.getTemplate("begin/04.define-directive.ftl");

		/* 创建自定义的指令 */
		Map<String, Object> root = new HashMap<String, Object>();
		root.put("hello", new DefineDirective());
		root.put("upper", new UpperCaseDirective());
		root.put("add", new AddDirective());
		root.put("repeat", new RepeatDirective());

		/* 将模板和数据模型合并 */
		PrintWriter out = response.getWriter();
		try {
			// 利用process方法输出
			template.process(root, out);
		} catch (TemplateException e) {
			e.printStackTrace();
		} finally {
			out.flush();
			out.close();
		}
	}

}
