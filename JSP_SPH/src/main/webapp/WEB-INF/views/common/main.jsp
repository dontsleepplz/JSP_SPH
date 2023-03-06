<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	Date nowTime = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 a hh:mm:ss");
%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SPH</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini" onload="getTime()">
	<div class="wrapper">


		<div class="content">

			<div class="container-fluid">

				<div class="col-md-12">
					<div class="row">
						<!-- 출퇴근 -->
						<div class="col-md-2">

							<div class="card card-outline" style="height: 48vh;">

								<div class="card-body box-profile">

									<div class="text-center">

										<img class="profile-user-img img-fluid" style="height: 150px;"
											src="resources/images/cat.jpg" alt="User profile picture">

									</div>

									<h3 class="profile-username text-center">고양이</h3>

									<p class="text-muted text-center">할수있다 3팀</p>

									<p class="text-center" id="WhatTimeIsItNow"></p>

									<ul class="list-group list-group-unbordered mb-3">
										<li class="list-group-item"><b>출근시간 : </b> <a
											class="float-right">#</a></li>
										<li class="list-group-item"><b>퇴근시간 : </b> <a
											class="float-right">#</a></li>
									</ul>

									<div class="text-center">
										<a href="#" class="btn btn-primary btn-block"
											style="display: inline;"><b>출근</b></a>
										&nbsp;&nbsp;&nbsp;&nbsp; <a href="#"
											class="btn btn-primary btn-block" style="display: inline;"><b>퇴근</b></a>
									</div>


								</div>

							</div>

						</div>

						<!-- 캘린더 -->
						<div class="col-md-5" style="height: 48vh;"></div>

						<!-- todo -->
						<div class="col-md-5" style="dispiay: inlile;">

							<div class="card card-row card-primary"
								style="height: 48vh; dispiay: inlile;">
								<div class="card-header" style="background: none;">
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
					<div class="row">

						<div class="col-md-3" style="dispiay: inlile;">

							<div class="card card-row card-primary"
								style="height: 48vh; dispiay: inlile;">
								<div class="card-header" style="background: none;">
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
								style="height: 48vh; dispiay: inlile;">
								<div class="card-header" style="background: none;">
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
								style="height: 48vh; dispiay: inlile;">
								<div class="card-header" style="background: none;">
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
								style="height: 48vh; dispiay: inlile;">
								<div class="card-header" style="background: none;">
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



				<!-- ./container-fluid -->
			</div>

			<!-- ./content -->
		</div>

		<!-- ./wrapper -->
	</div>

	<!-- REQUIRED SCRIPTS -->
	<script>
		function getTime() {
			var d = new Date(); // 현재 날짜와 시간
			var yyyy = d.getFullYear();
			var mm = d.getMonth();
			var dd = d.getDay();
			var hur = d.getHours(); // 시
			var min = d.getMinutes(); //분
			var sec = d.getSeconds(); //초

			var timeBoard = document.getElementById("WhatTimeIsItNow"); // 값이 입력될 공간

			var time = yyyy + "년 " + mm + "월 " + dd + "일 " + hur + "시 " + min
					+ "분 " + sec + "초" // 형식 지정

			timeBoard.innerHTML = time; // 출력

			setTimeout(getTime, 1000); //1000밀리초(1초) 마다 반복
		}
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

