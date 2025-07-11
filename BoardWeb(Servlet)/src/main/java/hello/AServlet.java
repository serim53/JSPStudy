package hello;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/a.do")
public class AServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext context = getServletContext();
		context.setAttribute("nickName", "RIM");
		
		
		
		// 1. Redirect 방식의 화면 이동
		// request를 이용한 정보공유는 불가능하다.
		// response.sendRedirect("b.do");

//		HttpSession session = request.getSession();
//		session.setAttribute("nickName", "RIM");
//		//request.setAttribute("nickName", "RIM");
//		
//		response.sendRedirect("b.do");
		
		// 2. Forward 방식의 화면 이동
		// => 더 빠름. 모든 이동은 Forward 방식으로 하는게 좋음
		
//		RequestDispatcher rd = request.getRequestDispatcher("b.do");
//		rd.forward(request, response);
	}
}