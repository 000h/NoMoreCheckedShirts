<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>createForm.jsp</title>
<jsp:include page="commom/StyleScript.jsp" />

</head>
<body>

	<jsp:include page="commom/header.jsp" />
	<div class="container">
		<ul class="nav nav-tabs">
			<li class="active"><a href="admin">ADMIN</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">회원관리 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="NAcreateForm">관리자등록</a></li>
					<li><a href="NAreadAll">회원정보보기</a></li>
					<li><a href="NAdeleteForm">회원정보삭제</a></li>
				</ul></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">주문관리 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="NTreadAll">주문보기</a></li>
				</ul></li>
			<li><a href="#">Menu 3</a></li>
		</ul>
		<div id="main">
			<form action="NAcreate" method="post">
			<br>
			<h1>관리자 정보를 입력해주세요</h1>
			<table class="table table-striped">
				<tr>
					<td>계정명 </td>
					<td><input type="text" name="id" id="" /></td>
				</tr>
				<tr>
					<td>비밀번호 </td>
					<td><input type="text" name="pw" id="" /></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" id="" /></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="hp" id="" /></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="addrs" id="" /></td>
				</tr>
				<tr>
					<td>우편번호</td>
					<td><input type="text" name="postcode" id="" /></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="등록하기" />
					</td>
				</tr>
			</table>
			</form>
		</div>
	</div>

	<jsp:include page="commom/footer.jsp" />

</body>
</html>