package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	
	// FrontController(servlet) --> 자원을 많이 차지하는
	// 일반클래스 파일(class) --> 자원을 적게 차지
	// Command(Interface) -> 메뉴얼 / 규격
	public String execute(HttpServletRequest request, HttpServletResponse response);

}
