package com.smhrd.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.database.DAO;
import com.smhrd.model.MemberVO;

public class Join implements Command{

	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		System.out.println("가져온 데이터 >>" + email + "," + pw + "," + address);
		MemberVO vo = new MemberVO(email, pw, tel, address);
		DAO dao = new DAO();
		int row = dao.join(vo);
		if (row > 0) {
			request.setAttribute("email", email);
			return "join_success";
		} else {
			return "redirect:/main";
		}

	}

}
