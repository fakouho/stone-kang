package com.example.demo.config;

import java.io.IOException;

import org.springframework.context.annotation.Configuration;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletResponse;

@Configuration
public class CORSFilter implements Filter {

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        System.out.println("필터링이 진행중입니다...");
        HttpServletResponse response = (HttpServletResponse) res;
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Credentials", "true");
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
        response.setHeader("Access-Control-Allow-Max-Age", "3600");
        response.setHeader("Access-Control-Allow-Headers", "X-Requested-With, Content-Type, "
                + "Authorization, Origin, Accept, Access-Control-Request-Method, Access-Control-Request-Headers");

        chain.doFilter(req, res);
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // 초기화 코드가 필요하면 작성
    }

    @Override
    public void destroy() {
        // 정리 코드가 필요하면 작성
    }
}
