<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>accountList.jsp</title>
</head>
<body>
	<!-- 전체 회원 확인 테스트용 파일입니다 -->

	<!-- 전체 회원 리스트 -->
	<h2>accountList</h2>
	<table>
		<c:forEach var="adto" items="${accountList }">
			<tr>
				<td>${adto.acode}</td>
				<td>${adto.id }</td>
				<td>${adto.pw }</td>
				<td>${adto.name }</td>
				<td>${adto.hp }</td>
				<td>${adto.addrs }</td>
				<td>${adto.postcode }</td>
				<td>${adto.astatus }</td>
			</tr>

		</c:forEach>
		</table>
</body>
</html>