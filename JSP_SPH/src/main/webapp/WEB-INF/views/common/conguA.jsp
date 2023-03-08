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
<title>주소록</title>

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
ul {
	list-style: none;
}

li {
	float: left;
}
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
									부서 <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="#" class="nav-link active">
										<i class="far fa-circle nav-icon"></i>
										<p>전체주소록</p>
								</a></li>
								<li class="nav-item"><a href="#" class="nav-link active">
										<i class="far fa-circle nav-icon"></i>
										<p>부서주소록</p>
								</a></li>
								<li class="nav-item"><a href="#" class="nav-link active">
										<i class="far fa-circle nav-icon"></i>
										<p>개인주소록</p>
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

			<div class="content-header">
				<div class="container-fluid">

					<div class="input-group row">

						<div class="col-sm-5">
							<h3 class="m-0">전체주소록</h3>
						</div>

						<div class="col-md-7">
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
						</div>
						
					</div>
					<!-- input-group row -->

				</div>
				<!-- container-fluid -->
			</div>
			<!-- content-header -->


			<div class="content">

				<div class="container-fluid">


					<div class="row">

						<!-- 자음검색  -->
						<div class="col-md-3">

							<div>
								<ul>
									<li><a href="#">전체&nbsp;</a></li>
								</ul>
								<ul>
									<li><a href="#">ㄱ&nbsp;</a></li>
								</ul>
								<ul>
									<li><a href="#">ㄴ&nbsp;</a></li>
								</ul>
								<ul>
									<li><a href="#">ㄷ&nbsp;</a></li>
								</ul>
								<ul>
									<li><a href="#">ㄹ&nbsp;</a></li>
								</ul>
								<ul>
									<li><a href="#">ㅁ&nbsp;</a></li>
								</ul>
								<ul>
									<li><a href="#">ㅂ&nbsp;</a></li>
								</ul>
								<ul>
									<li><a href="#">ㅅ&nbsp;</a></li>
								</ul>
								<ul>
									<li><a href="#">ㅇ&nbsp;</a></li>
								</ul>
								<ul>
									<li><a href="#">ㅈ&nbsp;</a></li>
								</ul>
								<ul>
									<li><a href="#">ㅊ&nbsp;</a></li>
								</ul>
								<ul>
									<li><a href="#">ㅋ&nbsp;</a></li>
								</ul>
								<ul>
									<li><a href="#">ㅌ&nbsp;</a></li>
								</ul>
								<ul>
									<li><a href="#">ㅍ&nbsp;</a></li>
								</ul>
								<ul>
									<li><a href="#">ㅎ&nbsp;</a></li>
								</ul>
							</div>

						</div>
						<!-- col-md-3 -->
						
						<div class="col-md-2" style="margin-left: 0px; padding:10px;">

							<button type="button" class="btn btn-primary float-left"
								style="min-width: 180px;">
								<i class="fas fa-plus"></i> 개인주소록 추가
							</button>

						</div>

					</div>
					<!-- row -->

					<div class="row">
						<div class="col-md-3">


							<div class="card card-row card-primary" style="height:70vh;">
								<div class="card-header">
									<h3 class="card-title">조직도</h3>
								</div>
								<div class="card-body">
									<div class="card card-primary card-outline">
										<div class="card-header">
											<h5 class="card-title">Create first milestone</h5>
											<div class="card-tools">
												<a href="#" class="btn btn-tool btn-link">#5</a> <a href="#"
													class="btn btn-tool"> <i class="fas fa-pen"></i>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-9">

							<section class="content" >
								<div class="card" style="height:70vh;">
									<div class="card-header">
										<h3 class="card-title">jsGrid</h3>
									</div>

									<div class="card-body">
										<div id="jsGrid1" class="jsgrid"
											style="position: relative; height: 80%; width: 80%;">
											<div class="jsgrid-grid-header jsgrid-header-scrollbar">
												<table class="jsgrid-table">
													<tr class="jsgrid-header-row">
														<th class="jsgrid-header-cell jsgrid-header-sortable"
															style="width: 150px;">Name</th>
														<th
															class="jsgrid-header-cell jsgrid-align-right jsgrid-header-sortable jsgrid-header-sort jsgrid-header-sort-desc"
															style="width: 50px;">Age</th>
														<th class="jsgrid-header-cell jsgrid-header-sortable"
															style="width: 200px;">Address</th>
														<th
															class="jsgrid-header-cell jsgrid-align-center jsgrid-header-sortable"
															style="width: 100px;">Country</th>
														<th
															class="jsgrid-header-cell jsgrid-align-center jsgrid-header-sortable"
															style="width: 100px;">Is Married</th>
													</tr>
													
														<tr class="jsgrid-row">
															<td class="jsgrid-cell" style="width: 150px;">Alexis
																Clements</td>
															<td class="jsgrid-cell jsgrid-align-right"
																style="width: 50px;">69</td>
															<td class="jsgrid-cell" style="width: 200px;">P.O.
																Box 176, 5107 Proin Rd.</td>
															<td class="jsgrid-cell jsgrid-align-center"
																style="width: 100px;">Brazil</td>
															<td class="jsgrid-cell jsgrid-align-center"
																style="width: 100px;"><input type="checkbox"
																disabled=""></td>
														</tr>
														<tr class="jsgrid-alt-row">
															<td class="jsgrid-cell" style="width: 150px;">Dominic
																Raymond</td>
															<td class="jsgrid-cell jsgrid-align-right"
																style="width: 50px;">68</td>
															<td class="jsgrid-cell" style="width: 200px;">Ap
																#689-4874 Nisi Rd.</td>
															<td class="jsgrid-cell jsgrid-align-center"
																style="width: 100px;">United States</td>
															<td class="jsgrid-cell jsgrid-align-center"
																style="width: 100px;"><input type="checkbox"
																disabled=""></td>
														</tr>
														<tr>
														<td>왜 td 안먹냐 진짜</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="jsgrid-pager-container">
												<div class="jsgrid-pager">
													Pages: <span
														class="jsgrid-pager-nav-button jsgrid-pager-nav-inactive-button"><a
														href="javascript:void(0);">First</a></span> <span
														class="jsgrid-pager-nav-button jsgrid-pager-nav-inactive-button"><a
														href="javascript:void(0);">Prev</a></span> <span
														class="jsgrid-pager-page jsgrid-pager-current-page">1</span><span
														class="jsgrid-pager-page"><a
														href="javascript:void(0);">2</a></span><span
														class="jsgrid-pager-page"><a
														href="javascript:void(0);">3</a></span><span
														class="jsgrid-pager-page"><a
														href="javascript:void(0);">4</a></span><span
														class="jsgrid-pager-page"><a
														href="javascript:void(0);">5</a></span> <span
														class="jsgrid-pager-nav-button"><a
														href="javascript:void(0);">Next</a></span> <span
														class="jsgrid-pager-nav-button"><a
														href="javascript:void(0);">Last</a></span> &nbsp;&nbsp; 1 of 5
												</div>
											</div>
											<div class="jsgrid-load-shader"
												style="display: none; position: absolute; inset: 0px; z-index: 1000;"></div>
											<div class="jsgrid-load-panel"
												style="display: none; position: absolute; top: 50%; left: 50%; z-index: 1000;">Please,
												wait...</div>
										</div>
									</div>

								</div>

							</section>

						</div>

					</div>


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