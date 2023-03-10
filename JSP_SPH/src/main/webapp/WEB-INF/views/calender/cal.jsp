
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><decorator:title default="SPH Groupware System" /></title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">

<link
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/demo-to-codepen.css"
	rel="stylesheet" />

<link
	href='https://cdn.jsdelivr.net/npm/fullcalendar@3.10.5/dist/fullcalendar.min.css'
	rel='stylesheet' />
<link
	href='https://cdn.jsdelivr.net/npm/fullcalendar@3.10.5/dist/fullcalendar.print.css'
	rel='stylesheet' media='print' />


<style>
#calendar {
	margin: 0;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
	max-width: 900px;
	margin: 40px auto;
}
</style>



</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<!-- main nav -->
		<nav style="margin-left: 0px; background-color: rgb(180, 220, 255);"
			class="main-header navbar navbar-expand navbar-white navbar-light">

			<!-- a:tag logo -->
			<a href="#" class="brand-link"> <img
				src="resources/bootstrap/dist/img/SPHlogo2.png" alt="SPH Logo"
				class="brand-image img-circle elevation-3"
				style="opacity: .8; display: flex; box-shadow: none !important;">
				<span class="brand-text font-weight-light">SPH</span>
			</a>

			<ul class="navbar-nav">

				<c:if test="${menuList }">
					<li class="nav-item d-none d-sm-inline-block"><a href="#"
						class="nav-link">${menu }</a></li>
				</c:if>
				<%-- <c:forEach items="${empty menuList }" var="menu">
				<li class="nav-item d-none d-sm-inline-block">
				<a href="javascript:open_SubMenu('${menu.mcode }');open_Page('<%=request.getContextPath() %>${menu.murl}','${menu.mcode}');" class="nav-link">${menu.mname }</a></li>
			</c:forEach> --%>
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
							</div> <!-- E:media -->
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

		<!-- E:navi -->

		<!-- 사이드바 c:if로 메인이 아니면 나오게 test값 넣어야함 -->
		<c:if test="${empty submenu }">
			<aside
				style="height: 100%; width: 240px; margin-top: 73px; background-color: rgb(180, 220, 255);"
				class="main-sidebar sidebar-dark-primary elevation-4">
				<div class="card-header">
					<h4 class="card-title">Draggable Events</h4>
				</div>
				<div class="card-body">

					<div id="external-events">
						<div
							class="external-event bg-success ui-draggable ui-draggable-handle"
							style="position: relative;">Lunch</div>
						<div
							class="external-event bg-warning ui-draggable ui-draggable-handle"
							style="position: relative;">Go home</div>
						<div
							class="external-event bg-info ui-draggable ui-draggable-handle"
							style="position: relative;">Do homework</div>
						<div
							class="external-event bg-primary ui-draggable ui-draggable-handle"
							style="position: relative;">Work on UI design</div>
						<div
							class="external-event bg-danger ui-draggable ui-draggable-handle"
							style="position: relative;">Sleep tight</div>
						<div class="checkbox">
							<label for="drop-remove"> <input type="checkbox"
								id="drop-remove"> remove after drop
							</label>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-header">
						<h3 class="card-title">Create Event</h3>
					</div>
					<div class="card-body">
						<div class="btn-group" style="width: 100%; margin-bottom: 10px;">
							<ul class="fc-color-picker" id="color-chooser">
								<li><a class="text-primary" href="#"><i
										class="fas fa-square"></i></a></li>
								<li><a class="text-warning" href="#"><i
										class="fas fa-square"></i></a></li>
								<li><a class="text-success" href="#"><i
										class="fas fa-square"></i></a></li>
								<li><a class="text-danger" href="#"><i
										class="fas fa-square"></i></a></li>
								<li><a class="text-muted" href="#"><i
										class="fas fa-square"></i></a></li>
							</ul>
						</div>

						<div class="input-group">
							<input id="new-event" type="text" class="form-control"
								placeholder="Event Title">
							<div class="input-group-append">
								<button id="add-new-event" type="button" class="btn btn-primary">Add</button>
							</div>

						</div>

					</div>
				</div>
			</aside>

		</c:if>

		<!-- E:header -->


		<div class="content-wrapper">
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>캘린더</h1>
						</div>
						<div class="col-sm-6"></div>
					</div>
				</div>
			</section>
			<section class="content">
				<div class="container-fluid">
					<div class="row">

						<div class="col-md" id="calendar"></div>
					</div>
				</div>
			</section>
		</div>











		<!-- S:footer -->




	</div>
	<!-- E:wrapper -->





	<script src='https://cdn.jsdelivr.net/npm/moment@2/min/moment.min.js'></script>
	<script src='https://cdn.jsdelivr.net/npm/jquery@3/dist/jquery.min.js'></script>
	<script
		src='https://cdn.jsdelivr.net/npm/fullcalendar@3.10.5/dist/fullcalendar.min.js'></script>

	<script>
		(function() {

			$('#calendar').fullCalendar({
				themeSystem : 'bootstrap4',
				header : {
					left : 'prev,next today',
					center : 'title',
					right : 'month,agendaWeek,agendaDay,listMonth'
				},
				weekNumbers : true,
				eventLimit : true, // allow "more" link when too many events
				events : 'https://fullcalendar.io/api/demo-feeds/events.json'
			});

		})();
	</script>

	<!-- jQuery -->
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
	<!-- common.js  -->
	<script src="<%=request.getContextPath()%>/resources/js/common.min.js"></script>


</body>
</html>

