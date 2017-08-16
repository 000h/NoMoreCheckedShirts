<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>No More Checked Shirts</title>
	<jsp:include page="commom/StyleScript.jsp"/>
	<style type="text/css">
		.cart-item {
		    width: 50px;
		    float: left;
		    margin-right: 5%;
		}
		
		.totalPrice {
			text-align: right;
		}
		
		.btn_form {
		    text-align: right;
		}
		
		td.postinput {
		    width: 200px;
		}
	</style>
</head>
<body>
	<%-- header include --%>
	<jsp:include page="commom/header.jsp"/>
	
	<div class="content">
		<div class="cart-items">
			<div class="container">
				<h2>아래 상품들을 주문합니다.</h2>
				<c:forEach var="dto" items="${checkoutList}">
				<div class="cart-header">
					<div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
							<img src="${dto.img}" class="img-responsive" alt="">
						</div>
						<div class="cart-item-info">
							<h3>${dto.name}</h3>
							<ul class="qty">
								<li class="ea">
									<p>수량 : ${dto.ea} 판매가격 : ${dto.price}</p>
								</li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				</c:forEach>
				<div class="totalPrice">
					<p>주문가격 : ${total}</p>
				</div>
				
				<h2>배송지 정보</h2>
				<form action="transaction.html" method="post">
					<table class="table table-condensed">
						<tbody>
							<tr>
								<th><label>수령인 성명</label></th>
								<td colspan="2"><input type="text" class="form-control" name="traname"></td>
							</tr>
							<tr>
								<th><label>수령자 HP</label></th>
								<td colspan="2"><input type="text" class="form-control" name="rehp"></td>
							</tr>
							<tr>
								<th><label>우편번호&주소</label></th>
								<td class="postinput"><input type="text" class="form-control" name="postcode"></td>
								<td><input type="text" class="form-control" name="addr"></td>
							</tr>
						</tbody>
					</table>
					<div class="btn_form">
						<input type="submit" class="add-cart item_add" value="주문" />
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<%-- fotter include --%>
	<jsp:include page="commom/footer.jsp"/>
</body>
</html>