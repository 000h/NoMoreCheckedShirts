<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--header-->
<div class="header">
	<div class="header-top">
		<div class="container">
			<div class="top-right">
				<ul>
					<c:choose>
						<c:when test="${sessionScope.acode > 0}">
							<li>
								<div class="cart box_1">
									<a href="checkout.html">
										<span class="simpleCart_total">장바구니</span>
										<span id="simpleCart_quantity" class="simpleCart_quantity"> </span>
									</a>
									<div class="clearfix"></div>
								</div>
							</li>
							<li class="text"><a href="logoutOk">logout</a></li>
						</c:when>
						<c:otherwise>
							<li class="text"><a href="login.html">login</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="header-bottom">
		<div class="container">
			<!--/.content-->
			<div class="content white">
				<nav class="navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<h1 class="navbar-brand">
							<a href="index.html">No More<br><br>Checked Shirts</a>
						</h1>
					</div>
					<!--/.navbar-header-->

					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Men <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Women</a></li>
												<li><a class="list1" href="products.html">PrettySecrets</a></li>
												<li><a class="list1" href="products.html">N-Gal</a></li>
												<li><a class="list1" href="products.html">Lobster</a></li>
												<li><a class="list1" href="products.html">Citypret</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Kids</a></li>
												<li><a class="list1" href="products.html">River
														Island</a></li>
												<li><a class="list1" href="products.html">Penny</a></li>
												<li><a class="list1" href="products.html">Nidhi
														Munim</a></li>
												<li><a class="list1" href="products.html">Divaat</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Men</a></li>
												<li><a class="list1" href="products.html">Fiesta
														Clara</a></li>
												<li><a class="list1" href="products.html">Quiksilver</a></li>
												<li><a class="list1" href="products.html">Incult</a></li>
												<li><a class="list1" href="products.html">Proline</a></li>
											</ul>
										</div>
									</div>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">women <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Women</a></li>
												<li><a class="list1" href="products.html">PrettySecrets</a></li>
												<li><a class="list1" href="products.html">N-Gal</a></li>
												<li><a class="list1" href="products.html">Lobster</a></li>
												<li><a class="list1" href="products.html">Citypret</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Kids</a></li>
												<li><a class="list1" href="products.html">River
														Island</a></li>
												<li><a class="list1" href="products.html">Penny</a></li>
												<li><a class="list1" href="products.html">Nidhi
														Munim</a></li>
												<li><a class="list1" href="products.html">Divaat</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Men</a></li>
												<li><a class="list1" href="products.html">Fiesta
														Clara</a></li>
												<li><a class="list1" href="products.html">Quiksilver</a></li>
												<li><a class="list1" href="products.html">Incult</a></li>
												<li><a class="list1" href="products.html">Proline</a></li>
											</ul>
										</div>
									</div>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">kids <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Women</a></li>
												<li><a class="list1" href="products.html">PrettySecrets</a></li>
												<li><a class="list1" href="products.html">N-Gal</a></li>
												<li><a class="list1" href="products.html">Lobster</a></li>
												<li><a class="list1" href="products.html">Citypret</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Kids</a></li>
												<li><a class="list1" href="products.html">River
														Island</a></li>
												<li><a class="list1" href="products.html">Penny</a></li>
												<li><a class="list1" href="products.html">Nidhi
														Munim</a></li>
												<li><a class="list1" href="products.html">Divaat</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a class="list" href="products.html">Men</a></li>
												<li><a class="list1" href="products.html">Fiesta
														Clara</a></li>
												<li><a class="list1" href="products.html">Quiksilver</a></li>
												<li><a class="list1" href="products.html">Incult</a></li>
												<li><a class="list1" href="products.html">Proline</a></li>
											</ul>
										</div>
									</div>
								</ul></li>
								
<%-- 							<c:when test="${sessionScope.greatch12}"> --%>

								<li><a href="admin">Admin</a></li>
				<%-- 			</c:when> --%>
							<li><a href="products.html">Top</a></li>
						</ul>
					</div>
					<!--/.navbar-collapse-->
				</nav>
				<!--/.navbar-->
			</div>
			<div class="search-box">
				<div id="sb-search" class="sb-search">
					<form action="products.html">
						<input class="sb-search-input"
							placeholder="여기에 검색 키워드를 입력하세요..." type="search"
							name="search" id="search"> <input
							class="sb-search-submit" type="submit" value=""> <span
							class="sb-icon-search"> </span>
					</form>
				</div>
			</div>

			<!-- search-scripts -->
			<script src="js/classie.js"></script>
			<script src="js/uisearch.js"></script>
			<script>
				new UISearch(document.getElementById('sb-search'));
			</script>
			<!-- //search-scripts -->
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!--header-->