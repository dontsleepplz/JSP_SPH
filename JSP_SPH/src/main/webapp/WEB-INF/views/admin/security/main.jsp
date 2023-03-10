<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- membermain -->
<style>
div.card {
	min-height: 100%;
	max-height: 100%;
}
</style>
<div class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1 class="m-0">보안설정</h1>
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
<!-- content-header -->

<div class="content">
	<div class="container-fluid" >
		<br> <br>
		<div class="row">
			<div class="col-lg-6">

				<div class="card" style="height:80%;">
					<div class="card-header">
						<h3 class="card-title">로그인/로그아웃 설정</h3>
					</div>

					<div class="card-body">
						<form>
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<div class="form-check">
													<input class="form-check-input" type="radio" name="radio1">
													<label class="form-check-label">자동로그아웃</label>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-check">
													<input class="form-check-input" type="radio" name="radio1"
														checked=""> <label class="form-check-label">자동로그아웃X</label>
												</div>
											</div>
										</div>
										<!-- end row -->
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">

									<div class="form-group">
										<label>Select</label> <select class="form-control">
											<option>option 1</option>
											<option>option 2</option>
											<option>option 3</option>
											<option>option 4</option>
											<option>option 5</option>
										</select>
									</div>
								</div>

							</div>
							<div class="row">
								<div class="col-sm-6">

									<div class="form-group">
										<label>Select Multiple</label> <select multiple=""
											class="form-control">
											<option>option 1</option>
											<option>option 2</option>
											<option>option 3</option>
											<option>option 4</option>
											<option>option 5</option>
										</select>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<label>Select Multiple Disabled</label> <select multiple=""
											class="form-control" disabled="">
											<option>option 1</option>
											<option>option 2</option>
											<option>option 3</option>
											<option>option 4</option>
											<option>option 5</option>
										</select>
									</div>
								</div>
							</div>
						</form>
					</div>

				</div>

			</div>
			<div class="col-lg-6">
 
				<div class="card" style="height:100%;">
					<div class="card-header">
						<h3 class="card-title">비밀번호 관리</h3>
					</div>

					<div class="card-body">
						<form>
							<div class="row">
								<div class="col-lg-12">
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6">
												<div class="form-check">
													<input class="form-check-input" type="radio" name="radio1">
													<label class="form-check-label">자동로그아웃</label>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-check">
													<input class="form-check-input" type="radio" name="radio1"
														checked=""> <label class="form-check-label">자동로그아웃X</label>
												</div>
											</div>
										</div>
										<!-- end row -->
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">

									<div class="form-group">
										<label>Select</label> <select class="form-control">
											<option>option 1</option>
											<option>option 2</option>
											<option>option 3</option>
											<option>option 4</option>
											<option>option 5</option>
										</select>
									</div>
								</div>

							</div>
							<div class="row">
								<div class="col-sm-6">

									<div class="form-group">
										<label>Select Multiple</label> <select multiple=""
											class="form-control">
											<option>option 1</option>
											<option>option 2</option>
											<option>option 3</option>
											<option>option 4</option>
											<option>option 5</option>
										</select>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="form-group">
										<label>Select Multiple Disabled</label> <select multiple=""
											class="form-control" disabled="">
											<option>option 1</option>
											<option>option 2</option>
											<option>option 3</option>
											<option>option 4</option>
											<option>option 5</option>
										</select>
									</div>
								</div>
							</div>
						</form>
					</div>

				</div>

			</div>
		</div>
	</div>
</div>
<!-- content -->

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