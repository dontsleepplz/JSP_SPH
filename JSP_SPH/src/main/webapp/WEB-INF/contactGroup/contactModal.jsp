<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Dashboard 3</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/daterangepicker/daterangepicker.css">



</head>
<body class="sidebar-mini sidebar-closed sidebar-collapse"
	style="height: auto">
	<div class="wrapper">
		<div class="content-wrapper">
			<section class="content">
				<div class="container-fluid">

					<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">주 소 록</h3>
								<button type="button" class="btn btn-danger" id="cancelBtn"
									onclick="CloseWindow();" style="float: right;">취 소</button>
								<button type="button" id="registBtn" onclick="regist_go();"
									class="btn btn-info" style="float: right; margin-right: 20px;">확
									인</button>
							</div>
							<div class="card-body">
								<div class="col-sm-12">
									<table class="table table-bordered text-center">
										<tr>
											<th>사진</th>
											<th>이름</th>
											<th>직급</th>
											<th>부서</th>
											<th>이메일</th>
										</tr>
										<c:if test="${!empty memberList }">
											<c:forEach items="${memberList }" var="member">
												<tr>
													<td
														style="margin: 0; padding: 0; padding-top: 5px; width: 10%;"><input
														type="checkbox"> <span class="manPicture"
														data-id="${member.id }"
														style="display: block; width: 40px; height: 40px; margin: 0 auto;"></span>
													</td>
													<td style="width: 12%;">${member.name }</td>
													<td style="width: 12%;">${member.rankCode }</td>
													<td style="width: 16%;">${member.departCode }</td>
													<td style="width: 25%;">${member.phone.replace('-','') }</td>
												</tr>
											</c:forEach>
										</c:if>

										<c:if test="${empty memberList }">
											<tr>
												<td colspan="7" class="text-center">해당내용이 없습니다.</td>
											</tr>
										</c:if>
									</table>
								</div>

								<div class="card-footer">
									<!-- pagination -->
									<div style="display:${!empty memberList ? 'visible':'none' };">
										<%@ include file="/WEB-INF/module/pagination.jsp"%>
									</div>
								</div>

							</div>


						</div>


					</div>
				</div>
				<!-- container-fluid -->
			</section>
			<!-- content -->
		</div>
		<!-- content wrapper -->
	</div>
	<!-- wrapper -->
</body>



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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>


<script>
	
</script>