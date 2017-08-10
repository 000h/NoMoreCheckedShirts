<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">상품관리 <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="NPinsertMain">제품등록</a></li>
				</ul></li>
		</ul>

		<div class="main">
			<br>
			<h2>관리자 페이지입니다</h2>
			<br>
			<h3>${msg }</h3>
		</div>
	</div>

	<jsp:include page="commom/footer.jsp" />

</body>
</html>