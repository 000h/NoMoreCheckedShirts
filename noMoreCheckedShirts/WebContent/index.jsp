<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>No More Checked Shirts</title>
	<jsp:include page="commom/StyleScript.jsp"/>
</head>
<body>
	<%-- header include --%>
	<jsp:include page="commom/header.jsp"/>

	<%-- 본분 시작 --%>
	<div class="banner-section">
		<div class="container">
			<div class="banner-grids">
				<div class="col-md-6 banner-grid">
					<h2>이제 고민 하지 마세요</h2>
					<p>언제나 체크무늬 남방을 입던 당신. 이제 우리에게 당신의 코디를 맡겨주세요.</p>
					<a href="products.html" class="button"> shop now </a>
				</div>
				<div class="col-md-6 banner-grid1">
					<!-- <img src="images/mainp.png" class="img-responsive" alt="" /> -->
					<!-- 171019 JS edit -->
					<img src="images/mainp.jpg" class="img-responsive" alt="" />
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="banner-bottom">
		<div class="gallery-cursual">
			<!--requried-jsfiles-for owl-->
			<script src="js/owl.carousel.js"></script>
			<script>
				$(document).ready(function() {
					$("#owl-demo").owlCarousel({
						items : 3,
						lazyLoad : true,
						autoPlay : true,
						pagination : false,
					});
				});
			</script>
			<!--requried-jsfiles-for owl -->
			<!--start content-slider-->
			<div id="owl-demo" class="owl-carousel text-center">
				<!-- 세트 상품 회전 (최대 10개까지) -->
				<c:forEach var="dto" items="${set10}">
				<div class="item">
					<img class="lazyOwl" data-src="${dto.img}" alt="name">
					<div class="item-info">
						<h5><a href="products.html?taget=${dto.scode}">${dto.name}</a></h5>
					</div>
				</div>
				</c:forEach>
			</div>
			<!--sreen-gallery-cursual-->
		</div>
	</div>
	<div class="gallery">
		<div class="container">
			<h3>Best Top 8</h3>
			<div class="gallery-grids">
				<%-- 상품 리스트 전개 (8개까지만) --%>
				<c:forEach var="dto" items="${list}">
				<div class="col-md-3 gallery-grid ">
					<a href="products.html?taget=${dto.scode}">
						<img src="${dto.img}" class="img-responsive" alt="" />
						<div class="gallery-info">
							<div class="quick">
								<p>
									<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
									view
								</p>
							</div>
						</div>
					</a>
					<div class="galy-info">
						<p>${dto.name}</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">${dto.price}</h5>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				</c:forEach>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="subscribe">
		<div class="container">
			<div class="clearfix"></div>
		</div>
	</div>
	<%-- 본분 끝 --%>

	<%-- fotter include --%>
	<jsp:include page="commom/footer.jsp"/>

</body>
</html>