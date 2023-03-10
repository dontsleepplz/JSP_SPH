<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	Date nowTime = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 hh:mm:ss");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MainDcopy</title>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">

</head>

<style>
</style>

<body class="hold-transition sidebar-mini" onload="getTime()">
	<!-- div에는 onload="getTime()" 안먹음 -->

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
										Brad Diesel <span class="float-right text-sm text-danger">
											<i class="fas fa-star"></i>
										</span>
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

						<li class="nav-item menu-open"><a href="#"
							class="nav-link active"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									<i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="./index.html"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p></p>
								</a></li>
								<li class="nav-item"><a href="./index2.html"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p></p>
								</a></li>
								<li class="nav-item"><a href="./index3.html"
									class="nav-link active"> <i class="far fa-circle nav-icon"></i>
										<p></p>
								</a></li>
							</ul></li>
						<li class="nav-item"><a href="pages/widgets.html"
							class="nav-link"> <i class="nav-icon fas fa-th"></i>
								<p>
									Widgets <span class="right badge badge-danger">New</span>
								</p>
						</a></li>

					</ul>
				</nav>

			</div>

		</aside>


		<div class="content-wrapper">

			<div class="content">

				<div class="container-fluid">

					<div class="col-md-12">

						<div class="row" style="padding-top: 10px; border: 1px solid red;">
							<!-- 출퇴근 -->
							<div class="col-md-2">
							
								<div class="card card-outline">
							
									<div class="card-body box-profile">

										<div class="text-center">

											<img class="profile-user-img img-fluid"
												style="margin: auto; padding: auto;"
												src="resources/images/cat.jpg" alt="User profile picture">

										</div>

										<h3 class="profile-username text-center"
											style="margin: auto; padding: auto;">${member.name }</h3>

										<p class="text-muted text-center"
											style="margin: auto; padding: auto;">할수있다 3팀</p>

										<p class="text-center" id="WhatTimeIsItNow"
											style="margin: auto; padding: auto;"></p>

										<ul class="list-group list-group-unbordered mb-3"
											style="margin: auto; padding: auto;">
											<li class="list-group-item"><b>출근시간 : </b> <a
												class="float-right">#</a></li>
											<li class="list-group-item"><b>퇴근시간 : </b> <a
												class="float-right">#</a></li>
										</ul>

										<div class="text-center">
											<a href="#" class="btn btn-primary btn-block"
												style="display: inline; margin: auto; padding: auto;"><b>출근</b></a>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#"
												class="btn btn-primary btn-block"
												style="display: inline; margin: auto; padding: auto;"><b>퇴근</b></a>
										</div>

									</div>
								</div>
							</div>



							<div class="col-md-5">
								<div class="card card-outline"></div>
							</div>

							<div class="col-md-5">
								<div class="card card-outline"></div>
							</div>

						</div>

					</div>


					<div class="col-md-12">

						<div class="row"
							style="padding-bottom: 10px; border: 1px solid blue;">

							<div class="col-md-3">
								<div class="card card-outline"></div>
							</div>

							<div class="col-md-3">
								<div class="card card-outline"></div>
							</div>

							<div class="col-md-3">
								<div class="card card-outline"></div>
							</div>

							<div class="col-md-3">
								<div class="card card-outline"></div>
							</div>

						</div>

					</div>

				</div>
				<!-- content-wrapper -->

			</div>
			<!-- content -->

		</div>
		<!-- container-fluid -->

		<aside class="control-sidebar control-sidebar-dark"></aside>

	</div>
	<!-- E:wrapper -->

	<script>
		function getTime() {
			var d = new Date(); // 현재 날짜와 시간
			var yyyy = d.getFullYear();
			var MM = d.getMonth();
			var dd = d.getDay();
			var hh = d.getHours(); // 시
			var mm = d.getMinutes(); // 분
			var ss = d.getSeconds(); // 초
			var timeBoard = document.getElementById("WhatTimeIsItNow"); // 값이 입력될 공간
			var time = yyyy + "년 " + MM + "월 " + dd + "일 " + hh + "시 " + mm
					+ "분 " + ss + "초" // 형식 지정
			timeBoard.innerHTML = time; // 출력
			setTimeout(getTime, 1000); //1000밀리초(1초) 마다 반복
		}
	</script>

	<script
		src="<%=request.getContextPath()%>/resources/fullcal/dist/index.global.js"></script>

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