<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<div class="item">
					<img class="lazyOwl" data-src="images/sample/b1.jpg" alt="name">
					<div class="item-info">
						<h5>건방진고양이 티셔츠 워싱청바지코디입고 당당하게 살자~~</h5>
					</div>
				</div>
				<div class="item">
					<img class="lazyOwl" data-src="images/sample/b2.jpg" alt="name">
					<div class="item-info">
						<h5>만능코디아이템 청자켓!</h5>
					</div>
				</div>
				<div class="item">
					<img class="lazyOwl" data-src="images/sample/b3.jpg" alt="name">
					<div class="item-info">
						<h5>면자켓과 데님팬츠의 편안함</h5>
					</div>
				</div>
				<div class="item">
					<img class="lazyOwl" data-src="images/sample/b4.jpg" alt="name">
					<div class="item-info">
						<h5>무난한 자연스러움 올블랙코디</h5>
					</div>
				</div>
				<div class="item">
					<img class="lazyOwl" data-src="images/sample/b5.jpg" alt="name">
					<div class="item-info">
						<h5>봄봄 느낌물씬 체크셔츠와 후드티 조합!</h5>
					</div>
				</div>
				<div class="item">
					<img class="lazyOwl" data-src="images/sample/b6.jpg" alt="name">
					<div class="item-info">
						<h5>입기만해도 시원하다!매쉬자켓코디!</h5>
					</div>
				</div>
				<div class="item">
					<img class="lazyOwl" data-src="images/sample/b7.jpg" alt="name">
					<div class="item-info">
						<h5>테이프포인트 반팔티와 청바지코디</h5>
					</div>
				</div>
				<div class="item">
					<img class="lazyOwl" data-src="images/sample/b8.jpg" alt="name">
					<div class="item-info">
						<h5>핏 좋은 청자켓 하나면 봄코디 끝</h5>
					</div>
				</div>
				<div class="item">
					<img class="lazyOwl" data-src="images/sample/b9.jpg" alt="name">
					<div class="item-info">
						<h5>댄디한 비지니스 캐주얼 코디</h5>
					</div>
				</div>
				<div class="item">
					<img class="lazyOwl" data-src="images/sample/b10.jpg" alt="name">
					<div class="item-info">
						<h5>누구에게나 잘 어울리는 모노톤 코디</h5>
					</div>
				</div>
			</div>
			<!--sreen-gallery-cursual-->
		</div>
	</div>
	<div class="gallery">
		<div class="container">
			<h3>Featured products</h3>
			<div class="gallery-grids">
				<div class="col-md-3 gallery-grid ">
					<a href="products.html">
						<img src="images/sample/b1.jpg" class="img-responsive" alt="" />
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
						<p>건방진고양이 티셔츠 워싱청바지코디</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
							</div>

							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<a href="products.html">
						<img src="images/sample/b2.jpg" class="img-responsive" alt="" />
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
						<p>만능코디아이템 청자켓!</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
							</div>

							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<a href="products.html">
						<img src="images/sample/b3.jpg" class="img-responsive" alt="" />
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
						<p>면자켓과 데님팬츠의 편안함</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
							</div>

							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<a href="products.html">
						<img src="images/sample/b4.jpg" class="img-responsive" alt="" />
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
						<p>무난한 자연스러움 올블랙코디</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
							</div>

							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid ">
					<a href="products.html"><img src="images/sample/b5.jpg"
						class="img-responsive" alt="" />
						<div class="gallery-info">
							<div class="quick">
								<p>
									<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
									view
								</p>
							</div>
						</div></a>
					<div class="galy-info">
						<p>봄봄 느낌물씬 체크셔츠와 후드티 조합!</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
							</div>

							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<a href="products.html"><img src="images/sample/b6.jpg"
						class="img-responsive" alt="" />
						<div class="gallery-info">
							<div class="quick">
								<p>
									<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
									view
								</p>
							</div>
						</div></a>
					<div class="galy-info simpleCart_shelfItem">
						<p>입기만해도 시원하다!매쉬자켓코디!</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
							</div>

							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<a href="products.html"><img src="images/sample/b7.jpg"
						class="img-responsive" alt="" />
						<div class="gallery-info">
							<div class="quick">
								<p>
									<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
									view
								</p>
							</div>
						</div></a>
					<div class="galy-info simpleCart_shelfItem">
						<p>테이프포인트 반팔티와 청바지코디</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
							</div>

							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<a href="products.html"><img src="images/sample/b8.jpg"
						class="img-responsive" alt="" />
						<div class="gallery-info">
							<div class="quick">
								<p>
									<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
									view
								</p>
							</div>
						</div></a>
					<div class="galy-info simpleCart_shelfItem">
						<p>핏 좋은 청자켓 하나면 봄코디 끝</p>
						<div class="galry">
							<div class="prices">
								<h5 class="item_price">$95.00</h5>
							</div>
							<div class="rating">
								<span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span> <span>☆</span>
							</div>

							<div class="clearfix"></div>
						</div>
					</div>
				</div>
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