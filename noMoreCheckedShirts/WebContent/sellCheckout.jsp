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
		.quantity {
			width: 60px;
		}
		
		.btn_form {
		    text-align: right;
		}
	</style>
	<script type="text/javascript">
		$(function(){
			$("input[type='number']").bind('click keyup', function (e) {
				//console.log($(this).val());
			});
		});
	</script>
</head>
<body>
	<%-- header include --%>
	<jsp:include page="commom/header.jsp"/>
	
	<!-- checkout -->
	<div class="content">
		<div class="cart-items">
			<div class="container">
				<h2>장바구니에 담으신 상품들입니다.</h2>
				<c:forEach var="dto" items="${checkoutList}">
				<div class="cart-header">
					<a href="removeCheckout?taget=${dto.ocode}">
						<div class="close1">&nbsp;</div>
					</a>
					<div class="cart-sec simpleCart_shelfItem">
						<div class="cart-item cyc">
							<img src="${dto.img}" class="img-responsive" alt="">
						</div>
						<div class="cart-item-info">
							<h3>
								<a href="products.html?taget=${dto.scode}"> ${dto.name} </a>
								<span>Pickup time: ${dto.tradate}</span>
							</h3>
							<ul class="qty">
								<li class="ea">
									<p>수량 : ${dto.ea}</p>
								</li>
							</ul>
							<div class="delivery">
								<p>판매가격 : ${dto.price}</p>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				</c:forEach>
				<div class="btn_form">
					<p>장바구니 물품 가격 : ${total}</p>
					<a href="order.html" class="add-cart item_add">이 구성으로 주문</a>
				</div>
			</div>
		</div>
		<!-- checkout -->	
		<div class="subscribe">
			<div class="container">
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	
	<%-- footer include --%>
	<jsp:include page="commom/footer.jsp" />
</body>
</html>