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
</style>




</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<!-- main nav -->
		<%-- <nav style="margin-left: 0px; background-color: rgb(180, 220, 255);"
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
				<c:forEach items="${empty menuList }" var="menu">
				<li class="nav-item d-none d-sm-inline-block">
				<a href="javascript:open_SubMenu('${menu.mcode }');open_Page('<%=request.getContextPath() %>${menu.murl}','${menu.mcode}');" class="nav-link">${menu.mname }</a></li>
			</c:forEach>
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
			<aside style="height: 100%;width:220px; margin-top: 73px;"
				class="main-sidebar sidebar-dark-primary elevation-4">
				<div class="sidebar" style="height: 100%; background-color: white;">
					<!-- aside -->
					<div class="sidebar os-host os-theme-light os-host-overflow os-host-overflow-y os-host-resize-disabled os-host-transition os-host-scrollbar-horizontal-hidden"
					style="background-color: white;">
						<div class="os-resize-observer-host observed">
							<div class="os-resize-observer" ></div>
						</div>
						<div class="os-size-auto-observer observed"
							>
							<div class="os-resize-observer"></div>
						</div>
						<div class="os-content-glue"
							></div>
						<div class="os-padding">
							<div class="os-viewport os-viewport-native-scrollbars-invisible"
								>
								<div class="os-content"
									>

									<nav class="mt-2">
										<ul class="nav nav-pills nav-sidebar flex-column subMenuList"
											data-widget="treeview" role="menu" data-accordion="false">
											<!-- META : sideList -->
											<!-- script -->
											<li class="nav-item menu-open" style="width:188px"><a href="#"
												class="nav-link active" style="width:inherit;"> <i
													class="nav-icon fas fa-tachometer-alt"></i>
													<p>
														Dashboard <i class="right fas fa-angle-left"></i>
													</p>
											</a>
												<ul class="nav nav-treeview" style="width:inherit;">
													<li class="nav-item"><a href="./index.html"
														class="nav-link"> <i class="far fa-circle nav-icon"></i>
															<p>Dashboard v1</p>
													</a></li>
													<li class="nav-item"><a href="./index2.html"
														class="nav-link"> <i class="far fa-circle nav-icon"></i>
															<p>Dashboard v2</p>
													</a></li>
													<li class="nav-item"><a href="./index3.html"
														class="nav-link active"> <i
															class="far fa-circle nav-icon"></i>
															<p>Dashboard v3</p>
													</a></li>
												</ul></li>
										</ul>
									</nav>

								</div>
							</div>
						</div>
						<div
							class="os-scrollbar os-scrollbar-horizontal os-scrollbar-unusable os-scrollbar-auto-hidden">
							<div class="os-scrollbar-track">
								<div class="os-scrollbar-handle"
									></div>
							</div>
						</div>
						<div
							class="os-scrollbar os-scrollbar-vertical os-scrollbar-auto-hidden">
							<div class="os-scrollbar-track">
								<div class="os-scrollbar-handle"
									></div>
							</div>
						</div>
						<div class="os-scrollbar-corner"></div>
					</div>

				</div>
			</aside>

		</c:if> --%>
		<!-- S: content-wrapper -->
		<!-- E:header -->
		<div class="content-wrapper"
			style="margin: auto; background-color: #d3d3d3; border: 3px solid red; ">

			<div class="content"
				style="width: 95vw; height: 95vh; margin: auto; padding: auto; border: 3px solid blue;">

				<div class="container-fluid"
					style="padding-top: 10px; width: 95vw; height: 95vh; border: 3px solid green; style="margin:auto;">

					<div>
						<i class="fas fa-minus"></i>
					</div>


					<div>
						<div class="card card-primary card-outline" style="width:30vw;">
							<div class="card-header">
								<h3 class="card-title">
									<i class="far fa-chart-bar"></i> 환자
								</h3>
								<div class="card-tools">
									<button type="button" class="btn btn-tool"
										data-card-widget="collapse">
										<i class="fas fa-minus"></i>
									</button>
								</div>
							</div>
							<div class="card-body">
								<div id="donut-chart"
									style="height: 300px; padding: 0px; position: relative;">
									<canvas class="flot-base" width="486" height="300"
										style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 486px; height: 300px;"></canvas>
									<canvas class="flot-overlay" width="486" height="300"
										style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 486px; height: 300px;"></canvas>
									<span class="pieLabel" id="pieLabel0"
										style="position: absolute; top: 69.5px; left: 300.953px;"><div
											style="font-size: 13px; text-align: center; padding: 2px; color: #fff; font-weight: 600;">
											Series2<br>30%
										</div></span><span class="pieLabel" id="pieLabel1"
										style="position: absolute; top: 209.5px; left: 278.953px;"><div
											style="font-size: 13px; text-align: center; padding: 2px; color: #fff; font-weight: 600;">
											Series3<br>20%
										</div></span><span class="pieLabel" id="pieLabel2"
										style="position: absolute; top: 128.5px; left: 119.953px;"><div
											style="font-size: 13px; text-align: center; padding: 2px; color: #fff; font-weight: 600;">
											Series4<br>50%
										</div></span>
								</div>
							</div>

						</div>

						<div class="card card-primary card-outline" style="width:30vw;">
							<div class="card-header">
								<h3 class="card-title">
									<i class="far fa-chart-bar"></i> 입원
								</h3>
								<div class="card-tools">
									<button type="button" class="btn btn-tool"
										data-card-widget="collapse">
										<i class="fas fa-minus"></i>
									</button>
								</div>
							</div>
							<div class="card-body">
								<div id="donut-chart"
									style="height: 300px; padding: 0px; position: relative;">
									<canvas class="flot-base" width="486" height="300"
										style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 486px; height: 300px;"></canvas>
									<canvas class="flot-overlay" width="486" height="300"
										style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 486px; height: 300px;"></canvas>
									<span class="pieLabel" id="pieLabel0"
										style="position: absolute; top: 69.5px; left: 300.953px;"><div
											style="font-size: 13px; text-align: center; padding: 2px; color: #fff; font-weight: 600;">
											Series2<br>30%
										</div></span><span class="pieLabel" id="pieLabel1"
										style="position: absolute; top: 209.5px; left: 278.953px;"><div
											style="font-size: 13px; text-align: center; padding: 2px; color: #fff; font-weight: 600;">
											Series3<br>20%
										</div></span><span class="pieLabel" id="pieLabel2"
										style="position: absolute; top: 128.5px; left: 119.953px;"><div
											style="font-size: 13px; text-align: center; padding: 2px; color: #fff; font-weight: 600;">
											Series4<br>50%
										</div></span>
								</div>
							</div>

						</div>

						<div class="card card-primary card-outline" style="width:30vw;">
							<div class="card-header">
								<h3 class="card-title">
									<i class="far fa-chart-bar"></i> 매출
								</h3>
								<div class="card-tools">
									<button type="button" class="btn btn-tool"
										data-card-widget="collapse">
										<i class="fas fa-minus"></i>
									</button>
								</div>
							</div>
							<div class="card-body">
								<div id="donut-chart"
									style="height: 300px; padding: 0px; position: relative; style="width:30vw;">
									<canvas class="flot-base" width="486" height="300"
										style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 486px; height: 300px;"></canvas>
									<canvas class="flot-overlay" width="486" height="300"
										style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 486px; height: 300px;"></canvas>
									<span class="pieLabel" id="pieLabel0"
										style="position: absolute; top: 69.5px; left: 300.953px;"><div
											style="font-size: 13px; text-align: center; padding: 2px; color: #fff; font-weight: 600;">
											Series2<br>30%
										</div></span><span class="pieLabel" id="pieLabel1"
										style="position: absolute; top: 209.5px; left: 278.953px;"><div
											style="font-size: 13px; text-align: center; padding: 2px; color: #fff; font-weight: 600;">
											Series3<br>20%
										</div></span><span class="pieLabel" id="pieLabel2"
										style="position: absolute; top: 128.5px; left: 119.953px;"><div
											style="font-size: 13px; text-align: center; padding: 2px; color: #fff; font-weight: 600;">
											Series4<br>50%
										</div></span>
								</div>
							</div>

						</div>
					</div>







				</div>
				<!-- ./container-fluid -->
			</div>
			<!-- ./content -->
		</div>
		<!-- S:footer -->

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
        var time = yyyy + "년 " + MM + "월 " + dd + "일 " + hh + "시 " + mm +
          "분 " + ss + "초" // 형식 지정
        timeBoard.innerHTML = time; // 출력
        setTimeout(getTime, 1000); //1000밀리초(1초) 마다 반복
      }
    </script>

	<script>
      (function() {
        $('#calendar').fullCalendar({
          themeSystem: 'bootstrap4',
          header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay,listMonth'
          },
          weekNumbers: true,
          eventLimit: true, // allow "more" link when too many events
          events: 'https://fullcalendar.io/api/demo-feeds/events.json'
        });
      })();
    </script>

	<!-- MainFooterScript -->
	<%-- <script>
	function open_Page(url,mCode){
		$('iframe[name="ifr"]').attr("src",url);
		if(typeof(history.pushState) == 'function'){
			var renewURL = location.href;
			renewURL = renewURL.substring(0, renewURL.indexOf(".do")+3);
			
			if(mCode != 'M0000000'){
				renewURL += "?mCode="+mCode;
			}
			history.pushState(mCode,null,renewURL);
		
		} else {
			location.hash = "#"+mCode;
		}
		
	}
	
	function open_SubMenu(mCode){
		if(mCode!="M000000"){
			$.ajax({
				url:"<%=request.getContextPath()%>/subMenu.do?mCode="+mCode,
    type:"get",
    success:function(data){
    printData(data,$('.subMenuList'),$('#subMenu-list-template'),'.subMenu');
    },
    error:function(error){
    AjaxErrorSecurityRedirectHandler(error.status);
    }
    });
    }else{
    $('.subMenuList').html("");
    }
    }

    function printData(dataArr,target,templateObject,removeSelector){

    var template=Handlebars.compile(templateObject.html());

    var html = template(dataArr);

    $(removeSelector).remove();
    target.append(html);
    }

    window.onload=function(){
    open_Page('<%=request.getContextPath()%>${menu.murl}','${menu.mcode}');
    open_SubMenu('${menu.mcode}'.substring(0,3)+"0000");
    }
    </script> --%>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
	<script type="text/x-handlebars-template" id="subMenu-list-template">
      {{#each .}}
        <li class="nav-item subMenu">
          <a href="javascript:goPage('<%=request.getContextPath()%>{{murl}}','{{mcode}}');" class="nav-link">
            <i class="{{micon}}"></i>
            <p>{{mname}}</p>
          </a>
        </li>
      {{/each}}
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