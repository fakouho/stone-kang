package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.database.DAO;
import com.smhrd.model.MemberVO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	// 1. 한글 인코딩 잡아주기
		request.setCharacterEncoding("UTF-8");
		
	// 2. 요청데이터 꺼내오기(2개)
	
		String email=request.getParameter("email");
		String pw=request.getParameter("pw");
	
	// 3. 요청데이터들을 하나로 묶어주기
		MemberVO vo = new MemberVO();
		vo.setEmail(email);
		vo.setPw(pw);
	// 4. DAO 생성하기
		DAO dao = new DAO();
	// 5. DAO 안에 있는 로그인 기능 사용하기
		MemberVO resultVO=dao.login(vo);
	// 6. 로그인 성공했다면, session영역에 회원 정보를 저장하기
		if(resultVO!=null) {
			//6-1. session 데이터 꺼내오기
			HttpSession session=request.getSession();
			//6-2. session 데이터 저장하기(member name값으로 저장)
			session.setAttribute("member", resultVO);
		}
	// 7. main.jsp로 redirect방식으로 이동하기
	response.sendRedirect("main.jsp");
	
	}

}
