package com.test.FrontController;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.database.DAO;
import com.test.model.AccExerciseVO;
import com.test.model.MemberVO;


@WebServlet("/SelectDate")
public class SelectDate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html; charset=utf-8");
		
		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");
		
		MemberVO membervo = (MemberVO) request.getSession().getAttribute("member");
		String mem_id = membervo.getMem_id();
		
		AccExerciseVO getExCatevo = new AccExerciseVO(mem_id, start_date, end_date);
		DAO dao = new DAO();
		ArrayList<AccExerciseVO> list = (ArrayList<AccExerciseVO>) dao.getAcExCate(getExCatevo);
		
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		String json = gson.toJson(list);
		
		out.print(json);
		
	}

}
