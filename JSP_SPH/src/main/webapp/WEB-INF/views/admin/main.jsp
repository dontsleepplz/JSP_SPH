<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- adminmain -->
<div class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1 class="m-0">Example chart</h1>
			</div>
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item active">어드민메인</li>
				</ol>
			</div>
		</div>
	</div>
</div>

<div class="content">
	<div class="container-fluid">

		<div class="row">
			<div class="col-lg-5">

				<div class="invoice p-3 mb-3" style="height: 80%;">

					<div class="row">
						<div class="col-12">
							<h4>
								<i class="fas fa-globe"></i> 시스템 정보
							</h4>
						</div>
					</div>

					<div class="row invoice-info">
						<div class="col-sm-6 invoice-col">
							<address>
								<br> <strong>도메인 명 : </strong> sph<br> <br> <strong>총
									계정 수 : </strong> 전체 계정 수<br> <br> <strong>활동 계정 수 : </strong>
								state가 0인 계정 수<br> <br> <strong>도입 일자 : </strong>
								2023-03-13(월) 16:07<br> <br> <strong>현재 사용자 :
								</strong> 로그인유저<br>
							</address>
						</div>

						<div class="col-sm-6 invoice-col">
							To
							<address>
								<br> <strong> : </strong> sph<br> <br> <strong>총
									계정 수 : </strong> 전체 계정 수<br> <br> <strong>활동 계정 수 : </strong>
								state가 0인 계정 수<br> <br> <strong>도입 일자 : </strong>
								2023-03-13(월) 16:07<br> <br> <strong>현재 사용자 :
								</strong> 로그인유저<br>
							</address>
						</div>



					</div>

				</div>

			</div>

			<div class="col-lg-5">

				<div class="card" style="height: 80%;">
					<div class="card-header">
						<h3 class="card-title">접속 로그</h3>
						<div class="card-tools">
							<div class="input-group input-group-sm">
								<input type="text" name="table_search"
									class="form-control float-right" placeholder="Search"
									style="width: 110px;">
								<div class="input-group-append">
									<button type="submit" class="btn btn-default">
										<i class="fas fa-search"></i>
									</button>
								</div>
							</div>
						</div>
					</div>

					<div class="card-body p-0"
						style="height: 550px; overflow-y: scroll; text-align: center;">
						<table class="table table-head-fixed text-nowrap table-hover">

							<thead>
								<tr>
									<th>ID</th>
									<th>User</th>
									<th>Date</th>
									<th>Status</th>
									<th>Reason</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>183</td>
									<td>John Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>

								<tr>
									<td>219</td>
									<td>Alexander</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-warning">Pending</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>657</td>
									<td>Bob Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-primary">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>175</td>
									<td>Mike Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-danger">Denied</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>134</td>
									<td>Jim Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-success">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>494</td>
									<td>Victoria Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-warning">Pending</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>832</td>
									<td>Michael Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-primary">Approved</span></td>
									<td>doner.</td>
								</tr>
								<tr>
									<td>982</td>
									<td>Rocky Doe</td>
									<td>11-7-2014</td>
									<td><span class="tag tag-danger">Denied</span></td>
									<td>doner.</td>
								</tr>
							</tbody>

						</table>
					</div>
				</div>
			</div>





			<div class="col-lg-2">
				<div class="card card-danger">
					<div class="card-header">
						<h3 class="card-title">Donut Chart</h3>
						<div class="card-tools">
							<button type="button" class="btn btn-tool"
								data-card-widget="collapse">
								<i class="fas fa-minus"></i>
							</button>
							<button type="button" class="btn btn-tool"
								data-card-widget="remove">
								<i class="fas fa-times"></i>
							</button>
						</div>
					</div>
					<div class="card-body" style="display: block;">
						<div class="chartjs-size-monitor">
							<div class="chartjs-size-monitor-expand">
								<div class=""></div>
							</div>
							<div class="chartjs-size-monitor-shrink">
								<div class=""></div>
							</div>
						</div>
						<canvas id="donutChart"
							style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%; display: block; width: 484px;"
							width="605" height="312" class="chartjs-render-monitor"></canvas>
					</div>

				</div>

				<div class="card card-danger collapsed-card">
					<div class="card-header">
						<h3 class="card-title">Donut Chart</h3>
						<div class="card-tools">
							<button type="button" class="btn btn-tool" data-card-widget="collapse">
								<i class="fas fa-plus"></i>
							</button>
							<button type="button" class="btn btn-tool" data-card-widget="remove">
								<i class="fas fa-times"></i>
							</button>
						</div>
					</div>
					<div class="card-body" style="display: none;">
						<div class="chartjs-size-monitor">
							<div class="chartjs-size-monitor-expand">
								<div class=""></div>
							</div>
							<div class="chartjs-size-monitor-shrink">
								<div class=""></div>
							</div>
						</div>
						<canvas id="donutChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%; display: block; width: 484px;" width="605" height="312" class="chartjs-render-monitor"></canvas>
					</div>

				</div>
			</div>

		</div>





	</div>

</div>


<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/chart.js/Chart.min.js"></script>

<script>
	window.onload = function() {
		$(function() {
			/* ChartJS
			 * -------
			 * Here we will create a few charts using ChartJS
			 */
			//-------------
			//- DONUT CHART -
			//-------------
			// Get context with jQuery - using jQuery's .get() method.
			var donutChartCanvas = $('#donutChart').get(0).getContext('2d')
			var donutData = {
				labels : [ 'Chrome', 'IE', 'FireFox', 'Safari', 'Opera',
						'Navigator', ],
				datasets : [ {
					data : [ 700, 500, 400, 600, 300, 100 ],
					backgroundColor : [ '#f56954', '#00a65a', '#f39c12',
							'#00c0ef', '#3c8dbc', '#d2d6de' ],
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
		})
	}
</script>

<!-- S:footer -->
<!-- E:content-wrapper -->
