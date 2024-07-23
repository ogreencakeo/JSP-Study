package com.test;

import java.io.IOException;
// import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(description = "헬로우월드", urlPatterns = {"/hello", "/world"})
public class Sample02 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Sample02() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 컨텐트 타입 설정
		response.setContentType("text/html; charset=UTF-8");
		
		// PrintWriter out = response.getWriter();	
		
		String html = null;
		
		
		html += ("<!DOCTYPE html>");
		html += ("<html lang='ko'>");
		html += ("<head><meta charset='UTF-8'><title>TEST</title></head>");
		html += ("<body>");
		html += ("<h1>Hello World (헬로우 코리아 !)</h1>");
		html += ("</body>");
		html += ("</html>");
		
		response.getWriter().write(html);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
