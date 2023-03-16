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
				<h1 class="m-0">보고 홈</h1>
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
		<div class="row"></div>

		<div class="card">
			<div class="card-header"><h1 style="font-size:1.5rem">정기 보고</h1> </div>
			<!-- foreach -->
			<div class="card-body">
				<div class="row">
					<div class="col-sm-2">
						<div class="card card-row card-primary"
							style="height: 20vh; dispiay: inlile; margin: auto; padding: auto;">
							<div class="card-body">
								<div class="row">2023/03/16</div>
								<div class="row">제목</div>
								<div class="row">부서</div>
								<div class="row">보고 현황</div>
							</div>
							<div class="card-footer">
								<div class="row">
									<div class="col-sm-4"></div>
									<div class="col-sm-8">버튼위치</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="row"></div>

		<div class="card">
			<div class="card-header"><h1 style="font-size:1.5rem">수시 보고</h1></div>
			<!-- foreach -->
			<div class="card-body">
				<div class="row">
					<div class="col-sm-2">
						<div class="card card-row card-primary"
							style="height: 20vh; dispiay: inlile; margin: auto; padding: auto;">
							<div class="card-body">
								<div class="row">2023/03/16</div>
								<div class="row">제목</div>
								<div class="row">부서</div>
								<div class="row">보고 현황</div>
							</div>
							<div class="card-footer">
								<div class="row">
									<div class="col-sm-4"></div>
									<div class="col-sm-8">버튼위치</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>

		</div>


	</div>

</div>


<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/chart.js/Chart.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/datatables/jquery.dataTables.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jszip/jszip.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/pdfmake/pdfmake.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/pdfmake/vfs_fonts.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>

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