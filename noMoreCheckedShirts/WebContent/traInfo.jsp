<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>traInfo.jsp</title>
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
			<h1>주문상세정보</h1>
			<br>
			<table class="table table-striped">
				<tr>
					<th>제품명</th>
					<th>가격</th>
					<th>상세정보</th>
				</tr>
					<c:forEach var="r" items="${readInfo }">
				<tr>
						<td>${r.name }</td>
						<td>${r.price }</td>
						<td>${r.info }</td>
				</tr>
					</c:forEach>
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