<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- S:iframe -->
<!-- membermain -->
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
			<div class="col-lg-6">

				<div class="card">
					<div class="card-header border-0">
						<h3 class="card-title">사원 목록</h3>
						<div class="card-tools">
							<a href="#" class="btn btn-tool btn-sm"> <i
								class="fas fa-download"></i>
							</a> <a href="#" class="btn btn-tool btn-sm"> <i
								class="fas fa-bars"></i>
							</a>
						</div>
					</div>
					<div class="card-body table-responsive p-0">
						<table class="table table-striped table-valign-middle">
							<thead>
								<tr>

									<th>사원번호</th>
									<th>부서</th>
									<th>아이디</th>
									<th>연락처</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${memberList}" var="member">
									<tr>
										<td>${member.MNO }</td>
										<td>${member.depart }</td>
										<td>${member.id }</td>
										<td>${member.phone }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>

			</div>







			<div class="col-lg-6">
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

				<div class="card">
					<div class="card-header border-0">
						<h3 class="card-title">Online Store Overview</h3>
						<div class="card-tools">
							<a href="#" class="btn btn-sm btn-tool"> <i
								class="fas fa-download"></i>
							</a> <a href="#" class="btn btn-sm btn-tool"> <i
								class="fas fa-bars"></i>
							</a>
						</div>
					</div>
					<div class="card-body">
						<div
							class="d-flex justify-content-between align-items-center border-bottom mb-3">
							<p class="text-success text-xl">
								<i class="ion ion-ios-refresh-empty"></i>
							</p>
							<p class="d-flex flex-column text-right">
								<span class="font-weight-bold"> <i
									class="ion ion-android-arrow-up text-success"></i> 12%
								</span> <span class="text-muted">CONVERSION RATE</span>
							</p>
						</div>

						<div
							class="d-flex justify-content-between align-items-center border-bottom mb-3">
							<p class="text-warning text-xl">
								<i class="ion ion-ios-cart-outline"></i>
							</p>
							<p class="d-flex flex-column text-right">
								<span class="font-weight-bold"> <i
									class="ion ion-android-arrow-up text-warning"></i> 0.8%
								</span> <span class="text-muted">SALES RATE</span>
							</p>
						</div>

						<div
							class="d-flex justify-content-between align-items-center mb-0">
							<p class="text-danger text-xl">
								<i class="ion ion-ios-people-outline"></i>
							</p>
							<p class="d-flex flex-column text-right">
								<span class="font-weight-bold"> <i
									class="ion ion-android-arrow-down text-danger"></i> 1%
								</span> <span class="text-muted">REGISTRATION RATE</span>
							</p>
						</div>

					</div>
				</div>
			</div>

		</div>


		<div class="row">
			<div class="col-12">

				<div class="card">
					<div class="card-header">
						<h3 class="card-title">
							<i class="far fa-chart-bar"></i> jQuery Knob
						</h3>
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

					<div class="card-body">
						<div class="row">
							<div class="col-6 col-md-3 text-center">
								<div style="display: inline; width: 90px; height: 90px;">
									<canvas width="135" height="135"
										style="width: 90px; height: 90px;"></canvas>
									<input type="text" class="knob" value="30" data-width="90"
										data-height="90" data-fgcolor="#3c8dbc"
										style="width: 49px; height: 30px; position: absolute; vertical-align: middle; margin-top: 30px; margin-left: -69px; border: 0px; background: none; font: bold 18px Arial; text-align: center; color: rgb(60, 141, 188); padding: 0px; appearance: none;">
								</div>
								<div class="knob-label">New Visitors</div>
							</div>

							<div class="col-6 col-md-3 text-center">
								<div style="display: inline; width: 90px; height: 90px;">
									<canvas width="135" height="135"
										style="width: 90px; height: 90px;"></canvas>
									<input type="text" class="knob" value="70" data-width="90"
										data-height="90" data-fgcolor="#f56954"
										style="width: 49px; height: 30px; position: absolute; vertical-align: middle; margin-top: 30px; margin-left: -69px; border: 0px; background: none; font: bold 18px Arial; text-align: center; color: rgb(245, 105, 84); padding: 0px; appearance: none;">
								</div>
								<div class="knob-label">Bounce Rate</div>
							</div>





						</div>
						<div class="col-md-6">
							<div class="row">

								<div class="col-6 text-center">
									<div style="display: inline; width: 90px; height: 90px;">
										<canvas width="135" height="135"
											style="width: 90px; height: 90px;"></canvas>
										<input type="text" class="knob" value="50" data-width="90"
											data-height="90" data-fgcolor="#39CCCC"
											style="width: 49px; height: 30px; position: absolute; vertical-align: middle; margin-top: 30px; margin-left: -69px; border: 0px; background: none; font: bold 18px Arial; text-align: center; color: rgb(57, 204, 204); padding: 0px; appearance: none;">
									</div>
									<div class="knob-label">CPU</div>
								</div>

							</div>
						</div>
					</div>

				</div>

			</div>

		</div>


	</div>

</div>


<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/chart.js/Chart.min.js"></script>

<script>
window.onload=function(){
  $(function () {
    /* ChartJS
     * -------
     * Here we will create a few charts using ChartJS
     */
    //-------------
    //- DONUT CHART -
    //-------------
    // Get context with jQuery - using jQuery's .get() method.
    var donutChartCanvas = $('#donutChart').get(0).getContext('2d')
    var donutData        = {
      labels: [
          'Chrome',
          'IE',
          'FireFox',
          'Safari',
          'Opera',
          'Navigator',
      ],
      datasets: [
        {
          data: [700,500,400,600,300,100],
          backgroundColor : ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de'],
        }
      ]
    }
    var donutOptions     = {
      maintainAspectRatio : false,
      responsive : true,
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    new Chart(donutChartCanvas, {
      type: 'doughnut',
      data: donutData,
      options: donutOptions
    })
  })
}
</script>

<!-- S:footer -->
<!-- E:content-wrapper -->
