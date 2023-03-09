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
								<h3 class="card-title">일정 등록</h3>
								<button type="button" class="btn btn-danger" id="cancelBtn"
									onclick="CloseWindow();" style="float: right;">취 소</button>
								<button type="button" id="registBtn" onclick="regist_go();"
									class="btn btn-info" style="float: right; margin-right: 20px;">등록</button>
							</div>
							<div class="card-body">
								<div class="col-sm-6">

									<div class="form-group">
										<label>제목</label> <input type="text" class="form-control">
									</div>
								</div>
								<div class="form-group">
									<label>Date and time:</label>
									<div class="input-group date" id="reservationdatetime"
										data-target-input="nearest">
										<input type="text" class="form-control datetimepicker-input"
											data-target="#reservationdatetime">
										<div class="input-group-append"
											data-target="#reservationdatetime"
											data-toggle="datetimepicker">
											<div class="input-group-text">
												<i class="fa fa-calendar"></i>
											</div>
										</div>
									</div>
								</div>


								<div class="form-group">
									<label>부서</label> <select
										class="form-control select2 select2-hidden-accessible"
										style="width: 100%;" data-select2-id="9" tabindex="-1"
										aria-hidden="true">
										<option selected="selected" data-select2-id="11">부서선택</option>
										<option data-select2-id="74">신경외과</option>
										<option disabled="disabled" data-select2-id="75">소아과</option>
										<option data-select2-id="76">흉부외과</option>
										<option data-select2-id="77">마취과</option>
										<option data-select2-id="78">정신과</option>
										<option data-select2-id="79">내과</option>
									</select>
								</div>

							</div>
							
							<div class="form-group">
							<form action="enhanced-results.html" data-select2-id="10">
								<div class="row">
									<div class="col-md-10 offset-md-1">
										<div class="row">
											<div class="col-4">
												<div class="form-group">
													<label>환자 </label> 
													<select class="select2 select2-hidden-accessible" multiple="" data-placeholder="Any" style="width: 100%;"
														data-select2-id="1" tabindex="-1" aria-hidden="true">
														<option data-select2-id="12">사은영</option>
														<option data-select2-id="13">변은섭</option>
														<option data-select2-id="14">양종민</option>
													</select>
												</div>
											</div>
											<div class="col-4">
												<div class="form-group">
													<label>부서:</label> 
													<select class="select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="3" tabindex="-1"
														aria-hidden="true">
														<option selected="" data-select2-id="5">내과</option>
														<option>정신과</option>
														<option>흉부외과</option>
														<option>외과</option>
														<option>마취과</option>
														<option>신경외과</option>
														
													</select>
												</div>
											</div>
											<div class="col-4">
												<div class="form-group">
													<label>의사:</label> 
													<select class="select2 select2-hidden-accessible" style="width: 100%;" data-select2-id="6" tabindex="-1"
														aria-hidden="true">
														<option selected="" data-select2-id="8">황정민</option>
														<option>주지훈</option>
													</select>
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="input-group input-group-lg">
												<input type="search" class="form-control form-control-lg"
													placeholder="Type your keywords here" value="">
												<div class="input-group-append">
													<button type="submit" class="btn btn-lg btn-default">
														<i class="fa fa-search"></i>
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</form>
							<div class="col-sm-12">
								<div class="form-group">
									<label>내용</label>
									<textarea class="form-control" rows="3" placeholder="내용을 입력하세요"></textarea>
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


<script src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/daterangepicker/daterangepicker.js"></script>





<script>
	$(function() {
		$('#datetimepicker1').datetimepicker({
			format : 'L'
		});
		$('#datetimepicker2').datetimepicker({
			format : 'L',
			useCurrent : false
		});
		$("#datetimepicker1").on("change.datetimepicker", function(e) {
			$('#datetimepicker2').datetimepicker('minDate', e.date);
		});
		$("#datetimepicker2").on("change.datetimepicker", function(e) {
			$('#datetimepicker1').datetimepicker('maxDate', e.date);
		});
	});

	$(document).ready(function() {
		$(function() {
			$('input[name="daterange"]').daterangepicker({
				"startDate" : "01/01/2023",
				"endDate" : "17/01/2023",
				opens : 'center',
				locale : {
					format : 'DD/MM/YYYY'
				}
			});
		});
	});

	//Date range picker
	$('#reservation').daterangepicker();
	//Date range picker with time picker
	$('#reservationtime').daterangepicker({
		timePicker : true,
		timePickerIncrement : 30,
		locale : {
			format : 'MM/DD/YYYY hh:mm A'
		}
	});
	//Date range as a button
	$('#daterange-btn')
			.daterangepicker(
					{
						ranges : {
							'Today' : [ moment(), moment() ],
							'Yesterday' : [ moment().subtract(1, 'days'),
									moment().subtract(1, 'days') ],
							'Last 7 Days' : [ moment().subtract(6, 'days'),
									moment() ],
							'Last 30 Days' : [ moment().subtract(29, 'days'),
									moment() ],
							'This Month' : [ moment().startOf('month'),
									moment().endOf('month') ],
							'Last Month' : [
									moment().subtract(1, 'month').startOf(
											'month'),
									moment().subtract(1, 'month')
											.endOf('month') ]
						},
						startDate : moment().subtract(29, 'days'),
						endDate : moment()
					},
					function(start, end) {
						$('#reportrange span').html(
								start.format('MMMM D, YYYY') + ' - '
										+ end.format('MMMM D, YYYY'))
					}

			);
</script>