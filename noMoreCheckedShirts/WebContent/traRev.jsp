<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>traRev.jsp</title>
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
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">상품관리 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="NPinsertMain">제품등록</a></li>
					<li><a href="NPinsertSetMain">세트등록</a></li>
				</ul></li>
		</ul>

		<div class="main">
			<br>
			<h1>수령인정보</h1>
			<br>
			<table class="table table-striped">
				<tr>
					<th>수령인</th>
					<th>수령인 전화번호</th>
					<th>수령인 주소</th>
					<th>수령인 우편번호</th>
				</tr>
				<tr>
					<td>${readRev.rname }</td>
					<td>${readRev.rhp }</td>
					<td>${readRev.raddrs }</td>
					<td>${readRev.rpost }</td>
				</tr>
				<tr>
					<td colspan="4">
						<a href="NTreadAll"><input type="button" value="뒤로가기" /></a>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<jsp:include page="commom/footer.jsp" />

</body>
</html>