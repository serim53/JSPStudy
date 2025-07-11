package com.multicampus.web.board;

import java.io.IOException;

import com.multicampus.biz.board.BoardDAO;
import com.multicampus.biz.board.BoardVO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class InsertBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("===> 글 등록 처리");
		// 1. 사용자 입력정보 추출
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		
		// 2. DB 연동 처리
		BoardVO vo = new BoardVO();
		vo.setTitle(title);
		vo.setWriter(writer);
		vo.setContent(content);
		
		BoardDAO dao = new BoardDAO();
		dao.insertBoard(vo);
		
		// 3. 화면 이동
		// 등록/수정/삭제에 대해서는 포워드 방식이 아닌 리디렉트 방식을 사용해야 함
		// url 변경이 되지 않아 같은 동작이 계속 반복됨.
		response.sendRedirect("getBoardList.do");
	}
}
