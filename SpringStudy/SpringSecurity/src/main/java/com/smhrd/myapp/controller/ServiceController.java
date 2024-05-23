package com.smhrd.myapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.smhrd.myapp.dto.MemberDTO;
import com.smhrd.myapp.entity.Member;
import com.smhrd.myapp.repo.MemberRepository;


@Controller
public class ServiceController {
	
	@Autowired
	private MemberRepository repo;
	@Autowired
	private PasswordEncoder encoder; // -> securityconfiguration
	
	@PostMapping("/join")
	public String join(MemberDTO dto) {
		
		Member entity= new Member(dto.getUserid(),dto.getPw(),"user",encoder);
		
		repo.save(entity);
	
		return "redirect:/";
	}
	

	@PostMapping("/login")
	public String login(MemberDTO dto) {
		Member entity = repo.findByUseridAndPw(dto.getUserid(),dto.getPw());
		if (entity != null) {
			return "redirect:/dashboard";
		}
		return "redirect:/";
	}
	
	
	
}