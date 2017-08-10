<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>로그아웃 테스트</h2>

	<c:out value="${sessionScope._id}" />
	<c:set var="userid" value="${sessionScope._id}" />
	<c:if test="${userid ne null}">
 not null
</c:if>

</body>
</html>