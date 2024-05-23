package servlet01;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/MakeSession")
public class ex03MakeSession extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	// session을 생성하는 역할은 서버에서 자동으로 진행한다.
		
	// 1. session을 가져오기
	HttpSession session = request.getSession();
	
	// 2. session에 데이터를 저장하기
	ArrayList<String> list = new ArrayList<String>();
	list.add("강우석");
	session.setAttribute("testSession",list);
	// Object value =list;
	// Object value =new ArrayList<String>();
	// * upcasting이 일어난다.
	// 자식클래스가 부모클래스로 자동으로 형변환
		
	// 3.Ex02_GetSession.jsp로 redirect방식으로 사용해서 이동
	response.sendRedirect("Ex02_GetSession.jsp");
	
	// session을 삭제하는 방법
	// session.invalidate();
	// -> 모든 데이터를 삭제하는게 일반적이므로 위의 코드 사용하기
	// session.removeAttribute("name값");
		
	// 쿠키(장바구니 데이터 / 트랙킹)
	// 저장위치 : 웹 브라우저(클라이언트)
	// 저장가능한 자료형 : String 자료형
	// 생명주기 : 지정한 생명만큼 유지될 수 있음
	// 보안성 : 세션보다는 떨어짐
	// 속도 : 빠름
	
	// 세션(로그인 정보 유지)
	// 저장위치 : 서버
	// 저장가능한 자료형 : 모든 자료형 
	// 생명주기 : 브라우저 종료시 까지
	// 보안성 : 쿠키보다는 뛰어나다
	// 속도 : 느림
	// ** : 다중세션을 사용시 서버속도 감소	
		
	}

}
