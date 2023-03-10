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

<c:set var="memberList" value="${dataMap.memberList }" />
<c:set var="calendarList" value="${dataMap.calendarList }" />
<c:set var="toDoList" value="${dataMap.toDoList }" />
<c:set var="noticeList" value="${dataMap.noticeList }" />
<c:set var="mailList" value="${dataMap.mailList }" />
<c:set var="elecSignList" value="${dataMap.elecSignList }" />
<c:set var="operationList" value="${dataMap.operationList }" />

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
#calendar {
	max-width: 100%;
	max-height: 100%;
}

a {
	color: inherit;
	text-decoration: none;
}
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
							<div class="col-md-2">
								<div class="card" style="height: 48vh;">
									<div class="card-body">

										<div class="row" style="height: 200px; margin-bottom: 10px;">
											<div class="mailbox-attachments clearfix col-md-12"
												style="text-align: center;">
												<div id="pictureView" class="memPicture"
													data-id="${member.id }"
													style="border: 1px solid green; height: 200px; width: 150px; margin: 0 auto"></div>
											</div>
										</div>

										<div class="form-group row">

											<div class="col-md-12 text-center">
												<p class="profile-username" style="margin: 0 auto;"
													value="${member.name }">홍길동</p>
											</div>

											<div class="col-md-12 text-center">
												<p class="profile-username" style="margin: 0 auto;"
													value="${member.departCode }">활빈당</p>
											</div>

											<div class="col-md-12 text-center" style="padding: 10px;">
												<p class="text-center" id="TimeNow" style="margin: auto;"></p>
											</div>

											<div class="col-md-12">
												<ul class="list-group list-group-unbordered mb-12"
													style="margin: 0px;">
													<li class="list-group-item"><b>출근시간 : </b> <a
														class="float-right">#</a></li>
													<li class="list-group-item"><b>퇴근시간 : </b> <a
														class="float-right">#</a></li>
												</ul>
											</div>

											<div class="col-md-12">
												<div class="row" style="padding: 10px;">
													<div class="col-md-6 text-center">
														<button type="button" class="btn btn-block btn-primary">
															<a href="#">출근</a>
														</button>
													</div>
													<div class="col-md-6 text-center">
														<button type="button" class="btn btn-block btn-danger">
															<a href="#">퇴근</a>
														</button>
													</div>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>

							<!-- 캘린더 -->
							<div class="col-md-5">
								<div class="card" style="height: 48vh;">
									<div id="calendar"
										class="fc fc-media-screen fc-direction-ltr fc-theme-standard">
									</div>
								</div>
							</div>

							<!-- todo -->
							<div class="col-md-5">

								<div class="card card-row card-primar" style="height: 48vh;">

									<div class="card-header"
										style="background: none; border: 1px solid gray;">
										<h3 class="card-title" style="color: black;">ToDo +</h3>
									</div>

									<div class="card-body">

										<c:if test="${!empty toDoList }">
											<c:forEach items="${toDoList }" var="toDo">

												<div class="card card-outline">
													<div class="card-header">
														<div class="col-md-3 text-left">${toDoList.toDoTime }</div>
														<div class="col-md-8 text-left">${toDoList.title }</div>
														<div class="col-md-1 text-right">
															<button type="button" class="btn btn-tool"
																data-card-widget="remove">
																<i class="fas fa-times"></i>
															</button>
															<!-- 진짜 지울수 있게 해보기 -->
														</div>
													</div>
												</div>

											</c:forEach>
										</c:if>

										<c:if test="${empty toDoList }">

											<div class="card card-outline">
												<div class="card-header">
													
													<div class="row">
													
														<div class="col-md-10 text-left">해당내용이 없습니다.</div>

														<!-- 버튼예시 지워야함 -->
														<div class="col-md-2 text-right">
															<button type="button" class="btn btn-tool"
																data-card-widget="remove">
																<i class="fas fa-times"></i>
															</button>
														</div>
														<!-- 버튼예시 지워야함 -->

													</div>
												</div>
											</div>

										</c:if>

									</div>

								</div>

							</div>

						</div>
						<!-- E:row -->

					</div>
					<!-- E:col-md-12 -->


					<div class="col-md-12">
						<div class="row" style="padding-bottom: 10px;">

							<div class="col-md-3">

								<div class="card card-row card-primary"
									style="height: 42vh; dispiay: inlile; margin: auto; padding: auto;">

									<div class="card-header"
										style="background: none; border: 1px solid gray;">
										<h3 class="card-title" style="color: black;">공지사항 +</h3>
									</div>

									<div class="card-body">

										<c:if test="${!empty noticeList }">
											<c:forEach items="${noticeList }" var="notice">
												<div class="row">
													<div class="card card-outline" style="cursor:pointer;" onclick="OpenWindow();">
														<div class="card-header">
															<div class="col-md-12 text-left">${noticeList.title }</div>
														</div>
													</div>
												</div>
											</c:forEach>
										</c:if>

										<c:if test="${empty noticeList }">
											<div>
												<div class="card card-outline">
													<div class="card-header">
														<div class="col-md-12 text-left">해당내용이 없습니다.</div>
													</div>
												</div>
											</div>
										</c:if>

									</div>
								</div>

							</div>

							<div class="col-md-3">

								<div class="card card-row card-primary"
									style="height: 42vh; dispiay: inlile; margin: auto; padding: auto;">

									<div class="card-header"
										style="background: none; border: 1px solid gray;">
										<h3 class="card-title" style="color: black;">메일 +</h3>
									</div>

									<div class="card-body">

										<c:if test="${!empty mailList }">
											<c:forEach items="${mailList }" var="mail">
												<div class="row">
													<div class="card card-outline" style="cursor:pointer;" onclick="OpenWindow();">
														<div class="card-header">
															<div class="col-md-3 text-left">${mailList.writer }</div>
															<div class="col-md-9 text-left">${mailList.title }</div>
														</div>
													</div>
												</div>
											</c:forEach>
										</c:if>

										<c:if test="${empty mailList }">
											<div>
												<div class="card card-outline">
													<div class="card-header">
														<div class="col-md-12 text-left">해당내용이 없습니다.</div>
													</div>
												</div>
											</div>
										</c:if>

									</div>
								</div>

							</div>

							<div class="col-md-3">

								<div class="card card-row card-primary"
									style="height: 42vh; dispiay: inlile; margin: auto; padding: auto;">

									<div class="card-header"
										style="background: none; border: 1px solid gray;">
										<h3 class="card-title" style="color: black;">전자결재 +</h3>
									</div>

									<div class="card-body">

										<c:if test="${!empty elecSignList }">
											<c:forEach items="${elecSignList }" var="elecSign">
												<div class="row">
													<div class="card card-outline" style="cursor:pointer;" onclick="OpenWindow();">
														<div class="card-header">
															<div class="col-md-3 text-left">${elecSignList.writer }</div>
															<div class="col-md-9 text-left">${elecSignList.title }</div>
														</div>
													</div>
												</div>
											</c:forEach>
										</c:if>

										<c:if test="${empty elecSignList }">
											<div>
												<div class="card card-outline">
													<div class="card-header">
														<div class="col-md-12 text-left">해당내용이 없습니다.</div>
													</div>
												</div>
											</div>
										</c:if>

									</div>
								</div>

							</div>

							<div class="col-md-3">

								<div class="card card-row card-primary"
									style="height: 42vh; dispiay: inlile; margin: auto; padding: auto;">

									<div class="card-header"
										style="background: none; border: 1px solid gray;">
										<h3 class="card-title" style="color: black;">수술 +</h3>
									</div>

									<div class="card-body">

										<c:if test="${!empty operationList }">
											<c:forEach items="${operationList }" var="operation">
												<div class="row">
													<div class="card card-outline" style="cursor:pointer;" onclick="OpenWindow();">
														<div class="card-header">
															<div class="col-md-12 text-left">${operationList.content }</div>
														</div>
													</div>
												</div>
											</c:forEach>
										</c:if>

										<c:if test="${empty operationList }">
											<div>
												<div class="card card-outline">
													<div class="card-header">
														<div class="col-md-12 text-left">해당내용이 없습니다.</div>
													</div>
												</div>
											</div>
										</c:if>

									</div>
								</div>

							</div>

						</div>

					</div>

				</div>
				<!-- E:container-fluid -->

			</div>
			<!-- E:content -->

			<aside class="control-sidebar control-sidebar-dark"></aside>

		</div>
		<!-- E:content-wrapper -->

	</div>
	<!-- E:wrapper -->

	<script>
		document.addEventListener('DOMContentLoaded', function() {
			var calendarEl = document.getElementById('calendar');

			var calendar = new FullCalendar.Calendar(calendarEl, {
				headerToolbar : {
					left : 'prev,next today',
					center : 'title',
					right : 'dayGridMonth,timeGridDay'
				},

				navLinks : true, // can click day/week names to navigate views
				selectable : true,
				nowIndicator : true,
				dayMaxEvents : true,
				locale : 'ko',
				selectMirror : true
			});
			calendar.render();
		});
	</script>

	<script>
		function getTime() {
			var d = new Date(); // 현재 날짜와 시간
			var MM = d.getMonth() + 1;
			var dd = d.getDate();
			var hh = d.getHours(); // 시
			var mm = d.getMinutes(); // 분
			var ss = d.getSeconds(); // 초
			var timeBoard = document.getElementById("TimeNow"); // 값이 입력될 공간
			var time = MM + "월 " + dd + "일 " + hh + "시 " + mm + "분 " + ss + "초" // 형식 지정
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