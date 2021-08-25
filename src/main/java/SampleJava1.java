import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SampleJava1")
public class SampleJava1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SampleJava1() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF8");
		response.setContentType("text/html; charset=UTF8");
		response.getWriter().append("get1:").append(request.getParameter("param1"));
		response.getWriter().append("<BR>");
		response.getWriter().append("get2:").append(request.getParameter("param2"));

		// 呼び出し先Jspに渡すデータセット
		request.setAttribute("resParam1", request.getParameter("param1"));
		request.setAttribute("resParam2", request.getParameter("param2"));

		// result.jsp にページ遷移
		RequestDispatcher dispatch = request.getRequestDispatcher("result.jsp");
		dispatch.forward(request, response);
	}
}
