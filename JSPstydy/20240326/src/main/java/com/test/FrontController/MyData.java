package com.test.FrontController;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.database.DAO;
import com.test.model.MemberVO;

@WebServlet("/MyData")
public class MyData extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");

		MemberVO membervo = (MemberVO) request.getSession().getAttribute("member");
		String mem_id = membervo.getMem_id();

		// mem_id로 유저의 모든정보를 가져오기
		DAO dao = new DAO();
		MemberVO memdata = dao.MemPhysicalData(mem_id);

		// 가져온 변화량 데이터를 json 형식으로 넘겨주기
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		String json = gson.toJson(memdata);

		out.print(json);

	}

}
