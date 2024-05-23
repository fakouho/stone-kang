package servlet_240221;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex07loginjava")
public class ex07loginjava extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 로그인을 할 수 있는지 없는지 서비스 제공
		
		// 1. 보내주는 데이터를 꺼내오기 -> ID,PW
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		// 2. "smart"/ "123" 이라면  -> "smart"님 환영합니다.
		// 2. "smart"/ "123" 아니라면 -> 로그인에 실패했습니다. 출력
		
		// 응답을 위한 한글 인코딩
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out =response.getWriter();
		
		
		if(id.equals("smart") && pw.equals("123")) {
			out.print("smart님 환영합니다.");
		}else {
			out.print("로그인에 실패했습니다.");
		}
		
		
		
	}

}
