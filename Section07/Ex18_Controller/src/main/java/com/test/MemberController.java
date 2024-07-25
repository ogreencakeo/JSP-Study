package com.test;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	MemberService meberService;
	MemberVO memberVO;
	
    public MemberController() {
        super(); 
    }

	public void init() throws ServletException {
		meberService = new MemberService();
		memberVO = new MemberVO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	// doGet(), doPost() 요청 모두 여기에서 처리
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 뷰페이지 템플릿
		String viewPage = "";
		
		// 설정
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String action = "/memberInsert.do";
		
		// 분기 처리
		try {
			if(action.equals("/memberList.do")) {
				// MemberService.list() 메서드 호출
				List<MemberVO> dataList = meberService.list();
				
				// 뷰 페이지 템플릿
				viewPage += "<!DOCTYPE html>";
				viewPage += "<html lang=\"ko\">";
				viewPage += "<head><meta charset=\"UTF-8\"><title>리스트 페이지</title></head>";
				viewPage += "<body>";
				viewPage += "<h2>MemberController.doHandle() => /memberList.do 리스트 페이지 호출</h2>";
				viewPage += "<hr />" + dataList;
				viewPage += "</body>";
				viewPage += "</html>";
				
				// 뷰 페이지 출력
				response.getWriter().write( viewPage );
				
			}else if(action.equals("/memberInsert.do")) {

				// 뷰 페이지 템플릿
				viewPage += "<!DOCTYPE html>";
				viewPage += "<html lang=\"ko\">";
				viewPage += "<head><meta charset=\"UTF-8\"><title>입력 페이지</title></head>";
				viewPage += "<body>";
				viewPage += "<h2>MemberController.doHandle() => /memberInsert.do 리스트 페이지 호출</h2>";
				viewPage += "<hr />";
				viewPage += "</body>";
				viewPage += "</html>";
				
				// 회원 한 명 입력
				memberVO.setId("슈퍼맨");
				memberVO.setPw("1234");
				memberVO.setName("superman");
				memberVO.setEmail("superman@gmail.com");
				memberVO.setPhone("010-1111-1111");
				
				// 추가 
				meberService.add(memberVO);
				
				// 뷰 페이지 출력
				response.getWriter().write( viewPage );
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
