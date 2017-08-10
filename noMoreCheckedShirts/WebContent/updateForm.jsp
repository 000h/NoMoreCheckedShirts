<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>updateForm.jsp</title>
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
					<li><a href="NAcreateForm">신규회원등록</a></li>
					<li><a href="NAreadAll">회원정보보기</a></li>
					<li><a href="NAdeleteForm">회원정보삭제</a></li>
				</ul></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="NTreadAll">주문관리 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="#">주문보기</a></li>
				</ul></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">상품관리 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="NPinsertMain">제품등록</a></li>
				</ul></li>
		</ul>
		<div id="main">
			<div class="container">
				<br>
				<h1>회원 정보 수정 페이지입니다</h1>
				<form action="NAupdate?acode=${readOne.acode }" method="post">
				<br>
				<table class="table table-striped">
					<tr>
						<td>이름</td>
						<td><input type="text" name="name" id="" value="${readOne.name }" /></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td><input type="text" name="hp" id="" value="${readOne.hp }" /></td>
					</tr>
					<tr>
						<td>주소</td>
						<td><input type="text" name="addrs" id="" value="${readOne.addrs }" /></td>
					</tr>
					<tr>
						<td>우편번호</td>
						<td><input type="text" name="postcode" id="" value="${readOne.postcode }" /></td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="수정하기" />
						</td>
					</tr>
				</table>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="commom/footer.jsp" />

</body>
</html>