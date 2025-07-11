package com.multicampus.web.board;

import java.io.IOException;

import com.multicampus.biz.board.BoardDAO;
import com.multicampus.biz.board.BoardVO;
import com.multicampus.biz.user.UserVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/deleteBoard.do")
public class DeleteBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("===> 글 삭제 처리");
		
		// 0. 세션 체크
		// HttpSession 객체는 브라우저당 하나씩 유지된다. 브라우저가 살아있는 동안 재사용된다.
		HttpSession session = request.getSession();
		UserVO user = (UserVO) session.getAttribute("user");
/*
		if(user == null) {
			response.sendRedirect("login.html");
		} else {*/
			
			// 1. 사용자 입력정보 추출
			String seq = request.getParameter("seq");
			
			// 2. DB 연동 처리
			BoardVO vo = new BoardVO();
			vo.setSeq(Integer.parseInt(seq));
			
			BoardDAO dao = new BoardDAO();
			dao.deleteBoard(vo);
			
			// 3. 화면 이동
			response.sendRedirect("getBoardList.do");
		}
	}