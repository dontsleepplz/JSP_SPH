<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%
	Date nowTime = new Date();
SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일 hh:mm:ss");
%>

<c:set var="memberList" value="${dataMap.memberList }" />
<c:set var="calendarList" value="${dataMap.calendarList }" />
<c:set var="toDoList" value="${dataMap.toDoList }" />
<c:set var="noticeList" value="${dataMap.noticeList }" />
<c:set var="mailList" value="${dataMap.mailList }" />
<c:set var="elecSignList" value="${dataMap.elecSignList }" />
<c:set var="operationList" value="${dataMap.operationList }" />


<style>
#calendar {
	width: 100%;
	height: 100%;
}

a {
	color: inherit;
	text-decoration: none;
}

#calendar button {
	width: 80px;
}
</style>

<div class="content">

	<div class="container-fluid">

		<div class="col-md-12">

			<div class="row" style="padding-top: 10px;">

				<!-- 출퇴근 -->
				<div class="col-md-2">
					<div class="card" style="height: 55vh;">
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
									<p class="profile-username" style="margin: 0 auto; font-size:18px;"
										value="${member.name }">홍길동</p>
								</div>

								<div class="col-md-12 text-center">
									<p class="profile-username" style="margin: 0 auto; font-size:18px;"
										value="${member.departCode }">활빈당</p>
								</div>

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

								<div class="col-md-12">
									<div class="row" style="padding: 10px;">
										<div class="col-md-6 text-center">
											<button type="button" class="btn btn-block btn-primary">
												<a href="#">출근</a>
											</button>
										</div>
										<div class="col-md-6 text-center">
											<button type="button" class="btn btn-block btn-danger">
												<a href="#">퇴근</a>
											</button>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>

				<!-- 캘린더 -->
				<div class="col-md-5">
					<div class="card" style="height: 55vh;">
						<div id="calendar"
							class="fc fc-media-screen fc-direction-ltr fc-theme-standard">
						</div>
					</div>
				</div>

				<!-- todo -->
				<div class="col-md-5">

					<div class="card card-row card-primar" style="height: 55vh;">

						<div class="card-header"
							style="background: none; border: 1px solid gray;">
							<h3 class="card-title" style="color: black;">ToDo +</h3>
						</div>

						<div class="card-body" style="overflow:auto;">

							<c:if test="${!empty toDoList }">
								<c:forEach items="${toDoList }" var="toDo">
									<div class="card card-outline" style="margin-bottom:3px;">
										<div class="card-header">
											<div class="col-md-3 text-left">${toDoList.toDoTime }</div>
											<div class="col-md-8 text-left">${toDoList.title }</div>
											<div class="col-md-1 text-right">
												<button type="button" class="btn btn-tool"
													data-card-widget="remove">
													<i class="fas fa-times"></i>
												</button>
												<!-- 진짜 지울수 있게 해보기 -->
											</div>
										</div>
									</div>
								</c:forEach>
							</c:if>

							<c:if test="${empty toDoList }">
								<div class="card card-outline">
									<div class="card-header">
										<div class="row">
											<div class="col-md-10 text-left">해당내용이 없습니다.</div>

											<!-- 버튼예시 지워야함 -->
											<div class="col-md-2 text-right">
												<button type="button" class="btn btn-tool"
													data-card-widget="remove">
													<i class="fas fa-times"></i>
												</button>
											</div>
											<!-- 버튼예시 지워야함 -->

										</div>
									</div>
								</div>
							</c:if>

						</div>

					</div>

				</div>

			</div>
			<!-- E:row -->

		</div>
		<!-- E:col-md-12 -->

		<div class="col-md-12">
		
			<div class="row" style="padding-bottom: 10px;">

				<div class="col-md-3">

					<div class="card card-row card-primary"
						style="height: 40vh; dispiay: inlile; margin: auto; padding: auto;">

						<div class="card-header" onclick="OpenWindow('noticeGo.do');"
							style="background: none; border: 1px solid gray; cursor: pointer;">
							<h3 class="card-title" style="color: black;">공지사항 +</h3>
						</div>

						<div class="card-body" style="overflow:auto;">

							<c:if test="${!empty noticeList }">
								<c:forEach items="${noticeList }" var="notice">
									<div class="row">
										<div class="card card-outline" style="cursor: pointer; margin-bottom:3px;"
											onclick="OpenWindow('detail.do?nno={notice.nno}');">
											<div class="card-header">
												<div class="col-md-12 text-left">${noticeList.title }</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</c:if>

							<c:if test="${empty noticeList }">
								<div>
									<div class="card card-outline" style="cursor: pointer; margin-bottom:3px;">
										<div class="card-header">
											<div class="col-md-12 text-left">공지사항 입니다.</div>
										</div>
									</div>
								</div>
								<div>
									<div class="card card-outline" style="cursor: pointer; margin-bottom:3px;">
										<div class="card-header">
											<div class="col-md-12 text-left">공지사항 입니다.</div>
										</div>
									</div>
								</div>
								<div>
									<div class="card card-outline" style="cursor: pointer; margin-bottom:3px;">
										<div class="card-header">
											<div class="col-md-12 text-left">공지사항 입니다.</div>
										</div>
									</div>
								</div>
								<div>
									<div class="card card-outline" style="cursor: pointer; margin-bottom:3px;">
										<div class="card-header">
											<div class="col-md-12 text-left">공지사항 입니다.</div>
										</div>
									</div>
								</div>
								<div>
									<div class="card card-outline" style="cursor: pointer; margin-bottom:3px;">
										<div class="card-header">
											<div class="col-md-12 text-left">공지사항 입니다.</div>
										</div>
									</div>
								</div>
								<div>
									<div class="card card-outline" style="cursor: pointer; margin-bottom:3px;">
										<div class="card-header">
											<div class="col-md-12 text-left">공지사항 입니다.</div>
										</div>
									</div>
								</div>
								<div>
									<div class="card card-outline" style="cursor: pointer; margin-bottom:3px;">
										<div class="card-header">
											<div class="col-md-12 text-left">공지사항 입니다.</div>
										</div>
									</div>
								</div>
							</c:if>

						</div>
					</div>

				</div>

				<div class="col-md-3">

					<div class="card card-row card-primary"
						style="height: 40vh; dispiay: inlile; margin: auto; padding: auto;">

						<div class="card-header" onclick="OpenWindow('mailGo.do');"
							style="background: none; border: 1px solid gray; cursor: pointer;">
							<h3 class="card-title" style="color: black;">메일 +</h3>
						</div>

						<div class="card-body" style="overflow:auto;">

							<c:if test="${!empty mailList }">
								<c:forEach items="${mailList }" var="mail">
									<div class="row">
										<div class="card card-outline" style="cursor: pointer; margin-bottom:3px;"
											onclick="OpenWindow('detail.do?mnno={mail.mnno}');");">
											<div class="card-header">
												<div class="col-md-3 text-left">${mailList.writer }</div>
												<div class="col-md-9 text-left">${mailList.title }</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</c:if>

							<c:if test="${empty mailList }">
								<div>
									<div class="card card-outline">
										<div class="card-header">
											<div class="col-md-12 text-left">해당내용이 없습니다.</div>
										</div>
									</div>
								</div>
							</c:if>

						</div>
					</div>

				</div>

				<div class="col-md-3">

					<div class="card card-row card-primary"
						style="height: 40vh; dispiay: inlile; margin: auto; padding: auto;">

						<div class="card-header" onclick="OpenWindow('elecSignGo.do');"
							style="background: none; border: 1px solid gray; cursor: pointer;">
							<h3 class="card-title" style="color: black;">전자결재 +</h3>
						</div>

						<div class="card-body" style="overflow:auto;">

							<c:if test="${!empty elecSignList }">
								<c:forEach items="${elecSignList }" var="elecSign">
									<div class="row">
										<div class="card card-outline" style="cursor: pointer; margin-bottom:3px;"
											onclick="OpenWindow('detail.do?sno={elecSign.sno}');">
											<div class="card-header">
												<div class="col-md-3 text-left">${elecSignList.writer }</div>
												<div class="col-md-9 text-left">${elecSignList.title }</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</c:if>

							<c:if test="${empty elecSignList }">
								<div>
									<div class="card card-outline">
										<div class="card-header">
											<div class="col-md-12 text-left">해당내용이 없습니다.</div>
										</div>
									</div>
								</div>
							</c:if>

						</div>
					</div>

				</div>

				<div class="col-md-3">

					<div class="card card-row card-primary"
						style="height: 40vh; dispiay: inlile; margin: auto; padding: auto;">

						<div class="card-header"
							style="background: none; border: 1px solid gray;">
							<h3 class="card-title" style="color: black;">수술 +</h3>
						</div>

						<div class="card-body" style="overflow:auto;">

							<c:if test="${!empty operationList }">
								<c:forEach items="${operationList }" var="operation">
									<div class="row">
										<div class="card card-outline" style="cursor: pointer; margin-bottom:3px;"
											onclick="OpenWindow();">
											<div class="card-header">
												<div class="col-md-12 text-left">${operationList.content }</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</c:if>

							<c:if test="${empty operationList }">
								<div>
									<div class="card card-outline">
										<div class="card-header">
											<div class="col-md-12 text-left">해당내용이 없습니다.</div>
										</div>
									</div>
								</div>				
							</c:if>

						</div>
						
					</div>

				</div>

			</div>

		</div>

	</div>
	<!-- E:container-fluid -->

</div>
<!-- E:content -->

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			headerToolbar : {
				left : 'prev,next today',
				center : 'title',
				right : 'dayGridMonth,timeGridDay'
			},

			navLinks : true, // can click day/week names to navigate views
			selectable : true,
			nowIndicator : true,
			dayMaxEvents : true,
			locale : 'ko',
			selectMirror : true
			
		});
		calendar.render();
	});
	
</script>


<script>
function getTime() {
	var d = new Date(); // 현재 날짜와 시간
	var MM = d.getMonth() + 1;
	var dd = d.getDate();
	var hh = d.getHours(); // 시
	var mm = d.getMinutes(); // 분
	var ss = d.getSeconds(); // 초
	var timeBoard = document.getElementById("TimeNow"); // 값이 입력될 공간
	var time = MM + "월 " + dd + "일 " + hh + "시 " + mm + "분 " + ss + "초" // 형식 지정
	timeBoard.innerHTML = time; // 출력
	setTimeout(getTime, 1000); //1000밀리초(1초) 마다 반복
}

window.onload=function(){
	getTime();
}
</script>


<script src="<%=request.getContextPath()%>/resources/fullcal/dist/index.global.js"></script>

<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/pages/dashboard3.js"></script>
