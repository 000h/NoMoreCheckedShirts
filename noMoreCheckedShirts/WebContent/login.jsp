<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--
Au<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Swim Wear a E-Commerce online Shopping Category Flat
	Bootstrap Responsive Website Template | Login :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/owl.carousel.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Swim Wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery.min.js"></script>
<!-- cart -->
<script src="js/simpleCart.min.js"> </script>
<!-- cart -->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<script src="js/imagezoom.js"></script>

<!-- FlexSlider -->
<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />

<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>



</head>
<body>
	<%-- header include --%>
	<%@include file="commom/header.jsp"%>

	<!--contact-->
	<div class="content">
		<div class="main-1">
			<div class="container">
				<div class="login-page">
					<div class="account_grid">
						<div class="col-md-6 login-left">
							<h3>NEW CUSTOMERS</h3>
							<p>By creating an account with our store, you will be able to
								move through the checkout process faster, store multiple
								shipping addresses, view and track your orders in your account
								and more.</p>
							<a class="acount-btn" href="account.html">Create an Account</a>
						</div>
						<div class="col-md-6 login-right">
							<h3>REGISTERED CUSTOMERS</h3>
							<p>If you have an account with us, please log in.</p>
							<form>
								<div>
									<span>ID<label>*</label></span> <input type="text">
								</div>
								<div>
									<span>Password<label>*</label></span> <input type="password">
								</div>
								<!-- <a class="forgot" href="#">Forgot Your Password?</a> -->
								<input type="submit" value="Login">
							</form>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- login -->
	<div class="subscribe">
		<div class="container">
			<div class="subscribe1">
				<h4>the latest from swim wear</h4>
			</div>
			<div class="subscribe2">
				<form>
					<input type="text" class="text" value="Email"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Email';}"> <input
						type="submit" value="JOIN">
				</form>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<%-- fotter include --%>
	<%@include file="commom/footer.jsp"%>
</body>
</html>

<!-- <h2>로그인</h2>

	<table>
		<tr>
			<td>ID</td>
			<td><input type="text" name="id" id="id" /></td>
		</tr>
		<tr>
			<td>PW</td>
			<td><input type="password" name="pw" id="pw" /></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="로그인" /> <input
				type="button" value="회원가입" /></td>
		</tr>
		
		
		로그인되면 메인페이지로 가도록
		
	
	</table> -->


