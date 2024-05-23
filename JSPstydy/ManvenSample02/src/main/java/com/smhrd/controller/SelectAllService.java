package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.database.DAO;
import com.smhrd.model.MemberVO;

@WebServlet("/SelectAllService")
public class SelectAllService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		
		// 1. DAO 생성하기
			DAO dao = new DAO();
		// 2. DAO 안에 있는 전체 회원 조회 기능 사용하기
			List<MemberVO> list=dao.selectAll();
		
		// 3. 조회한 데이터 request 영역에 저장하기
		request.setAttribute("list", list);
		// 4. select.jsp로 forward 방식으로 이동하기
		RequestDispatcher rd=request.getRequestDispatcher("select.jsp");
		rd.forward(request, response);
		
		
	
	
	}

}
