package com.example.demo;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class DemoController {

	@GetMapping("/your-endpoint")
	public ResponseEntity<List<String>> getData() {
		List<String> data = Arrays.asList("Data1", "Data2", "Data3", "과자");
		return ResponseEntity.ok(data);
	}

	@PostMapping("/send-data")
	public ResponseEntity<String> sendData(@RequestBody Map<String, String> payload) {
		String message = payload.get("message");
		System.out.println("연결완료! 내용: " + message);
		return ResponseEntity.ok("Data received");
	}

}
