package servlet_240221;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex03_Plusjava")
public class Ex03_Plusjava extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//1.html에서 념겨주는 데이터를 꺼내오기 -> 두개 데이터
		//	-꺼내온 데이터 변수에 저장하기
		
		//2. 꺼내온 데이터 연산 진행하기
		int num1 = Integer.valueOf(request.getParameter("data1")); 
		int num2 = Integer.parseInt(request .getParameter("data2")); 
		
		 int sum=num1+num2;
		
		// 3. 화면에 결과값이 출력되도록 만들기
		 PrintWriter out = response.getWriter();
		 out .print(sum);
		
		
	}

}
