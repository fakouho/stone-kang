package servlet_240221;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex04preationjava")
public class Ex04preationjava extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num1=Integer.parseInt(request.getParameter("data1"));
		int num2=Integer.parseInt(request.getParameter("data2"));
		String  op=request.getParameter("op");
		// 선택한 연산자 데이터 꺼내오기!
		// 내가 가지고온 연산에 따라 해당 연산을 진행할수 있는 로직
		
		int sum =0;
		if(op.equals("+")) 
			{sum=num1+num2;
			}
		else if(op.equals("-"))
			{sum=num1-num2;
			}
		else if(op.equals("*")) 
			{sum=num1*num2;
			}
		else 
			{sum=num1/num2;}
		
		
		PrintWriter out = response.getWriter();
			out.print(sum);
	}

}
