package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutService")
public class LogoutService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 1. session 꺼내오기
		HttpSession session=request.getSession();
		// 2. session 삭제하기(소멸시키기)
		session.invalidate();
		// 3. main.jsp redirect 방식 이동시키기
		response.sendRedirect("main.jsp");
	}

}
