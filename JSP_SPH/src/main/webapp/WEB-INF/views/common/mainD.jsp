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
<title>MainD</title>

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
									주소록 <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="./index.html"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>전체주소록</p>
								</a></li>
								<li class="nav-item"><a href="./index2.html"
									class="nav-link"> <i class="far fa-circle nav-icon"></i>
										<p>부서주소록</p>
								</a></li>
								<li class="nav-item"><a href="./index3.html"
									class="nav-link active"> <i class="far fa-circle nav-icon"></i>
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

			<div class="content">

				<div class="container-fluid">

					<div class="col-md-12">
						<div class="row" style="padding-top: 10px;">
							<!-- 출퇴근 -->
							<div class="col-md-2">

								<div class="card card-outline" style="height: 45vh;">

									<div class="card-body box-profile">

										<div class="text-center">

											<img class="profile-user-img img-fluid"
												style="margin: auto; padding: auto;"
												src="resources/images/cat.jpg" alt="User profile picture">

										</div>

										<h3 class="profile-username text-center"
											style="margin: auto; padding: auto;">고양이</h3>

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

							<!-- 캘린더 -->
							<div class="col-md-5">
								<div class="card bg-gradient-success">
									<div class="card-header border-0 ui-sortable-handle"
										style="cursor: move; heigth:100%; width:100%;">
										

											<div class="btn-group">
												<button type="button"
													class="btn btn-success btn-sm dropdown-toggle"
													data-toggle="dropdown" data-offset="-52">
													<i class="fas fa-bars"></i>
												</button>
												<div class="dropdown-menu" role="menu">
													<a href="#" class="dropdown-item">Add new event</a> <a
														href="#" class="dropdown-item">Clear events</a>
													<div class="dropdown-divider"></div>
													<a href="#" class="dropdown-item">View calendar</a>
												</div>
											
										</div>

									</div>

									<div class="card-body pt-0">

										<div id="calendar" style="width: 100%">
											<div class="bootstrap-datetimepicker-widget usetwentyfour">
												<ul class="list-unstyled">
													<li class="show"><div class="datepicker">
															<div class="datepicker-days" style="">
																<table class="table table-sm">
																	<thead>
																		<tr>
																			<th class="prev" data-action="previous"><span
																				class="fa fa-chevron-left" title="Previous Month"></span></th>
																			<th class="picker-switch" data-action="pickerSwitch"
																				colspan="5" title="Select Month">March 2023</th>
																			<th class="next" data-action="next"><span
																				class="fa fa-chevron-right" title="Next Month"></span></th>
																		</tr>
																		<tr>
																			<th class="dow">Su</th>
																			<th class="dow">Mo</th>
																			<th class="dow">Tu</th>
																			<th class="dow">We</th>
																			<th class="dow">Th</th>
																			<th class="dow">Fr</th>
																			<th class="dow">Sa</th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td data-action="selectDay" data-day="02/26/2023"
																				class="day old weekend">26</td>
																			<td data-action="selectDay" data-day="02/27/2023"
																				class="day old">27</td>
																			<td data-action="selectDay" data-day="02/28/2023"
																				class="day old">28</td>
																			<td data-action="selectDay" data-day="03/01/2023"
																				class="day">1</td>
																			<td data-action="selectDay" data-day="03/02/2023"
																				class="day">2</td>
																			<td data-action="selectDay" data-day="03/03/2023"
																				class="day">3</td>
																			<td data-action="selectDay" data-day="03/04/2023"
																				class="day weekend">4</td>
																		</tr>
																		<tr>
																			<td data-action="selectDay" data-day="03/05/2023"
																				class="day weekend">5</td>
																			<td data-action="selectDay" data-day="03/06/2023"
																				class="day">6</td>
																			<td data-action="selectDay" data-day="03/07/2023"
																				class="day">7</td>
																			<td data-action="selectDay" data-day="03/08/2023"
																				class="day active today">8</td>
																			<td data-action="selectDay" data-day="03/09/2023"
																				class="day">9</td>
																			<td data-action="selectDay" data-day="03/10/2023"
																				class="day">10</td>
																			<td data-action="selectDay" data-day="03/11/2023"
																				class="day weekend">11</td>
																		</tr>
																		<tr>
																			<td data-action="selectDay" data-day="03/12/2023"
																				class="day weekend">12</td>
																			<td data-action="selectDay" data-day="03/13/2023"
																				class="day">13</td>
																			<td data-action="selectDay" data-day="03/14/2023"
																				class="day">14</td>
																			<td data-action="selectDay" data-day="03/15/2023"
																				class="day">15</td>
																			<td data-action="selectDay" data-day="03/16/2023"
																				class="day">16</td>
																			<td data-action="selectDay" data-day="03/17/2023"
																				class="day">17</td>
																			<td data-action="selectDay" data-day="03/18/2023"
																				class="day weekend">18</td>
																		</tr>
																		<tr>
																			<td data-action="selectDay" data-day="03/19/2023"
																				class="day weekend">19</td>
																			<td data-action="selectDay" data-day="03/20/2023"
																				class="day">20</td>
																			<td data-action="selectDay" data-day="03/21/2023"
																				class="day">21</td>
																			<td data-action="selectDay" data-day="03/22/2023"
																				class="day">22</td>
																			<td data-action="selectDay" data-day="03/23/2023"
																				class="day">23</td>
																			<td data-action="selectDay" data-day="03/24/2023"
																				class="day">24</td>
																			<td data-action="selectDay" data-day="03/25/2023"
																				class="day weekend">25</td>
																		</tr>
																		<tr>
																			<td data-action="selectDay" data-day="03/26/2023"
																				class="day weekend">26</td>
																			<td data-action="selectDay" data-day="03/27/2023"
																				class="day">27</td>
																			<td data-action="selectDay" data-day="03/28/2023"
																				class="day">28</td>
																			<td data-action="selectDay" data-day="03/29/2023"
																				class="day">29</td>
																			<td data-action="selectDay" data-day="03/30/2023"
																				class="day">30</td>
																			<td data-action="selectDay" data-day="03/31/2023"
																				class="day">31</td>
																			<td data-action="selectDay" data-day="04/01/2023"
																				class="day new weekend">1</td>
																		</tr>
																		<tr>
																			<td data-action="selectDay" data-day="04/02/2023"
																				class="day new weekend">2</td>
																			<td data-action="selectDay" data-day="04/03/2023"
																				class="day new">3</td>
																			<td data-action="selectDay" data-day="04/04/2023"
																				class="day new">4</td>
																			<td data-action="selectDay" data-day="04/05/2023"
																				class="day new">5</td>
																			<td data-action="selectDay" data-day="04/06/2023"
																				class="day new">6</td>
																			<td data-action="selectDay" data-day="04/07/2023"
																				class="day new">7</td>
																			<td data-action="selectDay" data-day="04/08/2023"
																				class="day new weekend">8</td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<div class="datepicker-months" style="display: none;">
																<table class="table-condensed">
																	<thead>
																		<tr>
																			<th class="prev" data-action="previous"><span
																				class="fa fa-chevron-left" title="Previous Year"></span></th>
																			<th class="picker-switch" data-action="pickerSwitch"
																				colspan="5" title="Select Year">2023</th>
																			<th class="next" data-action="next"><span
																				class="fa fa-chevron-right" title="Next Year"></span></th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td colspan="7"><span data-action="selectMonth"
																				class="month">Jan</span><span
																				data-action="selectMonth" class="month">Feb</span><span
																				data-action="selectMonth" class="month active">Mar</span><span
																				data-action="selectMonth" class="month">Apr</span><span
																				data-action="selectMonth" class="month">May</span><span
																				data-action="selectMonth" class="month">Jun</span><span
																				data-action="selectMonth" class="month">Jul</span><span
																				data-action="selectMonth" class="month">Aug</span><span
																				data-action="selectMonth" class="month">Sep</span><span
																				data-action="selectMonth" class="month">Oct</span><span
																				data-action="selectMonth" class="month">Nov</span><span
																				data-action="selectMonth" class="month">Dec</span></td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<div class="datepicker-years" style="display: none;">
																<table class="table-condensed">
																	<thead>
																		<tr>
																			<th class="prev" data-action="previous"><span
																				class="fa fa-chevron-left" title="Previous Decade"></span></th>
																			<th class="picker-switch" data-action="pickerSwitch"
																				colspan="5" title="Select Decade">2020-2029</th>
																			<th class="next" data-action="next"><span
																				class="fa fa-chevron-right" title="Next Decade"></span></th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td colspan="7"><span data-action="selectYear"
																				class="year old">2019</span><span
																				data-action="selectYear" class="year">2020</span><span
																				data-action="selectYear" class="year">2021</span><span
																				data-action="selectYear" class="year">2022</span><span
																				data-action="selectYear" class="year active">2023</span><span
																				data-action="selectYear" class="year">2024</span><span
																				data-action="selectYear" class="year">2025</span><span
																				data-action="selectYear" class="year">2026</span><span
																				data-action="selectYear" class="year">2027</span><span
																				data-action="selectYear" class="year">2028</span><span
																				data-action="selectYear" class="year">2029</span><span
																				data-action="selectYear" class="year old">2030</span></td>
																		</tr>
																	</tbody>
																</table>
															</div>
															<div class="datepicker-decades" style="display: none;">
																<table class="table-condensed">
																	<thead>
																		<tr>
																			<th class="prev" data-action="previous"><span
																				class="fa fa-chevron-left" title="Previous Century"></span></th>
																			<th class="picker-switch" data-action="pickerSwitch"
																				colspan="5">2000-2090</th>
																			<th class="next" data-action="next"><span
																				class="fa fa-chevron-right" title="Next Century"></span></th>
																		</tr>
																	</thead>
																	<tbody>
																		<tr>
																			<td colspan="7"><span data-action="selectDecade"
																				class="decade old" data-selection="2006">1990</span><span
																				data-action="selectDecade" class="decade"
																				data-selection="2006">2000</span><span
																				data-action="selectDecade" class="decade"
																				data-selection="2016">2010</span><span
																				data-action="selectDecade" class="decade active"
																				data-selection="2026">2020</span><span
																				data-action="selectDecade" class="decade"
																				data-selection="2036">2030</span><span
																				data-action="selectDecade" class="decade"
																				data-selection="2046">2040</span><span
																				data-action="selectDecade" class="decade"
																				data-selection="2056">2050</span><span
																				data-action="selectDecade" class="decade"
																				data-selection="2066">2060</span><span
																				data-action="selectDecade" class="decade"
																				data-selection="2076">2070</span><span
																				data-action="selectDecade" class="decade"
																				data-selection="2086">2080</span><span
																				data-action="selectDecade" class="decade"
																				data-selection="2096">2090</span><span
																				data-action="selectDecade" class="decade old"
																				data-selection="2106">2100</span></td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</div></li>
													<li class="picker-switch accordion-toggle"></li>
												</ul>
											</div>
										</div>
									</div>

								</div>
							</div>

							<!-- todo -->
							<div class="col-md-5" style="dispiay: inlile;">

								<div class="card card-row card-primary"
									style="height: 45vh; dispiay: inlile; margin: auto; padding: auto;">
									<div class="card-header"
										style="background: none; border: 1px solid gray;">
										<h3 class="card-title" style="color: black;">ToDo +</h3>
									</div>
									<div class="card-body">
										<div class="card card-outline">
											<div class="card-header">
												<h5 class="card-title">ToDo1</h5>
												<div class="card-tools">
													<a href="#" class="btn btn-tool btn-link">#</a> <a href="#"
														class="btn btn-tool"> <i class="fas fa-pen"></i>
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>

						</div>

					</div>

					<div class="col-md-12">
						<div class="row" style="padding-bottom: 10px;">

							<div class="col-md-3" style="dispiay: block;">

								<div class="card card-row card-primary"
									style="height: 45vh; dispiay: inlile; margin: auto; padding: auto;">
									<div class="card-header"
										style="background: none; border: 1px solid gray;">
										<h3 class="card-title" style="color: black;">공지사항 +</h3>
									</div>
									<div class="card-body">
										<div class="card card-outline">
											<div class="card-header">
												<h5 class="card-title">공지1</h5>
												<div class="card-tools">
													<a href="#" class="btn btn-tool btn-link">#</a> <a href="#"
														class="btn btn-tool"> <i class="fas fa-pen"></i>
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>

							<div class="col-md-3" style="dispiay: inlile;">

								<div class="card card-row card-primary"
									style="height: 45vh; dispiay: inlile; margin: auto; padding: auto;">
									<div class="card-header"
										style="background: none; border: 1px solid gray;">
										<h3 class="card-title" style="color: black;">메일 +</h3>
									</div>
									<div class="card-body">
										<div class="card card-outline">
											<div class="card-header">
												<h5 class="card-title">메일1</h5>
												<div class="card-tools">
													<a href="#" class="btn btn-tool btn-link">#</a> <a href="#"
														class="btn btn-tool"> <i class="fas fa-pen"></i>
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>

							<div class="col-md-3" style="dispiay: inlile;">

								<div class="card card-row card-primary"
									style="height: 45vh; dispiay: inlile; margin: auto; padding: auto;">
									<div class="card-header"
										style="background: none; border: 1px solid gray;">
										<h3 class="card-title" style="color: black;">전자결재 +</h3>
									</div>
									<div class="card-body">
										<div class="card card-outline">
											<div class="card-header">
												<h5 class="card-title">전자결재1</h5>
												<div class="card-tools">
													<a href="#" class="btn btn-tool btn-link">#</a> <a href="#"
														class="btn btn-tool"> <i class="fas fa-pen"></i>
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>

							<div class="col-md-3" style="dispiay: inlile;">

								<div class="card card-row card-primary"
									style="height: 45vh; dispiay: inlile; margin: auto; padding: auto;">
									<div class="card-header"
										style="background: none; border: 1px solid gray;">
										<h3 class="card-title" style="color: black;">수술 +</h3>
									</div>
									<div class="card-body">
										<div class="card card-outline">
											<div class="card-header">
												<h5 class="card-title">수술1</h5>
												<div class="card-tools">
													<a href="#" class="btn btn-tool btn-link">#</a> <a href="#"
														class="btn btn-tool"> <i class="fas fa-pen"></i>
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>

						</div>


					</div>
					<!-- container-fluid -->

				</div>
				<!-- E:content -->

			</div>
			<!-- E:content-wrapper -->
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