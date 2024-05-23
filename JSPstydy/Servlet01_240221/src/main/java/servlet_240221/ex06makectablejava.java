package servlet_240221;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex06makectablejava")
public class ex06makectablejava extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		int num1=Integer.parseInt(request.getParameter("data1"));
		out.print("<html>");
		out.print("<body>");
		out.print("<table border=1>");
		out.print("<tr>");
		
		
		for(int i =1 ; i<=num1; i++) {
		out.print("<td>"+i+"</td>");
		}
		
		
		
		out.print("</tr>");
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
		
	}

}
