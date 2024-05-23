package com.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.database.DAO;
import com.test.model.MemberVO;
import com.test.model.SaltVO;
import com.test.util.Encrypt;

public class Update implements Command{
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String mem_pw = request.getParameter("mem_pw");
		String mem_newpw = request.getParameter("mem_newpw");
		// String mem_name = request.getParameter("mem_name");
		// String mem_phone = request.getParameter("mem_phone");
		String mem_addr = request.getParameter("mem_addr");
		String mem_email = request.getParameter("mem_email");
		String mem_nick = request.getParameter("mem_nick");
		
		MemberVO membervo = (MemberVO) request.getSession().getAttribute("member");
		String mem_id = membervo.getMem_id();
		
		// 암호화된 비밀번호를 알기위해 mem_id에 해당하는 salt값을 가져옴
		DAO dao = new DAO();
		SaltVO saltvo = new SaltVO(); 
		saltvo.setMem_id(mem_id);
		SaltVO saltResult = dao.saltLogin(saltvo); 
		
		String mem_salt = saltResult.getMem_salt();
		// 현재 비밀번호를 입력하면 salt값을 이용하여 암호화된 비밀번호를 찾아냄
		String encry = Encrypt.getEncrypt(mem_pw, mem_salt);
		
		// 세션에 저장된 비밀번호와 찾아낸 비밀번호가 같을 경우에 실행
		if(membervo.getMem_pw().equals(encry)) {
			String salt = Encrypt.getSalt();
			String newEncry = Encrypt.getEncrypt(mem_newpw, salt);
			// 새로운 비밀번호 저장
			saltvo.setMem_salt(salt);
			membervo.setMem_pw(newEncry);
			
			// 수정된 정보 저장
			if(mem_nick != "") {
				membervo.setMem_nick(mem_nick);
			}
			if(mem_addr != "") {
				membervo.setMem_addr(mem_addr);
			}
			// membervo.setMem_name(mem_name);
			// membervo.setMem_phone(mem_phone);
			if(mem_email != "") {
				membervo.setMem_email(mem_email);
			}
		}
		dao.updateMem(membervo);
		dao.updateSalt(saltvo);
		request.getSession().setAttribute("member", membervo);
		
		// 개인정보 수정후 개인정보수정 페이지로 이동
		return "redirect:/fitupdateForm.do";
	}
}
