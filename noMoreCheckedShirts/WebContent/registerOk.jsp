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
	Bootstrap Responsive Website Template | Account :: w3layouts</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/owl.carousel.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Swim Wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/* 회원가입폼 */
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 




















</script>





<script src="js/jquery.min.js"></script>
<!-- cart -->
<script src="js/simpleCart.min.js">
	
</script>
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
			animation : "slide",
			controlNav : "thumbnails"
		});
	});
</script>



<!-- 비밀번호 확인 -->

<script type="text/javascript">
	function pass() {
		var password = document.register.pw.value;
		var password_ok = document.register.repw.value;
		/*  if (password.length == 0 || password_ok == null) {
		 alert( "비밀번호를 입력하세요" );
		 document.register.pw.focus();
		 } else */if (password != password_ok) {
			alert("비밀번호가 일치하지 않습니다");
			/*         document.loginform.pw.focus(); */
		} else if (password == password_ok) {
			console.log("일단 눌림");
			document.register.setAttribute("action", "registerOk");
			document.register.submit();

		}
		/* return; */
	}   //pass() end
	
	function idCk(){
		console.log("일단눌림");
		var id = document.getElementById("id").value;
		document.setAttribute("id", id);
		location.href = "idCk";
		console.log(${msg});
		
		
	}
	

	
	
	
	
	
	
</script>



</head>
<body>
	<%-- header include --%>
	<%@include file="commom/header.jsp"%>

	<div class="content">
		<div class="main-1">
			<div class="container">
				<div class="register">
					<form action="register" name="register">

						<div class="register-top-grid">

							<!-- 회원가입 확인페이지 -->
							<h2>**님 가입을 환영합니다</h2> <br/>
							<h4>  ID : ${id } </h4> 
							<h4> PW : ${pw } </h4>
							<h4> rePW : ${ repw }</h4>
							<h4> name : ${name } </h4> 
							<h4> hp : ${hp } </h4> 
							<h4> postcode : ${postcode } </h4> 
							<h4> addrs :	${addrs }</h4>
							<!-- registration -->
						</div>
					</form>
				</div>
			</div>
		</div>

		<div class="subscribe">
			<div class="container">
				<!-- <div class="subscribe1">
					<h4>the latest from swim wear</h4>
				</div>
				<div class="subscribe2">
					<form>
						<input type="text" class="text" value="Email"
							onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Email';}"> <input
							type="submit" value="JOIN">
					</form>
				</div> -->
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

	<%-- fotter include --%>
	<%@include file="commom/footer.jsp"%>

</body>
</html>
