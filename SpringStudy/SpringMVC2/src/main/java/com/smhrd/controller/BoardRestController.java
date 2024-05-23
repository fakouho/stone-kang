package com.smhrd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.db.BoardMapper;
import com.smhrd.model.BoardVO;
import com.smhrd.model.searchCriteria;

// Controller + responBody 기능 합쳐짐
//Representational State Transfer
@RestController
public class BoardRestController {
	// 비동기 통신으로 요청이 들어왔을 때 처리해주는 역할
	
	@Autowired
	private BoardMapper mapper;
	// 자동완성 기능
		@RequestMapping("/autocomplete")
		
		public List<BoardVO> autocomplete(searchCriteria criteria) {
			// 리턴타입이나 매개변수의 자료형은 자유롭게 설정
			// --> 내가 handling하기 편한 자료형으로 ㅈ지정하는 것이 좋다
			List<BoardVO> autocomplete = mapper.autocomplete(criteria);
			return autocomplete;
		}

		// 비동기통신으로 검색하는 기능
		@RequestMapping("/search")
		 // -> 해당하는 메소드는 화면을 이동시키는 메소드가 아니라, 결과값을 화면에 출력해주는 메소드
		public List<BoardVO> search(searchCriteria criteria) {
			List<BoardVO> list = mapper.search(criteria);
			return list; // return 된 값이 화면에 출력
			// list에는 주소값이 담겨져있다.
			// 우리가 비동기통신으로 보내줘야하는 데이터는 json 구조다
			// 주소-->변환->>json(spring에서는 자동진행 다만 라이브러리 설치)
		}
}
