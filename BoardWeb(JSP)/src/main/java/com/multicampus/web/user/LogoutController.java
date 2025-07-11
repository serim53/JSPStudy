package com.multicampus.web.user;

import com.multicampus.web.Controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LogoutController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("로그아웃 기능 처리");
		
		// 로그아웃을 요청한 브라우저와 매핑된 세션을 강제로 종료한다.
		HttpSession session = request.getSession();
		session.invalidate();
		
		// 화면 이동
		return "index";
		
	}

}
