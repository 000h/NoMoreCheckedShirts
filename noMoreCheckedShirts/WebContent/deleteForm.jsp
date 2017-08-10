<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>deleteForm.jsp</title>
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
					<li><a href="#">회원정보삭제</a></li>
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
				</ul></li>
		</ul>
		<div id="main">
			<div class="container">
				<br>
				<h1>회원정보</h1>
				<form action="NAdelete">
					<table class="table-bordered">
						<tr>
							<th></th>
							<th>회원번호</th>
							<th>아이디</th>
							<th>이름</th>
							<th>전화번호</th>
							<th>주소</th>
							<th>우편번호</th>
							<th>등급</th>
						</tr>
						<c:forEach var="r" items="${read }">
							<tr>
								<td><input type="checkbox" name="acode" id=""
									value="${r.acode }" /></td>
								<td>${r.acode }</td>
								<td>${r.id }</td>
								<td><a href="NAreadOne?acode=${r.acode }">${r.name }</a></td>
								<td>${r.hp }</td>
								<td>${r.addrs }</td>
								<td>${r.postcode }</td>
								<td>${r.astatus }</td>
							</tr>
						</c:forEach>
						<tr>
							<td colspan="8"><input type="submit" value="삭제" /></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>

	<jsp:include page="commom/footer.jsp" />

</body>
</html>