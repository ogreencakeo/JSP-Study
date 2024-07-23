package com.test;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Sample03")
public class Sample03 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Sample03() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		System.out.println("Sample03.init() - 초기화 담당 / 서버 실행 시 한 번 동작");
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Sample03.service() - 서블릿 호출 시 매번 동작");
	}

}
