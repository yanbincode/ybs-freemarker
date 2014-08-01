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

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

/**
 * 读取ftl中的内容。 数据模型+模板=输出
 * 
 * @author yanbin
 * 
 */
public class LoadAndPrintFtlServlet extends HttpServlet {

	private static final long serialVersionUID = 6956264832664013288L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取根目录路径
		String path = this.getServletContext().getRealPath("/");

		// 配置freemarker的存放目录的路径
		Configuration cfg = new Configuration();
		cfg.setDirectoryForTemplateLoading(new File(path + "WEB-INF/ftl"));

		// 获取ftl文件 Template 对象
		Template template = cfg.getTemplate("begin/01.by-load.ftl");

		/* 创建数据模型 */
		Map<String, Object> root = new HashMap<String, Object>();
		root.put("user", "Big Joe");
		Map<String, String> latest = new HashMap<String, String>();
		latest.put("url", "products/greenmouse.html");
		latest.put("name", "green mouse");
		root.put("latestProduct", latest);

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
