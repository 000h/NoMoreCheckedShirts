<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>productInsert.jsp</title>
<jsp:include page="commom/StyleScript.jsp" />
<script type="text/javascript">
	function add() {
		var i = $("#select1 option:selected").val();
		var t = $("#select1 option:selected").text();
		$("#select1 option:selected").remove();
		$("#select2").append("<option value="+i+">" + t + "</option>");

	}

	function del() {

		var i = $("#select2 option:selected").val();
		var t = $("#select2 option:selected").text();

		$("#select2 option:selected").remove();
		$("#select1").append("<option value=" +i+">" + t + "</option>")
	}

	$(function() {

		$("#check").on("click", function() {
			$("#select2>option").attr("selected", "selected");
		})

	})
</script>
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

		<div class="row">
			<h2>상품등록</h2>
			<br>

			<div class="col-sm-4">
				<select size="10" id="select1" multiple="multiple">
					<c:forEach var="l" items="${list }">
						<option value="${l.pcode}">${l.name }</option>
					</c:forEach>
				</select>
			</div>

			<div class="col-sm-4">
				<input type="button" value="->" id="btnAdd" onclick="add()" /> <br> <br> 
				<input type="button" value="<-" id="btnDel" onclick="del()" />
			</div>

			<form action="NPSinsert">
				<div class="col-sm-4">
					<select size="10" id="select2" name="pcode" multiple="multiple"></select><br>
					<input type="button" value="전체선택" id="check" />
				</div>

				<div>
					<input type="radio" name="setType" id="" value="0" />세트 
					<input type="radio" name="setType" id="" value="1" />단일<br> 
					세트이름 : <input type="text" name="name" /><br>
					세트가격 : <input type="text" name="price" /><br> 
					이미지 : <input type="text" name="img" placeholder="images/product/경로" /><br> 
					상세정보 : <input type="text" name="info" id="" /><br>
					<input type="submit" value="등록" id="submit" />
				</div>
			</form>
		</div>


	</div>
	<jsp:include page="commom/footer.jsp" />

</body>
</html>