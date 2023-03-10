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
</style>




<div class="row">
	<div class="col-md-8">
		<div class="card card-warning" >
			<div class="card-header"
				style="background-color: rgb(180, 220, 255);">
				<h3 class="card-title">결재양식 선택</h3>
				<div class="card-tools">
					<button type="button" class="btn btn-tool"
						data-card-widget="remove">
						<i class="fas fa-times"></i>
					</button>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="row" style="margin-top: 10px; margin-left:5.5px;">
						<input type="search" class="form-control form-control-lg"
							placeholder="양식제목" value="" style="width: 88%;">
						<button type="submit" class="btn btn-lg btn-default">
							<i class="fa fa-search"></i>
					</div>
					</button>
				</div>
				<div class="card-body">상세정보</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="col-12">
						<div class="card">

							<div class="card-body p-0">
								<table class="table table-hover">
									<tbody>
										<tr>
										</tr>
										<tr data-widget="expandable-table" aria-expanded="false">
											<td><i
												class="expandable-table-caret fas fa-caret-right fa-fw"></i>
												일반</td>
										</tr>
										<tr class="expandable-body d-none">
											<td>
												<div class="p-0" style="display: none;">
													<table class="table table-hover">
														<tbody>
															<tr data-widget="expandable-table" aria-expanded="false">
																<td><i
																	class="expandable-table-caret fas fa-caret-right fa-fw"></i>
																	업무</td>
															</tr>
															<tr class="expandable-body d-none">
																<td>
																	<div class="p-0" style="display: none;">
																		<table class="table table-hover">
																			<tbody>
																				<tr>
																					<td>업무기안</td>
																				</tr>
																				<tr>
																					<td>업무협조</td>
																				</tr>
																				<tr>
																					<td>휴가신청</td>
																				</tr>
																			</tbody>
																		</table>
																	</div>
																</td>
															</tr>
									</tbody>
								</table>
							</div>

						</div>

					</div>

				</div>
			</div>
		</div>
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