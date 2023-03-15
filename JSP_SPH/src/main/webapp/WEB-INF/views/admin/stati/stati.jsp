<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/plugins/daterangepicker/daterangepicker.css">

<style>
a {
	color: inherit;
	text-decoration: none;
}
</style>

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

				<div class="col-md-8 text-left">
					<div class="row" style="padding: 10px;">
						<div class="col-md-3 text-center">
							<button type="button" class="btn btn-block btn-outline-secondary"
								onload="preStati_go()">Previous</button>
						</div>
						<div class="col-md-3 text-center">
							<button type="button" class="btn btn-block btn-outline-secondary"
								onload="nextStati_go()">Next</button>
						</div>
					</div>
				</div>

				<div class="col-md-2">
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
									<div class="search-path"></div>
								</a>
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

				<div class="col-md-4" id="accordion">


					<div class="card card-danger">

						<div class="card-header">
							<a class="d-block w-100" data-toggle="collapse"
								href="#collapseOne">
								<h4 class="card-title w-100">
									<i class="far fa-chart-bar"></i> 환 자
								</h4>
							</a>
						</div>

						<div id="collapseOne" class="collapse show"
							data-parent="#accordion">
							<div class="card-body">
								<div class="chartjs-size-monitor">
									<div class="chartjs-size-monitor-expand">
										<div class=""></div>
									</div>
									<div class="chartjs-size-monitor-shrink">
										<div class=""></div>
									</div>
								</div>
								<canvas id="donutChartPa"
									style="min-height: 500px; height: 500px; max-height: 500px; max-width: 100%; display: block; width: 764px;"
									width="764" height="500" class="chartjs-render-monitor chart1"></canvas>
							</div>
						</div>

					</div>

					<div class="card card-info">

						<div class="card-header">
							<a class="d-block w-100" data-toggle="collapse"
								href="#collapseTwo">
								<h4 class="card-title w-100">
									<i class="far fa-chart-bar"></i> 입 원
								</h4>
							</a>
						</div>

						<div id="collapseTwo" class="collapse" data-parent="#accordion">
							<div class="card-body">
								<div class="chartjs-size-monitor">
									<div class="chartjs-size-monitor-expand">
										<div class=""></div>
									</div>
									<div class="chartjs-size-monitor-shrink">
										<div class=""></div>
									</div>
								</div>
								<canvas id="donutChartAd"
									style="min-height: 500px; height: 500px; max-height: 500px; max-width: 100%; display: block; width: 764px;"
									width="764" height="500" class="chartjs-render-monitor chart2"></canvas>
							</div>
						</div>

					</div>

					<div class="card card-success">

						<div class="card-header">
							<a class="d-block w-100" data-toggle="collapse"
								href="#collapseThree">
								<h4 class="card-title w-100">
									<i class="far fa-chart-bar"></i> 매 출
								</h4>
							</a>
						</div>

						<div id="collapseThree" class="collapse" data-parent="#accordion">
							<div class="card-body">
								<div class="chartjs-size-monitor">
									<div class="chartjs-size-monitor-expand">
										<div class=""></div>
									</div>
									<div class="chartjs-size-monitor-shrink">
										<div class=""></div>
									</div>
								</div>
								<canvas id="donutChartSa"
									style="min-height: 500px; height: 500px; max-height: 500px; max-width: 100%; display: block; width: 764px;"
									width="764" height="500" class="chartjs-render-monitor chart3"></canvas>
							</div>
						</div>

					</div>

				</div>
				<!-- ./col-md-4 -->

				<div class="col-md-8">
					<div class="card" style="height: 85vh;">
						<div class="card-body">

							<h1> 예정 : 차트 디테일 </h1>
							
						</div>
					</div>
				</div>
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
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/chart.js/Chart.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/daterangepicker/daterangepicker.js"></script>

<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>

<script>
	$(function() {
		//-------------
		//- DONUT CHART -
		//-------------
		// Get context with jQuery - using jQuery's .get() method.
		var donutChartCanvas = $('#donutChartPa').get(0).getContext('2d')

		var donutData = {
			labels : [ 'Chrome', 'IE', 'FireFox', 'Safari', 'Opera',
					'Navigator', ],
			datasets : [ {
				data : [ 700, 500, 400, 600, 300, 100 ],
				backgroundColor : [ '#f56954', '#00a65a', '#f39c12', '#00c0ef',
						'#3c8dbc', '#d2d6de' ],
			} ]
		}
		var donutOptions = {
			maintainAspectRatio : false,
			responsive : true,
		}
		//Create pie or douhnut chart
		// You can switch between pie and douhnut using the method below.
		new Chart(donutChartCanvas, {
			type : 'doughnut',
			data : donutData,
			options : donutOptions
		})

	});
</script>

<script>
	$(function() {
		//-------------
		//- DONUT CHART -
		//-------------
		// Get context with jQuery - using jQuery's .get() method.
		var donutChartCanvas = $('#donutChartAd').get(0).getContext('2d')

		var donutData = {
			labels : [ 'Chrome', 'IE', 'FireFox', 'Safari', 'Opera',
					'Navigator', ],
			datasets : [ {
				data : [ 700, 500, 400, 600, 300, 100 ],
				backgroundColor : [ '#f56954', '#00a65a', '#f39c12', '#00c0ef',
						'#3c8dbc', '#d2d6de' ],
			} ]
		}
		var donutOptions = {
			maintainAspectRatio : false,
			responsive : true,
		}
		//Create pie or douhnut chart
		// You can switch between pie and douhnut using the method below.
		new Chart(donutChartCanvas, {
			type : 'doughnut',
			data : donutData,
			options : donutOptions
		})

	});
</script>

<script>
	$(function() {
		//-------------
		//- DONUT CHART -
		//-------------
		// Get context with jQuery - using jQuery's .get() method.
		var donutChartCanvas = $('#donutChartSa').get(0).getContext('2d')

		var donutData = {
			labels : [ 'Chrome', 'IE', 'FireFox', 'Safari', 'Opera',
					'Navigator', ],
			datasets : [ {
				data : [ 700, 500, 400, 600, 300, 100 ],
				backgroundColor : [ '#f56954', '#00a65a', '#f39c12', '#00c0ef',
						'#3c8dbc', '#d2d6de' ],
			} ]
		}
		var donutOptions = {
			maintainAspectRatio : false,
			responsive : true,
		}
		//Create pie or douhnut chart
		// You can switch between pie and douhnut using the method below.
		new Chart(donutChartCanvas, {
			type : 'doughnut',
			data : donutData,
			options : donutOptions
		})

	});
</script>