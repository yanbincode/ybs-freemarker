package define.writer;

import java.io.IOException;
import java.io.Writer;

/**
 * 将经过这个输出流的内容，转换成大写
 * 
 * @author yanbin
 * 
 */
public class UpperCaseWriter extends Writer {

	private final Writer out;

	public UpperCaseWriter(Writer out) {
		this.out = out;
	}

	@Override
	public void write(char[] cbuf, int off, int len) throws IOException {
		char[] content = new char[len];
		for (int i = 0; i < len; i++) {
			content[i] = Character.toUpperCase(cbuf[i + off]);
		}
		out.write(content);
	}

	@Override
	public void flush() throws IOException {
		out.flush();
	}

	@Override
	public void close() throws IOException {
		out.close();
	}

}
