<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/owl.carousel.css" rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords"
		content="Swim Wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
		Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
	<script type="application/x-javascript">
		 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
	</script>
	<script src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
	<!-- cart -->
	<script src="js/simpleCart.min.js"></script>
	<!-- cart -->
</head>
<body>
	<%-- header include --%>
	<%@include file="commom/header.jsp"%>

	<%-- 본분 시작 --%>
	<div class="banner-section">
		<div class="container">
			<div class="banner-grids">
				<div class="col-md-6 banner-grid">
					<h2>이제 고민 하지 마세요</h2>
					<p>언제나 채크무늬 남방을 입던 당신. 이제 우리에게 당신의 코디를 맡겨주세요.</p>
					<a href="products.html" class="button"> shop now </a>
				</div>
				<div class="col-md-6 banner-grid1">
					<img src="images/mainp.png" class="img-responsive" alt="" />
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
						<h5>${dto.name}</h5>
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
	<%@include file="commom/footer.jsp"%>

</body>
</html>