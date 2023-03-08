
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	Date nowTime = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월");
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>통계입니다만</title>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

</head>
<style>
</style>
<body class="hold-transition sidebar-mini" onload="getTime()">
	<div class="wrapper">

		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light"
			style="background-color: rgb(180, 220, 255);">

			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="index3.html" class="nav-link">Home</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">Contact</a></li>
			</ul>

			<ul class="navbar-nav ml-auto">

				<li class="nav-item"><a class="nav-link"
					data-widget="navbar-search" href="#" role="button"> <i
						class="fas fa-search"></i>
				</a>
					<div class="navbar-search-block">
						<form class="form-inline">
							<div class="input-group input-group-sm">
								<input class="form-control form-control-navbar" type="search"
									placeholder="Search" aria-label="Search">
								<div class="input-group-append">
									<button class="btn btn-navbar" type="submit">
										<i class="fas fa-search"></i>
									</button>
									<button class="btn btn-navbar" type="button"
										data-widget="navbar-search">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
						</form>
					</div></li>

				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
						<span class="badge badge-danger navbar-badge">3</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<a href="#" class="dropdown-item">

							<div class="media">
								<img src="dist/img/user1-128x128.jpg" alt="User Avatar"
									class="img-size-50 mr-3 img-circle">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Brad Diesel <span class="float-right text-sm text-danger"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">Call me whenever you can...</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div>

						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item">

							<div class="media">
								<img src="dist/img/user8-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										John Pierce <span class="float-right text-sm text-muted"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">I got your message bro</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div>

						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item">

							<div class="media">
								<img src="dist/img/user3-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Nora Silvester <span class="float-right text-sm text-warning"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">The subject goes here</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div>

						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Messages</a>
					</div></li>

				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
						class="badge badge-warning navbar-badge">15</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<span class="dropdown-item dropdown-header">15
							Notifications</span>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-envelope mr-2"></i> 4 new messages <span
							class="float-right text-muted text-sm">3 mins</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-users mr-2"></i> 8 friend requests <span
							class="float-right text-muted text-sm">12 hours</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
							3 new reports <span class="float-right text-muted text-sm">2
								days</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Notifications</a>
					</div></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="fullscreen" href="#" role="button"> <i
						class="fas fa-expand-arrows-alt"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-slide="true" href="#"
					role="button"> <i class="fas fa-th-large"></i>
				</a></li>
			</ul>
		</nav>

		<aside class="main-sidebar sidebar-dark-primary elevation-0"
			style="background-color: white; border-right: 1px solid #DFE1E4">

			<a href="index3.html" class="brand-link"
				style="background-color: rgb(180, 220, 255); border-bottom: none;">
				<img src="<%=request.getContextPath()%>/resources/img/SPHLogo.png"
				alt="AdminLTE Logo" class="brand-image img-circle elevation-0"
				style="opacity: .8;"> <span
				class="brand-text font-weight-light" style="color: black;">SPH</span>
			</a>

			<div class="sidebar">

				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">

						<li class="nav-item menu-open">
							<a href="#" class="nav-link active"> 
								<i class="nav-icon fas fa-tachometer-alt"></i>
								<p> 부서 <i class="right fas fa-angle-left"></i> </p>
							</a>
						</li>
						 <li><a href="#">치과</a></li>
						 <li><a href="#">이비인후과</a></li>
						 <li><a href="#">내과</a></li>
						 <li><a href="#">외과</a></li>
					</ul>
				</nav>

			</div>

		</aside>

		<div class="content-wrapper">

			<div class="content-header">
				<div class="container-fluid">

					<div class="row mb-2">

						<div class="col-sm-4">
							<h1 class="m-0" id="WhatTimeIsItNow">
								<!-- 달력이모티콘 넣기 -->
							</h1>
						</div>
						
						<div class="col-sm-4">
							<ul class="pagination float-sm-center">
								<li class="paginate_button page-item previous"
									id="example2_previous" style="width:150px;">
									<a href="#" aria-controls="example2" data-dt-idx="#" tabindex="0" class="page-link">Previous</a>
								</li>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<li class="paginate_button page-item next" 
									id="example2_next" style="width:150px;">
									<a href="#" aria-controls="example2" data-dt-idx="#" tabindex="0" class="page-link">Next</a>
								</li>
							</ul>
						</div>
						
						<div class="col-sm-4">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item active"><div class="form-inline">
										<div class="input-group" data-widget="sidebar-search">
											<input class="form-control form-control-sidebar"
												type="search" placeholder="Search" aria-label="Search">
											<div class="input-group-append">
												<button class="btn btn-sidebar">
													<i class="fas fa-search fa-fw"></i>
												</button>
											</div>
										</div>
										<div class="sidebar-search-results">
											<div class="list-group">
												<a href="#" class="list-group-item"><div
														class="search-title">
														<strong class="text-light"></strong> N<strong
															class="text-light"></strong> o<strong class="text-light"></strong>
														<strong class="text-light"></strong> e<strong
															class="text-light"></strong> l<strong class="text-light"></strong>
														e<strong class="text-light"></strong> m<strong
															class="text-light"></strong> e<strong class="text-light"></strong>
														n<strong class="text-light"></strong> t<strong
															class="text-light"></strong> <strong class="text-light"></strong>
														f<strong class="text-light"></strong> o<strong
															class="text-light"></strong> u<strong class="text-light"></strong>
														n<strong class="text-light"></strong> d<strong
															class="text-light"></strong> !<strong class="text-light"></strong>
													</div>
													<div class="search-path"></div> </a>
											</div>
										</div>
									</div></li>
							</ol>
						</div>

					</div>
					<!-- row mb-2 -->
				</div>
				<!-- container-fluid -->
			</div>
			<!-- content-header -->

			<div class="content">

				<div class="container-fluid">
					<div class="row">
						<div class="col-md-4" id="accordion">

							<div class="card card-primary card-outline" style="width: 480px;">

								<div class="card-header">

									<h3 class="card-title">
										<i class="far fa-chart-bar"></i> 환 자
									</h3>

									<div class="card-tools">
										<button type="button" class="btn btn-tool"
											data-card-widget="collapse">
											<i class="fas fa-minus"></i>
										</button>
									</div>

								</div>

								<div class="card-body collapse show" id="collapseOne"
									data-parent="#accordion">
									<div id="donut-chart"
										style="height: 440px; padding: 0px; position: relative;">

										<canvas class="flot-base" width="440" height="440"
											style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 440px; height: 440px;"></canvas>

										<canvas class="flot-overlay" width="440" height="440"
											style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 440px; height: 440px;"></canvas>

										<span class="pieLabel" id="pieLabel0"
											style="position: absolute; top: 69.5px; left: 439.703px;">
											<div
												style="font-size: 13px; text-align: center; padding: 2px; color: #000000; font-weight: 600;">
												Series2<br>30%
											</div>
										</span> <span class="pieLabel" id="pieLabel1"
											style="position: absolute; top: 209.5px; left: 417.703px;">
											<div
												style="font-size: 13px; text-align: center; padding: 2px; color: #000000; font-weight: 600;">
												Series3<br>20%
											</div>
										</span> <span class="pieLabel" id="pieLabel2"
											style="position: absolute; top: 128.5px; left: 258.703px;">
											<div
												style="font-size: 13px; text-align: center; padding: 2px; color: #000000; font-weight: 600;">
												Series4<br>50%
											</div>
										</span>

									</div>

								</div>

							</div>
							<!-- card card-primary card-outline -->

							<div class="card card-primary card-outline collapsed-card"
								style="width: 480px;">


								<div class="card-header">

									<h3 class="card-title">
										<i class="far fa-chart-bar"></i> 입 원
									</h3>

									<div class="card-tools">
										<button type="button" class="btn btn-tool"
											data-card-widget="collapse">
											<i class="fas fa-plus"></i>
										</button>
									</div>

								</div>

								<div class="card-body collapse" id="collapseTwo"
									data-parent="#accordion">
									<div id="donut-chart"
										style="height: 440px; padding: 0px; position: relative;">

										<canvas class="flot-base" width="440" height="440"
											style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 440px; height: 440px;"></canvas>

										<canvas class="flot-overlay" width="440" height="440"
											style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 440px; height: 440px;"></canvas>

										<span class="pieLabel" id="pieLabel0"
											style="position: absolute; top: 69.5px; left: 439.703px;">
											<div
												style="font-size: 13px; text-align: center; padding: 2px; color: #000000; font-weight: 600;">
												Series2<br>30%
											</div>
										</span> <span class="pieLabel" id="pieLabel1"
											style="position: absolute; top: 209.5px; left: 417.703px;">
											<div
												style="font-size: 13px; text-align: center; padding: 2px; color: #000000; font-weight: 600;">
												Series3<br>20%
											</div>
										</span> <span class="pieLabel" id="pieLabel2"
											style="position: absolute; top: 128.5px; left: 258.703px;">
											<div
												style="font-size: 13px; text-align: center; padding: 2px; color: #000000; font-weight: 600;">
												Series4<br>50%
											</div>
										</span>

									</div>

								</div>

							</div>
							<!-- card card-primary card-outline -->

							<div class="card card-primary card-outline collapsed-card"
								style="width: 480px;">



								<div class="card-header">

									<h3 class="card-title">
										<i class="far fa-chart-bar"></i> 매 출
									</h3>

									<div class="card-tools">
										<button type="button" class="btn btn-tool"
											data-card-widget="collapse">
											<i class="fas fa-plus"></i>
										</button>
									</div>

								</div>


								<div class="card-body collapse" id="collapseThree"
									data-parent="#accordion">
									<div id="donut-chart"
										style="height: 440px; padding: 0px; position: relative;">

										<canvas class="flot-base" width="440" height="440"
											style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 440px; height: 440px;"></canvas>

										<canvas class="flot-overlay" width="440" height="440"
											style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 440px; height: 440px;"></canvas>

										<span class="pieLabel" id="pieLabel0"
											style="position: absolute; top: 69.5px; left: 439.703px;">
											<div
												style="font-size: 13px; text-align: center; padding: 2px; color: #000000; font-weight: 600;">
												Series2<br>30%
											</div>
										</span> <span class="pieLabel" id="pieLabel1"
											style="position: absolute; top: 209.5px; left: 417.703px;">
											<div
												style="font-size: 13px; text-align: center; padding: 2px; color: #000000; font-weight: 600;">
												Series3<br>20%
											</div>
										</span> <span class="pieLabel" id="pieLabel2"
											style="position: absolute; top: 128.5px; left: 258.703px;">
											<div
												style="font-size: 13px; text-align: center; padding: 2px; color: #000000; font-weight: 600;">
												Series4<br>50%
											</div>
										</span>

									</div>

								</div>

							</div>
							<!-- card card-primary card-outline -->

						</div>
						<!-- col-md-4 -->


						<div class="col-md-8" style="border: 1px solid red;"></div>
						<!-- col-md-8 -->
					</div>
					<!-- row -->
					
				</div>
				<!-- container-fluid -->

			</div>
			<!-- E:content -->

		</div>
		<!-- E:content-wrapper -->
		<aside class="control-sidebar control-sidebar-dark"></aside>

		<footer class="main-footer">
			<strong>Copyright &copy; 2014-2021 <a
				href="https://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
			<div class="float-right d-none d-sm-inline-block">
				<b>Version</b> 3.2.0
			</div>
		</footer>
	</div>
	<!-- E:wrapper -->

	<script>
		function getTime() {
			var d = new Date(); // 현재 날짜와 시간
			var yyyy = d.getFullYear();
			var MM = d.getMonth();
			var timeBoard = document.getElementById("WhatTimeIsItNow"); // 값이 입력될 공간
			var time = yyyy + "년 " + MM + "월 " // 형식 지정
			timeBoard.innerHTML = time; // 출력
		}
	</script>

	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/chart.js/Chart.min.js"></script>

	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/pages/dashboard3.js"></script>
</body>

</html>