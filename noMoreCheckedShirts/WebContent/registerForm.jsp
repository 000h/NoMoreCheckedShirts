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
		<!-- registration -->
		<div class="main-1">
			<div class="container">
				<div class="register">
					<form action="register" name="register">

						<div class="register-top-grid">
							<h3>TERMS</h3>
							<div class="wow fadeInLeft" data-wow-delay="0.4s">
								<!-- <span>terms<label>*</label></span> -->
								<!-- <input type="text"> -->
								<textarea rows="10" cols="150"><%@include file="termsR.jsp"%></textarea>
							</div>
							<!-- 170808 input type textarea로 바꿔야됨 -->

							<!-- <div class="wow fadeInRight" data-wow-delay="0.4s">
								<span>Confirm Password<label>*</label></span> <input type="text">
							</div> -->
							<a class="news-letter" href="#"> <label class="checkbox"><input
									type="checkbox" name="checkbox" checked=""><i> </i>Sign
									Up for Register</label>
							</a>
							<div class="clearfix"></div>

						</div>


						<div class="register-bottom-grid">



							<h3>PERSONAL INFORMATION</h3>


							<div class="wow fadeInLeft" data-wow-delay="0.4s">
								<span>ID<label>*</label></span> 
								<input type="text" id="id"
									name="id"> <input type="button" value="ID 중복확인" onclick ="idCk()"/>
							</div>
							<div class="wow fadeInRight" data-wow-delay="0.4s">
								<span>Name<label>*</label></span> <input type="text" id="name"
									name="name">
							</div>
							<div class="wow fadeInLeft" data-wow-delay="0.4s">
								<span>Password<label>*</label></span> <input type="password"
									id="pw" name="pw">
							</div>
							<div class="wow fadeInRight" data-wow-delay="0.4s">
								<span>Confirm Password<label>*</label>
								</span> <input type="password" id="repw" name="repw">
								<!-- onkeyup="checkUserPassword(this, 'equalsPasswordView');" /> <span
									id="equalsPasswordView"></span> -->



							</div>

							<div class="wow fadeInRight" data-wow-delay="0.4s">
								<span>HP<label>*</label></span> <input type="text" id="hp"
									name="hp">
							</div>
							<div class="wow fadeInRight" data-wow-delay="0.4s">
								<span>POST CODE<label>*</label></span> <input type="text"
									id="postcode" name="postcode">
							</div>

							<div class="wow fadeInRight" data-wow-delay="0.4s">
								<span>Address<label>*</label></span> <input type="text"
									id="addrs" name="addrs">
							</div>

							<div class="clearfix"></div>

						</div>
						<!-- 	<div class="register-bottom-grid">
							<h3>TERMS</h3>
							<div class="wow fadeInLeft" data-wow-delay="0.4s">
								<span>terms<label>*</label></span> <input type="textarea">
							</div>
							<div class="wow fadeInRight" data-wow-delay="0.4s">
								<span>Confirm Password<label>*</label></span> <input type="text">
							</div>
							<a class="news-letter" href="#"> <label class="checkbox"><input
									type="checkbox" name="checkbox" checked=""><i> </i>Sign
									Up for Register</label>
							</a>

						</div> -->

						<div class="clearfix"></div>
						<div class="register-but">

							<center>
								<input type="button" value="submit" onclick="pass()">
								<!-- 		<div class="clearfix"></div> -->
								<input type="reset" value="reset">
							</center>
					</form>
				</div>
				<!-- style.css 수정 : reset버튼-->


			</div>
		</div>
	</div>
	<!-- registration -->

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





<!-- 
<h2>회원가입</h2>


	<form action="">
		<table>
			<tr>
				<td colspan="3">
					<h3>이용약관</h3>
				</td>
			</tr>
			<tr>
				<td colspan="3"><textarea name="tos" id="tos" cols="80"
						rows="10" readonly="readonly">이용약관</textarea></td>
			</tr>
			<tr>
				<td colspan="3"><input type="checkbox" name="tosck" id="tosck"
					value="이용약관에 동의합니다" />이용약관에 동의합니다</td>
			</tr>

			<tr>
				<td>ID</td>
				<td><input type="text" name="id" id="id" /></td>
				<td>//중복확인 보여줄 부분</td>
			</tr>

			<tr>
				<td>PW</td>
				<td><input type="password" name="pw" id="pw" /></td>
				<td>//비밀번호 제약조건 확인</td>
			</tr>

			<tr>
				<td>PW</td>
				<td><input type="password" name="repw" id="repw" /></td>
				<td>//비밀번호 제약조건 확인</td>
			</tr>
			<tr>
				<td>NAME</td>
				<td><input type="text" name="name" id="name" /></td>
				<td></td>
			</tr>
			<tr>
				<td>H.P.</td>
				<td><input type="text" name="hp" id="hp" /></td>
				<td>//010-1234-5678 형식으로 입력해주세요</td>
			</tr>



			<tr>
				<td>Addr</td>
				<td><input type="text" name="addr" id="addr" /></td>
				<td>//상세주소</td>
			</tr>

			<tr>
				<td colspan="3">
				
				<input type="submit" value="회원가입" />
				<input type="button" value="처음으로" />
				
				</td>

			</tr>

		</table>
	</form>
-->
