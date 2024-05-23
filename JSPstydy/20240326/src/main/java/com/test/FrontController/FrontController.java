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
import com.test.controller.ComparePage;
import com.test.controller.MainPage;
import com.test.controller.ReservePage;
import com.test.controller.Unregister;
import com.test.controller.Update;
import com.test.controller.UpdatePage;
import com.test.controller.InputCh;
import com.test.controller.InputEx;
import com.test.controller.InputPage;
import com.test.controller.Join;
import com.test.controller.Login;
import com.test.controller.Logout;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private HashMap<String, Command> map = new HashMap<String, Command>();
	
	@Override
	public void init() throws ServletException{
		map.put("Join.do", new Join());
		map.put("Login.do", new Login());
		map.put("InputEx.do", new InputEx()); // 누적 운동 기입
		map.put("Logout.do", new Logout()); // 로그아웃
		map.put("InputCh.do", new InputCh()); // 누적 신체변화량 입력
		map.put("MainPage.do", new MainPage()); // 메인
		map.put("ComparePage.do", new ComparePage()); // 비교
		map.put("InputPage.do", new InputPage()); // 운동입력
		map.put("ReservePage.do", new ReservePage()); // 예약
		map.put("UpdatePage.do", new UpdatePage()); // 회원정보수정페이지 이동
		map.put("Update.do", new Update()); // 회원정보수정
		map.put("Unregister.do", new Unregister());
		
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
			String redirectPath = finalPath.substring("redirect:/".length());
		    response.sendRedirect(redirectPath);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/Views/" + finalPath + ".jsp");
			rd.forward(request, response);
		}
	}
}
