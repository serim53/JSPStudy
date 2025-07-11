package com.multicampus.web.user;

import java.io.IOException;

import com.multicampus.biz.user.UserDAO;
import com.multicampus.biz.user.UserVO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class InsertUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("===> 회원 가입 처리");
		// 1. 사용자 입력정보 추출
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String role = request.getParameter("role");
//		String selfInfo = request.getParameter("selfInfo");
//		String[] languages = request.getParameterValues("languages");
//		String age = request.getParameter("age");
		
		System.out.println("아이디 : " + id);
		System.out.println("비밀번호 : " + password);
		System.out.println("이름 : " + name);
		System.out.println("역할 : " + role);
//		System.out.println("자기소개 : " + selfInfo);
//		System.out.println("언어 : " + Arrays.toString(languages));
//		System.out.println("나이 : " + age);
		
		// 2. DB 연동 처리
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPassword(password);
		vo.setName(name);
		vo.setRole(role);
		
		UserDAO dao = new UserDAO();
		dao.insertUser(vo);
		
		// 3. 화면 이동
		// response.sendRedirect("login.html");
		RequestDispatcher rd = request.getRequestDispatcher("/");
		rd.forward(request, response);
	}

}
