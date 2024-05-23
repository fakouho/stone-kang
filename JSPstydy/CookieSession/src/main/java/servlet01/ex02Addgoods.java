package servlet01;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Addgoods")
// Servlet을 생성할 때 url mapping을 잡아주면 좋은점?
// ---> /가 없으면 다음 페이지로 넘어가지 않기 때문에, 내 실수를 방지할 수 있다!
// 여기서 수정해도 되나요? >> 네! 상관없습니다.
public class ex02Addgoods extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 체크박스를 체크하고 담기 누르기
		// 쿠키데이터를 전부 꺼내오기
		// name이 product로 시작되는 데이터들만
		// setMaxAge(0)
		
		// 1. 요청받은 데이터를 꺼내오기
		String[] maxb=request.getParameterValues("product");
		// 2. 요청받은 데이터의 개수만큼 쿠키 생성하기
		for(int i = 0; i<maxb.length; i++) {
			Cookie cookie = new Cookie("product"+i, maxb[i]);
			//네임값은 중복 불가능
			// 3. 요청받은 데이터의 개수만큼 쿠기 보내주기
			response.addCookie(cookie);
		}
		// 4. Shop.jsp 페이지로 이동
		// redirect(요청2번 /응답 2번) / forward(요청1번/응답1번)
		response.sendRedirect("Shop.jsp");
	}

}
