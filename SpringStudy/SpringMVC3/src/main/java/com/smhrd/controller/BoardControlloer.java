package com.smhrd.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smhrd.db.BoardMapper;
import com.smhrd.model.BoardVO;
import com.smhrd.model.searchCriteria;

@Controller // 기능이 정의 되어 있음.
public class BoardControlloer {
	@Autowired
	private BoardMapper mapper;

	

	@RequestMapping("/boardDelete/{idx}")
	public String deleteBoard(@PathVariable("idx") int idx) {
		mapper.boardDelete(idx);
		return "redirect:/";
	}

	// 게시글 지우기
	@GetMapping("/boardContent/{idx}")
	public String boardContent(@PathVariable("idx") int idx, Model model) {
		System.out.println("수집한데이터>>" + idx);
		BoardVO result = mapper.boardContent(idx);
		model.addAttribute("board", result);
		return "boardContent";
	}

	// 글쓰기 기능을 하는 메소드 생성
	@PostMapping("/register") // -> post전송방식일대만 메소드 실행
	public String register(BoardVO vo) {
		System.out.print(vo);
		mapper.register(vo);
		return "redirect:/";
	}

	// 글쓰기 페이지로 이동하는 메소드 생성
	@GetMapping("/register")
	public String register() {
		return "register";
	}

	// Spring F/W는 url mapping값을 메소드 단위로 설정함.
	// RequedstMapping --> url mapping값을 잡아주는 방법
	@RequestMapping("/") // "/" 요청이 들어왔을 때 board 메소드를 실행
	public String board(Model model) {
		List<BoardVO> list = mapper.boardList();
		model.addAttribute("list", list);
		return "board";
	}
	
	
}
