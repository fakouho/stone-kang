package com.test.FrontController;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.controller.Command;
import com.test.controller.InputEx;
import com.test.controller.Join;
import com.test.controller.Login;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private HashMap<String, Command> map = new HashMap<String, Command>();
	
	@Override
	public void init() throws ServletException{
		map.put("Join.do", new Join());
		map.put("Login.do", new Login());
		map.put("InputEx.do", new InputEx());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String uri = request.getRequestURI();
		String cp = request.getContextPath();
		String path = uri.substring(cp.length() + 1);

		String finalPath = null;
		Command com = map.get(path);
				
		// 우리의 화면페이지를 fit~~로 설정
		if(path.startsWith("fit")) {
			finalPath = path.replace("fit", "").replace(".do", "");
		}else {
			finalPath = com.execute(request, response);
		}
		
		if(finalPath == null) {
			
		}else if(finalPath.contains("redirect:/")) {
			response.sendRedirect(finalPath.split("/")[1]);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/Views/" + finalPath + ".jsp");
			rd.forward(request, response);
		}
	}
}
