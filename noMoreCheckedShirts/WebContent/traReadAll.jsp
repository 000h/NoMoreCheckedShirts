<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admin.jsp</title>
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

		<div class="main">
			<br>
			<h1>주문정보</h1>
			<br>
			<table class="table table-striped">
				<tr>
					<th>주문번호</th>
					<th>구매자 계정</th>
					<th>주문날짜</th>
					<th>주문상태</th>
					<th>수령인정보</th>
				</tr>
				<c:forEach var="r" items="${read }">
					<tr>
						<td><a href="NTreadInfo?tcode=${r.tcode }">${r.tcode }</a></td>
						<td><a href="NTreadAccount?id=${r.id }">${r.id }</a></td>
						<td>${r.tradate }</td>
						<td>${r.trastatus }</td>
						<td><a href="NTreadRev?tcode=${r.tcode }">바로가기</a></td>
					</tr>				
				</c:forEach>
			</table>
		</div>
	</div>

	<jsp:include page="commom/footer.jsp" />

</body>
</html>