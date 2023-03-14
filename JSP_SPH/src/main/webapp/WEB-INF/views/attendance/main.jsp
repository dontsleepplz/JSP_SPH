<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="content">

	<div class="content-header">

		<div class="container-fluid">

			<div class="row mb-2">
				<div class="col-md-2">
					<h1>근태관리</h1>
				</div>

				<div class="col-md-6">
					<div onclick="#" style="cursor: pointer; display: inline;">근태</div>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<div onclick="#" style="cursor: pointer; display: inline;">연차</div>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<div onclick="#" style="cursor: pointer; display: inline;">인사정보</div>
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

				<div class="col-md-2">
					<div class="card" style="height: 32vh;">
						<div class="card-body">

							<div class="row" style="height: 180px; margin-bottom: 10px;">
								<div class="mailbox-attachments clearfix col-md-12"
									style="text-align: center;">
									<div id="pictureView" class="manPicture"
										data-id="${member.id }"
										style="border: 1px solid green; height: 180px; width: 150px; margin: 0 auto"></div>
								</div>
							</div>

							<div class="form-group row">

								<div class="col-md-12 text-center">
									<p class="profile-username"
										style="margin: 0 auto; font-size: 18px;"
										value="${member.name }">홍길동</p>
								</div>

								<div class="col-md-12 text-center">
									<p class="profile-username"
										style="margin: 0 auto; font-size: 18px;"
										value="${member.departCode }">활빈당</p>
								</div>

							</div>

						</div>
					</div>


					<div class="card" style="height: 63vh;">
						<div class="card-body">

							<div class="col-md-12 text-center" style="padding: 10px;">
								<p class="text-center" id="TimeNow" style="margin: auto;"></p>
							</div>

							<div class="col-md-12">
								<ul class="list-group list-group-unbordered mb-12"
									style="margin: 0px;">
									<li class="list-group-item"><b>출근시간 : </b> <a
										class="float-right">#</a></li>
									<li class="list-group-item"><b>퇴근시간 : </b> <a
										class="float-right">#</a></li>
								</ul>
							</div>

						</div>
					</div>

				</div>
				<!-- ./col-md-4 -->

				<div class="col-md-10">

					<div class="card" style="height: 16vh;">
						<div class="card-body">

							<div class="col-sm-12">
								<table class="table table-bordered text-center">
									<tr>
										<th>당월 총 근무시간</th>
										<th>기본 근무시간</th>
										<th>휴일 근무일</th>
										<th>연장 근무시간</th>
										<th>지각시간</th>
									</tr>
									<c:if test="${!empty attendanceList }">
										<c:forEach items="${attendanceList }" var="off">
											<tr>
												<%-- <td >${attendance. }</td>
												<td >${attendance. }</td>
												<td >${attendance. }</td>
												<td >${attendance. }</td>
												<td >${attendance. }</td> --%>
											</tr>
										</c:forEach>
									</c:if>

									<c:if test="${empty attendanceList }">
										<tr>
											<td colspan="7" class="text-center">해당내용이 없습니다.</td>
										</tr>
									</c:if>
								</table>
							</div>

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

<script>
	function getTime() {
		var d = new Date(); // 현재 날짜와 시간
		var MM = d.getMonth() + 1;
		var dd = d.getDate();
		var hh = d.getHours(); // 시
		var mm = d.getMinutes(); // 분
		var ss = d.getSeconds(); // 초
		var timeBoard = document.getElementById("TimeNow"); // 값이 입력될 공간
		var time = MM + "월 " + dd + "일 " +"/n"+ hh + "시 " + mm + "분 " + ss + "초" // 형식 지정
		timeBoard.innerHTML = time; // 출력
		setTimeout(getTime, 1000); //1000밀리초(1초) 마다 반복
	}
</script>
