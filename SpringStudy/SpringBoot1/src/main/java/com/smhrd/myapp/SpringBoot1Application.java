package com.smhrd.myapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//componentScan : 해당 경로를 기준으로 하위 패키지에 있는 bean을 자동으로 등록
//SpringBootConfiquration : 스프링부트의 전반적인 환경설정을 담당
//EnableAutoConfiquration : jar 파일을 경로사엥 놔두며 자동으로 필요객체 생성

// 위 3개의 어노테이션을 하나로 합친 어노테이션
// SpringBoot 프로젝트의 시작지점
@SpringBootApplication
public class SpringBoot1Application {

	public static void main(String[] args) {
		SpringApplication.run(SpringBoot1Application.class, args);
	}

}
