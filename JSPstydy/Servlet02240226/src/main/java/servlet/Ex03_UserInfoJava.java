package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex03_UserInfoJava")
public class Ex03_UserInfoJava extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 요청에 대한 인코딩 작업
		request.setCharacterEncoding("UTF-8");
		
		//2. 요청에 대한 데이터 꺼내오기
		String jab=request.getParameter("jab");
		String gender=request.getParameter("gender");
		String[] hp=request.getParameterValues("hp");
		//getParameterValues = 여러개의 값을 하나의 네임으로 전송할때
		//3. 콘솔창에 데이터 띄워보기
		System.out.println(jab);
		System.out.println(gender);
		//System.out.println(hp);
		for(String dt:hp) {
			System.out.println(dt);
		}
		
	
	}

}
