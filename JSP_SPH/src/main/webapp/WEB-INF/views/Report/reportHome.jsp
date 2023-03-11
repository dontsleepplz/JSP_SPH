<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	Date nowTime = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 hh:mm:ss");
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Dashboard 3</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
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
<body class="hold-transition sidebar-mini">
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

						<li class="nav-item menu-open"><a href="#"
							class="nav-link active"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									보고 홈 <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="./index.html"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>정기보고</p>
								</a></li>
								<li class="nav-item"><a href="./index2.html"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>수시보고</p>
								</a></li>
							</ul></li>
						<!-- <li class="nav-item"><a href="pages/widgets.html"
							class="nav-link"> <i class="nav-icon fas fa-th"></i>
								<p>
									Widgets <span class="right badge badge-danger">New</span>
								</p>
						</a></li> -->

					</ul>
				</nav>

			</div>

		</aside>
		<!-- E:header -->
		<div class="content-wrapper">
			<div class="row">
				<div class="col-12">


					<!-- S:iframe -->


					<div class="content-header"
						style="border-bottom: 1px solid rgba(0, 0, 0, .125);">
						<div class="container-fluid">
							<div class="row mb-2">
								<div class="col-sm-6">
									<h1 class="m-0">보고 홈</h1>
								</div>
								<div class="col-sm-6">
									<ol class="breadcrumb float-sm-right">
									</ol>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="row" >
				<div class="col-12">
					<div class="card-header" style="border-bottom: 0px;">
						<div class="row">
							<h2 class="card-title">
								정기 보고 문서
								<button type="button" class="btn btn-default">
									<i class="fa-regular fa-pen-to-square">작성하기</i>
							</h2>
						</div>
					</div>



					<div class="col-lg-2 col-2"
						style="display: inline-block; background: white; padding-top:9.5px;">
						<div class="small-box">
							<div class="inner" style="height: 150px;"">
								<h3>2023-03-08</h3>
								<p>작성자 : 양종민</p>
							</div>
							<div class="icon">
								<!-- 	<i class="fas fa-chart-pie"></i> -->
							</div>
							<a href="#" class="small-box-footer"
								style="background-color: skyblue; witdh: 100%; border-radious: 15px; color: black; font-weight: bold;">
								보고하기 <!-- <i --> <!-- class="fas fa-arrow-circle-right"></i> -->
							</a>
						</div>
					</div>
					<div class="col-lg-2 col-2"
						style="display: inline-block; background: white; padding-top:9.5px;">
						<div class="small-box">
							<div class="inner" style="height: 150px;"">
								<h3>2023-03-08</h3>
								<p>작성자 : 양종민</p>
							</div>
							<div class="icon">
								<!-- 	<i class="fas fa-chart-pie"></i> -->
							</div>
							<a href="#" class="small-box-footer"
								style="background-color: skyblue; witdh: 100%; border-radious: 15px; color: black; font-weight: bold;">
								보고하기 <!-- <i --> <!-- class="fas fa-arrow-circle-right"></i> -->
							</a>
						</div>
					</div>
					<div class="col-lg-2 col-2"
						style="display: inline-block; background: white; padding-top:9.5px;">
						<div class="small-box">
							<div class="inner" style="height: 150px;"">
								<h3>2023-03-08</h3>
								<p>작성자 : 양종민</p>
							</div>
							<div class="icon">
								<!-- 	<i class="fas fa-chart-pie"></i> -->
							</div>
							<a href="#" class="small-box-footer"
								style="background-color: skyblue; witdh: 100%; border-radious: 15px; color: black; font-weight: bold;">
								보고하기 <!-- <i --> <!-- class="fas fa-arrow-circle-right"></i> -->
							</a>
						</div>
					</div>
					<div class="col-lg-2 col-2"
						style="display: inline-block; background: white; padding-top:9.5px;">
						<div class="small-box">
							<div class="inner" style="height: 150px;"">
								<h3>2023-03-08</h3>
								<p>작성자 : 양종민</p>
							</div>
							<div class="icon">
								<!-- 	<i class="fas fa-chart-pie"></i> -->
							</div>
							<a href="#" class="small-box-footer"
								style="background-color: skyblue; witdh: 100%; border-radious: 15px; color: black; font-weight: bold;">
								보고하기 <!-- <i --> <!-- class="fas fa-arrow-circle-right"></i> -->
							</a>
						</div>
					</div>
					<div class="col-lg-2 col-2"
						style="display: inline-block; background: white; padding-top:9.5px;">
						<div class="small-box">
							<div class="inner" style="height: 150px;"">
								<h3>2023-03-08</h3>
								<p>작성자 : 양종민</p>
							</div>
							<div class="icon">
								<!-- 	<i class="fas fa-chart-pie"></i> -->
							</div>
							<a href="#" class="small-box-footer"
								style="background-color: skyblue; witdh: 100%; border-radious: 15px; color: black; font-weight: bold;">
								보고하기 <!-- <i --> <!-- class="fas fa-arrow-circle-right"></i> -->
							</a>
						</div>
					</div>

				</div>
			</div>



			<div class="row">
				<div class="col-12">
					<div class="card-header" style="border-bottom: 0px;">
						<div class="row">
							<h2 class="card-title">
								수시 보고 문서
								<button type="button" class="btn btn-default">
									<i class="fa-regular fa-pen-to-square">작성하기</i>
							</h2>
						</div>
					</div>



					<div class="col-lg-2 col-2"
						style="display: inline-block; background: white; padding-top:9.5px;">
						<div class="small-box">
							<div class="inner" style="height: 150px;"">
								<h3>2023-03-08</h3>
								<p>작성자 : 양종민</p>
							</div>
							<div class="icon">
								<!-- 	<i class="fas fa-chart-pie"></i> -->
							</div>
							<a href="#" class="small-box-footer"
								style="background-color: skyblue; witdh: 100%; border-radious: 15px; color: black; font-weight: bold;">
								보고하기 <!-- <i --> <!-- class="fas fa-arrow-circle-right"></i> -->
							</a>
						</div>
					</div>
					<div class="col-lg-2 col-2"
						style="display: inline-block; background: white; padding-top:9.5px;">
						<div class="small-box">
							<div class="inner" style="height: 150px;"">
								<h3>2023-03-08</h3>
								<p>작성자 : 양종민</p>
							</div>
							<div class="icon">
								<!-- 	<i class="fas fa-chart-pie"></i> -->
							</div>
							<a href="#" class="small-box-footer"
								style="background-color: skyblue; witdh: 100%; border-radious: 15px; color: black; font-weight: bold;">
								보고하기 <!-- <i --> <!-- class="fas fa-arrow-circle-right"></i> -->
							</a>
						</div>
					</div>
					<div class="col-lg-2 col-2"
						style="display: inline-block; background: white; padding-top:9.5px;">
						<div class="small-box">
							<div class="inner" style="height: 150px;"">
								<h3>2023-03-08</h3>
								<p>작성자 : 양종민</p>
							</div>
							<div class="icon">
								<!-- 	<i class="fas fa-chart-pie"></i> -->
							</div>
							<a href="#" class="small-box-footer"
								style="background-color: skyblue; witdh: 100%; border-radious: 15px; color: black; font-weight: bold;">
								보고하기 <!-- <i --> <!-- class="fas fa-arrow-circle-right"></i> -->
							</a>
						</div>
					</div>
					<div class="col-lg-2 col-2"
						style="display: inline-block; background: white; padding-top:9.5px;">
						<div class="small-box">
							<div class="inner" style="height: 150px;"">
								<h3>2023-03-08</h3>
								<p>작성자 : 양종민</p>
							</div>
							<div class="icon">
								<!-- 	<i class="fas fa-chart-pie"></i> -->
							</div>
							<a href="#" class="small-box-footer"
								style="background-color: skyblue; witdh: 100%; border-radious: 15px; color: black; font-weight: bold;">
								보고하기 <!-- <i --> <!-- class="fas fa-arrow-circle-right"></i> -->
							</a>
						</div>
					</div>
					<div class="col-lg-2 col-2"
						style="display: inline-block; background: white; padding-top:9.5px;">
						<div class="small-box">
							<div class="inner" style="height: 150px;"">
								<h3>2023-03-08</h3>
								<p>작성자 : 양종민</p>
							</div>
							<div class="icon">
								<!-- 	<i class="fas fa-chart-pie"></i> -->
							</div>
							<a href="#" class="small-box-footer"
								style="background-color: skyblue; witdh: 100%; border-radious: 15px; color: black; font-weight: bold;">
								보고하기 <!-- <i --> <!-- class="fas fa-arrow-circle-right"></i> -->
							</a>
						</div>
					</div>

				</div>
			</div>


			<!--       <div class="notice">
      <div class="notice_content"><p>asdlmasldmla</p><a href="#" class="btn">보고하기</a></div>
      <div class="notice_content"><p>asdlmasldmla</p><a href="#" class="btn">보고하기</a></div>
      <div class="notice_content"><p>asdlmasldmla</p><a href="#" class="btn">보고하기</a></div>
      <div class="notice_content"><p>asdlmasldmla</p><a href="#" class="btn">보고하기</a></div>
      <div class="notice_content"><p>asdlmasldmla</p><a href="#" class="btn">보고하기</a></div>
      <div class="notice_content"><p>asdlmasldmla</p><a href="#" class="btn">보고하기</a></div>
      </div> -->
			<div class="row" style="margin-top: 10px;">
				<div class="col-12">
					<div class="card">
						<!-- 	<div class="card-header">
						<h3 class="card-title">Fixed Header Table</h3>
						<div class="card-tools">
							<div class="input-group input-group-sm" style="width: 150px;">
								<input type="text" name="table_search"
									class="form-control float-right" placeholder="Search">
								<div class="input-group-append">
									<button type="submit" class="btn btn-default" >
										<i class="fas fa-search"></i>
									</button>
								</div>
							</div>
						</div>
					</div> -->

						<div class="card-header">
							<h2 class="card-title">최근 생성된 보고</h2>
						</div>
						<div class="card-body table-responsive p-0" style="height: 500px;">
							<table class="table table-head-fixed text-nowrap">
								<thead>
									<tr>
										<th>문서번호</th>
										<th>작성자</th>
										<th>보고날짜</th>
										<th>보고상태</th>
										<th>내용</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>183</td>
										<td>John Doe</td>
										<td>11-7-2014</td>
										<td><span class="tag tag-success">Approved</span></td>
										<td>Bacon ipsum dolor sit amet salami venison chicken
											flank fatback doner.</td>
									</tr>
									<tr>
										<td>219</td>
										<td>Alexander Pierce</td>
										<td>11-7-2014</td>
										<td><span class="tag tag-warning">Pending</span></td>
										<td>Bacon ipsum dolor sit amet salami venison chicken
											flank fatback doner.</td>
									</tr>
									<tr>
										<td>657</td>
										<td>Bob Doe</td>
										<td>11-7-2014</td>
										<td><span class="tag tag-primary">Approved</span></td>
										<td>Bacon ipsum dolor sit amet salami venison chicken
											flank fatback doner.</td>
									</tr>
									<tr>
										<td>175</td>
										<td>Mike Doe</td>
										<td>11-7-2014</td>
										<td><span class="tag tag-danger">Denied</span></td>
										<td>Bacon ipsum dolor sit amet salami venison chicken
											flank fatback doner.</td>
									</tr>
									<tr>
										<td>134</td>
										<td>Jim Doe</td>
										<td>11-7-2014</td>
										<td><span class="tag tag-success">Approved</span></td>
										<td>Bacon ipsum dolor sit amet salami venison chicken
											flank fatback doner.</td>
									</tr>
									<tr>
										<td>494</td>
										<td>Victoria Doe</td>
										<td>11-7-2014</td>
										<td><span class="tag tag-warning">Pending</span></td>
										<td>Bacon ipsum dolor sit amet salami venison chicken
											flank fatback doner.</td>
									</tr>
									<tr>
										<td>832</td>
										<td>Michael Doe</td>
										<td>11-7-2014</td>
										<td><span class="tag tag-primary">Approved</span></td>
										<td>Bacon ipsum dolor sit amet salami venison chicken
											flank fatback doner.</td>
									</tr>
									<tr>
										<td>982</td>
										<td>Rocky Doe</td>
										<td>11-7-2014</td>
										<td><span class="tag tag-danger">Denied</span></td>
										<td>Bacon ipsum dolor sit amet salami venison chicken
											flank fatback doner.</td>
									</tr>
								</tbody>
							</table>
						</div>

					</div>
				</div>
			</div>
		</div>
		<!-- E:content-wrapper -->
		<aside class="control-sidebar control-sidebar-dark"></aside>

		<!-- footer class="main-footer">
			<strong>Copyright &copy; 2014-2021 <a
				href="https://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
			<div class="float-right d-none d-sm-inline-block">
				<b>Version</b> 3.2.0
			</div>
		</footer> -->
	</div>

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