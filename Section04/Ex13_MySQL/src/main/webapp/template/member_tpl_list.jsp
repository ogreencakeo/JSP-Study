<%@page import="java.util.ArrayList"%>
<%@page import="member.site.com.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="db" class="member.site.com.MemberDAO" scope="application" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member List</title>
<style>
	ul>li{
		line-height: 2rem;
	}
</style>
<script>
	function deleteAllonClick() {
		const res = confirm("전체 삭제하시겠습니까?");
		if(res){
			window.location.href = "./action/member_deleteAll_ok.jsp";
		}
	}
</script>
</head>
<body>
	<h2>Member List</h2>
	<hr>
	<ul>
		<%-- <%
			 ArrayList<MemberVO> dataList = db.listDB();
		
			for(int i=0; i<dataList.size(); i++){
				out.println("<li>" + dataList.get(i) + "</li>");
			} 
			
			for(MemberVO m : dataList){
				out.println("<li>" + m );
				out.println("<button onclick='location.href=\"member_control.jsp?action=update&id=" + m.getId() + "\";'>Update</button>");
				out.println("<button>Delete</button>");
				out.println("</li>");
			}
		%> --%>
		<!-- 반복문을 사용하여 dataList 출력하기 -->
		<%
			for(MemberVO m : db.listDB()){
				%>
					<li>
						<%=m %>
						&nbsp;
						<button onclick="location.href='<%= application.getAttribute("ROOTPATH") %>/member_control.jsp?action=update&id=<%=m.getId() %>';">Update</button>
					</li>
				<%
			}
		%>
	</ul>
	<hr>
	<button onclick="location.href='<%= application.getAttribute("ROOTPATH") %>/member_control.jsp?action=insert';">회원 입력</button>
	<button onclick="deleteAllonClick();">전체 삭제</button>
</body>
</html>