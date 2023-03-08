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
						<div class="row" style="padding-top: 10px;">
							<!-- 출퇴근 -->
							<div class="col-md-2" style="dispiay: inlile;">

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
							<div class="col-md-5" style="dispiay: inlile;">
								<div class="card">
									<div id="calendar" class="fc fc-media-screen fc-direction-ltr fc-theme-standard">	
									
																		
										<div aria-labelledby="fc-dom-1"
											class="fc-view-harness fc-view-harness-active"
											style="height: 45vh;">
											<div class="fc-dayGridMonth-view fc-view fc-daygrid">
												<table role="grid"
													class="fc-scrollgrid  fc-scrollgrid-liquid">
													<thead role="rowgroup">
														<tr role="presentation"
															class="fc-scrollgrid-section fc-scrollgrid-section-header ">
															<th role="presentation"><div
																	class="fc-scroller-harness">
																	<div class="fc-scroller" style="overflow: hidden;">
																		<table role="presentation" class="fc-col-header "
																			style="width: 100%;">
																			<colgroup></colgroup>
																			<thead role="presentation">
																				<tr role="row">
																					<th role="columnheader"
																						class="fc-col-header-cell fc-day fc-day-sun"><div
																							class="fc-scrollgrid-sync-inner">
																							<a aria-label="Sunday"
																								class="fc-col-header-cell-cushion">Sun</a>
																						</div></th>
																					<th role="columnheader"
																						class="fc-col-header-cell fc-day fc-day-mon"><div
																							class="fc-scrollgrid-sync-inner">
																							<a aria-label="Monday"
																								class="fc-col-header-cell-cushion">Mon</a>
																						</div></th>
																					<th role="columnheader"
																						class="fc-col-header-cell fc-day fc-day-tue"><div
																							class="fc-scrollgrid-sync-inner">
																							<a aria-label="Tuesday"
																								class="fc-col-header-cell-cushion">Tue</a>
																						</div></th>
																					<th role="columnheader"
																						class="fc-col-header-cell fc-day fc-day-wed"><div
																							class="fc-scrollgrid-sync-inner">
																							<a aria-label="Wednesday"
																								class="fc-col-header-cell-cushion">Wed</a>
																						</div></th>
																					<th role="columnheader"
																						class="fc-col-header-cell fc-day fc-day-thu"><div
																							class="fc-scrollgrid-sync-inner">
																							<a aria-label="Thursday"
																								class="fc-col-header-cell-cushion">Thu</a>
																						</div></th>
																					<th role="columnheader"
																						class="fc-col-header-cell fc-day fc-day-fri"><div
																							class="fc-scrollgrid-sync-inner">
																							<a aria-label="Friday"
																								class="fc-col-header-cell-cushion">Fri</a>
																						</div></th>
																					<th role="columnheader"
																						class="fc-col-header-cell fc-day fc-day-sat"><div
																							class="fc-scrollgrid-sync-inner">
																							<a aria-label="Saturday"
																								class="fc-col-header-cell-cushion">Sat</a>
																						</div></th>
																				</tr>
																			</thead>
																		</table>
																	</div>
																</div></th>
														</tr>
													</thead>
													<tbody role="rowgroup">
														<tr role="presentation"
															class="fc-scrollgrid-section fc-scrollgrid-section-body  fc-scrollgrid-section-liquid">
															<td role="presentation"><div
																	class="fc-scroller-harness fc-scroller-harness-liquid">
																	<div class="fc-scroller fc-scroller-liquid-absolute"
																		style="overflow: hidden auto;">
																		<div class="fc-daygrid-body fc-daygrid-body-balanced "
																			style="width:100%; height:100%">
																			<table role="presentation"
																				class="fc-scrollgrid-sync-table"
																				style="height:100%; width:100%;">
																				<colgroup></colgroup>
																				<tbody role="presentation">
																					<tr role="row">
																						<td aria-labelledby="fc-dom-2" role="gridcell"
																							data-date="2023-01-01"
																							class="fc-day fc-day-sun fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 1, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-2"
																										class="fc-daygrid-day-number">1</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-event-harness"
																										style="margin-top: 0px;">
																										<a tabindex="0"
																											class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past fc-daygrid-event fc-daygrid-block-event fc-h-event"><div
																												class="fc-event-main">
																												<div class="fc-event-main-frame">
																													<div class="fc-event-title-container">
																														<div class="fc-event-title fc-sticky">All
																															Day Event</div>
																													</div>
																												</div>
																											</div>
																											<div
																												class="fc-event-resizer fc-event-resizer-end"></div></a>
																									</div>
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-4" role="gridcell"
																							data-date="2023-01-02"
																							class="fc-day fc-day-mon fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 2, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-4"
																										class="fc-daygrid-day-number">2</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-6" role="gridcell"
																							data-date="2023-01-03"
																							class="fc-day fc-day-tue fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 3, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-6"
																										class="fc-daygrid-day-number">3</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-8" role="gridcell"
																							data-date="2023-01-04"
																							class="fc-day fc-day-wed fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 4, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-8"
																										class="fc-daygrid-day-number">4</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-10" role="gridcell"
																							data-date="2023-01-05"
																							class="fc-day fc-day-thu fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 5, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-10"
																										class="fc-daygrid-day-number">5</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-12" role="gridcell"
																							data-date="2023-01-06"
																							class="fc-day fc-day-fri fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 6, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-12"
																										class="fc-daygrid-day-number">6</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-14" role="gridcell"
																							data-date="2023-01-07"
																							class="fc-day fc-day-sat fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 7, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-14"
																										class="fc-daygrid-day-number">7</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-event-harness"
																										style="margin-top: 0px;">
																										<a tabindex="0"
																											class="fc-event fc-event-draggable fc-event-start fc-event-past fc-daygrid-event fc-daygrid-block-event fc-h-event"><div
																												class="fc-event-main">
																												<div class="fc-event-main-frame">
																													<div class="fc-event-title-container">
																														<div class="fc-event-title fc-sticky">Long
																															Event</div>
																													</div>
																												</div>
																											</div></a>
																									</div>
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																					</tr>
																					<tr role="row">
																						<td aria-labelledby="fc-dom-16" role="gridcell"
																							data-date="2023-01-08"
																							class="fc-day fc-day-sun fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 8, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-16"
																										class="fc-daygrid-day-number">8</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div
																										class="fc-daygrid-event-harness fc-daygrid-event-harness-abs"
																										style="top: 0px; left: 0px; right: -156.844px;">
																										<a tabindex="0"
																											class="fc-event fc-event-draggable fc-event-resizable fc-event-end fc-event-past fc-daygrid-event fc-daygrid-block-event fc-h-event"><div
																												class="fc-event-main">
																												<div class="fc-event-main-frame">
																													<div class="fc-event-title-container">
																														<div class="fc-event-title fc-sticky">Long
																															Event</div>
																													</div>
																												</div>
																											</div>
																											<div
																												class="fc-event-resizer fc-event-resizer-end"></div></a>
																									</div>
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 19px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-18" role="gridcell"
																							data-date="2023-01-09"
																							class="fc-day fc-day-mon fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 9, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-18"
																										class="fc-daygrid-day-number">9</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-event-harness"
																										style="margin-top: 19px;">
																										<a tabindex="0"
																											class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past fc-daygrid-event fc-daygrid-dot-event"><div
																												class="fc-daygrid-event-dot"></div>
																											<div class="fc-event-time">4p</div>
																											<div class="fc-event-title">Repeating
																												Event</div></a>
																									</div>
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-20" role="gridcell"
																							data-date="2023-01-10"
																							class="fc-day fc-day-tue fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 10, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-20"
																										class="fc-daygrid-day-number">10</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-22" role="gridcell"
																							data-date="2023-01-11"
																							class="fc-day fc-day-wed fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 11, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-22"
																										class="fc-daygrid-day-number">11</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div
																										class="fc-daygrid-event-harness fc-daygrid-event-harness-abs"
																										style="top: 0px; left: 0px; right: -156.844px;">
																										<a tabindex="0"
																											class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past fc-daygrid-event fc-daygrid-block-event fc-h-event"><div
																												class="fc-event-main">
																												<div class="fc-event-main-frame">
																													<div class="fc-event-title-container">
																														<div class="fc-event-title fc-sticky">Conference</div>
																													</div>
																												</div>
																											</div>
																											<div
																												class="fc-event-resizer fc-event-resizer-end"></div></a>
																									</div>
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 19px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-24" role="gridcell"
																							data-date="2023-01-12"
																							class="fc-day fc-day-thu fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 12, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-24"
																										class="fc-daygrid-day-number">12</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-event-harness"
																										style="margin-top: 19px;">
																										<a tabindex="0"
																											class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past fc-daygrid-event fc-daygrid-dot-event"><div
																												class="fc-daygrid-event-dot"></div>
																											<div class="fc-event-time">10:30a</div>
																											<div class="fc-event-title">Meeting</div></a>
																									</div>
																									<div class="fc-daygrid-event-harness"
																										style="margin-top: 0px;">
																										<a tabindex="0"
																											class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past fc-daygrid-event fc-daygrid-dot-event"><div
																												class="fc-daygrid-event-dot"></div>
																											<div class="fc-event-time">12p</div>
																											<div class="fc-event-title">Lunch</div></a>
																									</div>
																									<div class="fc-daygrid-event-harness"
																										style="margin-top: 0px;">
																										<a tabindex="0"
																											class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past fc-daygrid-event fc-daygrid-dot-event"><div
																												class="fc-daygrid-event-dot"></div>
																											<div class="fc-event-time">2:30p</div>
																											<div class="fc-event-title">Meeting</div></a>
																									</div>
																									<div
																										class="fc-daygrid-event-harness fc-daygrid-event-harness-abs"
																										style="visibility: hidden; top: 0px; left: 0px; right: 0px;">
																										<a tabindex="0"
																											class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past fc-daygrid-event fc-daygrid-dot-event"><div
																												class="fc-daygrid-event-dot"></div>
																											<div class="fc-event-time">5:30p</div>
																											<div class="fc-event-title">Happy Hour</div></a>
																									</div>
																									<div
																										class="fc-daygrid-event-harness fc-daygrid-event-harness-abs"
																										style="visibility: hidden; top: 0px; left: 0px; right: 0px;">
																										<a tabindex="0"
																											class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past fc-daygrid-event fc-daygrid-dot-event"><div
																												class="fc-daygrid-event-dot"></div>
																											<div class="fc-event-time">8p</div>
																											<div class="fc-event-title">Dinner</div></a>
																									</div>
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;">
																										<a tabindex="0" title="Show 2 more events"
																											aria-expanded="false" aria-controls=""
																											class="fc-daygrid-more-link fc-more-link">+2
																											more</a>
																									</div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-26" role="gridcell"
																							data-date="2023-01-13"
																							class="fc-day fc-day-fri fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 13, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-26"
																										class="fc-daygrid-day-number">13</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-event-harness"
																										style="margin-top: 0px;">
																										<a tabindex="0"
																											class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past fc-daygrid-event fc-daygrid-dot-event"><div
																												class="fc-daygrid-event-dot"></div>
																											<div class="fc-event-time">7a</div>
																											<div class="fc-event-title">Birthday
																												Party</div></a>
																									</div>
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-28" role="gridcell"
																							data-date="2023-01-14"
																							class="fc-day fc-day-sat fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 14, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-28"
																										class="fc-daygrid-day-number">14</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																					</tr>
																					<tr role="row">
																						<td aria-labelledby="fc-dom-30" role="gridcell"
																							data-date="2023-01-15"
																							class="fc-day fc-day-sun fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 15, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-30"
																										class="fc-daygrid-day-number">15</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-32" role="gridcell"
																							data-date="2023-01-16"
																							class="fc-day fc-day-mon fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 16, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-32"
																										class="fc-daygrid-day-number">16</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-event-harness"
																										style="margin-top: 0px;">
																										<a tabindex="0"
																											class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past fc-daygrid-event fc-daygrid-dot-event"><div
																												class="fc-daygrid-event-dot"></div>
																											<div class="fc-event-time">4p</div>
																											<div class="fc-event-title">Repeating
																												Event</div></a>
																									</div>
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-34" role="gridcell"
																							data-date="2023-01-17"
																							class="fc-day fc-day-tue fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 17, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-34"
																										class="fc-daygrid-day-number">17</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-36" role="gridcell"
																							data-date="2023-01-18"
																							class="fc-day fc-day-wed fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 18, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-36"
																										class="fc-daygrid-day-number">18</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-38" role="gridcell"
																							data-date="2023-01-19"
																							class="fc-day fc-day-thu fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 19, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-38"
																										class="fc-daygrid-day-number">19</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-40" role="gridcell"
																							data-date="2023-01-20"
																							class="fc-day fc-day-fri fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 20, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-40"
																										class="fc-daygrid-day-number">20</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-42" role="gridcell"
																							data-date="2023-01-21"
																							class="fc-day fc-day-sat fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 21, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-42"
																										class="fc-daygrid-day-number">21</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																					</tr>
																					<tr role="row">
																						<td aria-labelledby="fc-dom-44" role="gridcell"
																							data-date="2023-01-22"
																							class="fc-day fc-day-sun fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 22, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-44"
																										class="fc-daygrid-day-number">22</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-46" role="gridcell"
																							data-date="2023-01-23"
																							class="fc-day fc-day-mon fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 23, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-46"
																										class="fc-daygrid-day-number">23</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-48" role="gridcell"
																							data-date="2023-01-24"
																							class="fc-day fc-day-tue fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 24, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-48"
																										class="fc-daygrid-day-number">24</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-50" role="gridcell"
																							data-date="2023-01-25"
																							class="fc-day fc-day-wed fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 25, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-50"
																										class="fc-daygrid-day-number">25</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-52" role="gridcell"
																							data-date="2023-01-26"
																							class="fc-day fc-day-thu fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 26, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-52"
																										class="fc-daygrid-day-number">26</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-54" role="gridcell"
																							data-date="2023-01-27"
																							class="fc-day fc-day-fri fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 27, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-54"
																										class="fc-daygrid-day-number"
																										style="height: 20px;">27</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-56" role="gridcell"
																							data-date="2023-01-28"
																							class="fc-day fc-day-sat fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 28, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-56"
																										class="fc-daygrid-day-number">28</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-event-harness"
																										style="margin-top: 0px;">
																										<a href="http://google.com/"
																											class="fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past fc-daygrid-event fc-daygrid-block-event fc-h-event"><div
																												class="fc-event-main">
																												<div class="fc-event-main-frame">
																													<div class="fc-event-title-container">
																														<div class="fc-event-title fc-sticky">Click
																															for Google</div>
																													</div>
																												</div>
																											</div>
																											<div
																												class="fc-event-resizer fc-event-resizer-end"></div></a>
																									</div>
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																					</tr>
																					<tr role="row">
																						<td aria-labelledby="fc-dom-58" role="gridcell"
																							data-date="2023-01-29"
																							class="fc-day fc-day-sun fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 29, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-58"
																										class="fc-daygrid-day-number">29</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-60" role="gridcell"
																							data-date="2023-01-30"
																							class="fc-day fc-day-mon fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 30, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-60"
																										class="fc-daygrid-day-number">30</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-62" role="gridcell"
																							data-date="2023-01-31"
																							class="fc-day fc-day-tue fc-day-past fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to January 31, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-62"
																										class="fc-daygrid-day-number">31</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-64" role="gridcell"
																							data-date="2023-02-01"
																							class="fc-day fc-day-wed fc-day-past fc-day-other fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to February 1, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-64"
																										class="fc-daygrid-day-number">1</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-66" role="gridcell"
																							data-date="2023-02-02"
																							class="fc-day fc-day-thu fc-day-past fc-day-other fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to February 2, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-66"
																										class="fc-daygrid-day-number">2</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-68" role="gridcell"
																							data-date="2023-02-03"
																							class="fc-day fc-day-fri fc-day-past fc-day-other fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to February 3, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-68"
																										class="fc-daygrid-day-number">3</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-70" role="gridcell"
																							data-date="2023-02-04"
																							class="fc-day fc-day-sat fc-day-past fc-day-other fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to February 4, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-70"
																										class="fc-daygrid-day-number">4</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																					</tr>
																					<tr role="row">
																						<td aria-labelledby="fc-dom-72" role="gridcell"
																							data-date="2023-02-05"
																							class="fc-day fc-day-sun fc-day-past fc-day-other fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to February 5, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-72"
																										class="fc-daygrid-day-number">5</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-74" role="gridcell"
																							data-date="2023-02-06"
																							class="fc-day fc-day-mon fc-day-past fc-day-other fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to February 6, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-74"
																										class="fc-daygrid-day-number">6</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-76" role="gridcell"
																							data-date="2023-02-07"
																							class="fc-day fc-day-tue fc-day-past fc-day-other fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to February 7, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-76"
																										class="fc-daygrid-day-number">7</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-78" role="gridcell"
																							data-date="2023-02-08"
																							class="fc-day fc-day-wed fc-day-past fc-day-other fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to February 8, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-78"
																										class="fc-daygrid-day-number">8</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-80" role="gridcell"
																							data-date="2023-02-09"
																							class="fc-day fc-day-thu fc-day-past fc-day-other fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to February 9, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-80"
																										class="fc-daygrid-day-number">9</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-82" role="gridcell"
																							data-date="2023-02-10"
																							class="fc-day fc-day-fri fc-day-past fc-day-other fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to February 10, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-82"
																										class="fc-daygrid-day-number">10</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																						<td aria-labelledby="fc-dom-84" role="gridcell"
																							data-date="2023-02-11"
																							class="fc-day fc-day-sat fc-day-past fc-day-other fc-daygrid-day"><div
																								class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
																								<div class="fc-daygrid-day-top">
																									<a title="Go to February 11, 2023"
																										data-navlink="" tabindex="0" id="fc-dom-84"
																										class="fc-daygrid-day-number">11</a>
																								</div>
																								<div class="fc-daygrid-day-events">
																									<div class="fc-daygrid-day-bottom"
																										style="margin-top: 0px;"></div>
																								</div>
																								<div class="fc-daygrid-day-bg"></div>
																							</div></td>
																					</tr>
																				</tbody>
																			</table>
																		</div>
																	</div>
																</div></td>
														</tr>
													</tbody>
												</table>
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