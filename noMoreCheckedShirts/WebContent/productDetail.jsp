<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>No More Checked Shirts</title>
	<jsp:include page="commom/StyleScript.jsp"/>
	<script src="js/imagezoom.js"></script>
	
	<!-- FlexSlider -->
	<script defer src="js/jquery.flexslider.js"></script>
	<link rel="stylesheet" href="css/flexslider.css" type="text/css"
		media="screen" />
	
	<script>
		// Can also be used with $(document).ready()
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				controlNav : "thumbnails"
			});
			
			$("#checkoutLink").on("click", function(){
				$("#infoForm").attr("action", "checkout");
				$("#infoForm").submit();
			});
		});
	</script>
</head>
<body>
	<%-- header include --%>
	<jsp:include page="commom/header.jsp"/>
	
	<div class="content">
		<div class="single">
			<div class="container">
				<div class="single-grids">
					<div class="col-md-4 single-grid1">
						<h2>account</h2>
						<ul>
							<li><a href="login.html">login</a></li>
							<li><a href="login.html">Register</a></li>
							<li><a href="login.html">Forgot Your Password</a></li>
							<li><a href="account.html">my account</a></li>
							<li><a href="login.html">address books</a></li>
							<li><a href="login.html">wishlist</a></li>
							<li><a href="login.html">order history</a></li>
							<li><a href="login.html">downloads</a></li>
							<li><a href="login.html">reward points</a></li>
							<li><a href="login.html">return</a></li>
							<li><a href="login.html">transaction</a></li>
							<li><a href="login.html">newsletter</a></li>
							<li><a href="login.html">recurring payments</a></li>
						</ul>
					</div>
					<div class="col-md-4 single-grid">		
						<div class="flexslider">
							<ul class="slides">
								<li data-thumb="${info.img}">
									<div class="thumb-image"> <img src="${info.img}" data-imagezoom="true" class="img-responsive"> </div>
								</li>
							</ul>
						</div>
					</div>
					<form id="infoForm" method="post">
						<input type="hidden" name="item" value="${info.scode}"/>
						<input type="hidden" name="price" value="${info.price}"/>
						<div class="col-md-4 single-grid simpleCart_shelfItem">		
							<h3>${info.name}</h3>
							<div class="galry">
								<div class="prices">
									<h5 class="item_price">${info.price}</h5>
								</div>
								<div class="clearfix"></div>
							</div>
							<p class="qty"> Qty :  </p><input min="1" type="number" id="quantity" name="ea" value="1" class="form-control input-small">
							<div class="btn_form">
								<a href="#" id="checkoutLink" class="add-cart item_add">카트에 추가</a>
								<a href="#" class="add-cart item_add">바로 구매</a>	
							</div>
							<div class="tag">
								<p>Category : <a href="#"> Lorem </a></p>
								<p>Tag : <a href="#"> Lorem ipsum </a></p>
							</div>
						</div>
					</form>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- collapse -->
		<div class="collpse">
			<div class="container">
				<div class="panel-group collpse" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									Description
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">
								Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									additional information
								</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body">
								Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
									reviews (5)
								</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
							<div class="panel-body">
								Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingFour">
							<h4 class="panel-title">
								<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
									help
								</a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
							<div class="panel-body">
								Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- collapse -->
		<div class="related-products">
			<div class="container">
				<h3>Related Products</h3>
				<div class="product-model-sec single-product-grids">
					<c:forEach var="dto" items="${codiset}">
					<div class="product-grid single-product">
						<a href="products.html?taget=${dto.scode}">
							<div class="more-product"><span> </span></div>						
							<div class="product-img b-link-stripe b-animate-go  thickbox">
								<img src="${dto.img}" class="img-responsive" alt="">
								<div class="b-wrapper">
									<h4 class="b-animate b-from-left  b-delay03">							
										<button> + </button>
									</h4>
								</div>
							</div>
						</a>					
						<div class="product-info simpleCart_shelfItem">
							<div class="product-info-cust prt_name">
								<h4>${dto.name}</h4>								
								<span class="item_price">${dto.price}</span>
								<div class="clearfix"> </div>
							</div>												
						</div>
					</div>
					</c:forEach>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	
	<%-- footer include --%>
	<jsp:include page="commom/footer.jsp" />
</body>
</html>