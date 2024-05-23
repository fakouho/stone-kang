package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.persistence.WebBoardRepository;

import lombok.extern.java.Log;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/boards/")
@Log
public class WebBoardController {
	
	@Autowired
	private WebBoardRepository repo;
	
	@GetMapping("/list")
	public PageMaker<WebBoard> list() {
		log.info("list() called...");
	}
}
