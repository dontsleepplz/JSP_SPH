<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/daterangepicker/daterangepicker.css">

<div class="content">

	<div class="content-header">

		<div class="container-fluid">

			<div class="row mb-2">

				<div class="col-md-2">

					<div class="input-group-append" data-target="#reservationdatetime"
						data-toggle="datetimepicker"
						style="padding: 10px; cursor: pointer;">
						<h1>금년 금월</h1>
						&nbsp;&nbsp;&nbsp;
						<div class="input-group-text">
							<i class="fa fa-calendar"></i>
						</div>
					</div>

				</div>

				<div class="col-md-6 text-left">
					<div class="row" style="padding: 10px;">
						<div class="col-md-3 text-center">
							<button type="button" class="btn btn-block btn-outline-primary">
								<a href="#">Previous</a>
							</button>
						</div>
						<div class="col-md-3 text-center">
							<button type="button" class="btn btn-block btn-outline-primary">
								<a href="#">Next</a>
							</button>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="form-inline">
						<div class="input-group text-right" data-widget="sidebar-search">
							<input class="form-control form-control-sidebar" type="search"
								placeholder="Search" aria-label="Search">
							<div class="input-group-append">
								<button class="btn btn-sidebar">
									<i class="fas fa-search fa-fw"></i>
								</button>
							</div>
						</div>
						<div class="sidebar-search-results">
							<div class="list-group">
								<a href="#" class="list-group-item">
									<div class="search-path"></div></a>
							</div>
						</div>
					</div>


				</div>

			</div>
			<!-- ./row mb-2 -->

		</div>
		<!-- ./container-fluid -->

	</div>
	<!-- ./content-header -->

	<div class="content-body">

		<div class="container-fluid">

			<div class="row">

				<div class="col-md-4"></div>
				<!-- ./col-md-4 -->

				<div class="col-md-8"></div>
				<!-- ./col-md-8 -->

			</div>
			<!-- ./row -->

		</div>
		<!-- ./container-fluid -->

	</div>
	<!-- ./content-body -->

</div>
<!-- ./:content -->

<script
	src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/pages/dashboard3.js"></script>

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