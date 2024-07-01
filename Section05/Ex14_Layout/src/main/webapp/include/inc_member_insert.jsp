<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	.input1{
		width : 300px;
		height: 40px;
		background: #f0f0f0;
		border: 1px solid #666;
		padding-left: 10px;
	}
	th{
		text-align: right;
	}
</style>
<form action="#" method="post" autocomplete="off">
	<table>
		<caption>member insert</caption>
		<colgroup>
			<col width="25%">
			<col width="75%">
		</colgroup>
		<tbody>	
			<tr>
				<th>ID</th>
				<td align="left"><input class="input1" type="text" name="id" placeholder="아이디 입력" required /></td>
			</tr>
			<tr>
				<th>Password</th>
				<td align="left"><input class="input1" type="password" name="pw" placeholder="비밀번호 입력" required /></td>
			</tr>
			<tr>
				<th>Name</th>
				<td align="left"><input class="input1" type="text" name="name" placeholder="이름 입력" required /></td>
			</tr>
			<tr>
				<th>Email</th>
				<td align="left"><input class="input1" type="text" name="email" placeholder="이메일 입력" required /></td>
			</tr>
			<tr>
				<th>Phone</th>
				<td align="left"><input class="input1" type="text" name="phone" placeholder="전화번호 입력" /></td>
			</tr>
		</tbody>
	</table>
	<div style="padding-top: 10px">
		<button>회원입력</button>
		<button onclick="location.href='<%= application.getAttribute("ROOTPATH")%>/member_control.jsp?action=list';">회원 리스트 페이지</button>
	</div>
</form>