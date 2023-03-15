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
<head></head>
<style>
#calendar {
	margin: 0;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
	max-width: 100%;
	max-height: 500px;
	
}
#calendar button {
   width: 80px;
}
</style>

			<!-- S:iframe -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">Calendar</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Calendar</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-3">
							<div class="sticky-top mb-3">
								<div class="card">
									<div class="card-header">
										<h4 class="card-title">일정</h4>
									</div>
									<div class="card-body" >

										<div id="external-events">
											<div
												class="external-event bg-success ui-draggable ui-draggable-handle"
												style="position: relative; z-index: auto; left: 0px; top: 0px;">업무</div>
											<div
												class="external-event bg-warning ui-draggable ui-draggable-handle"
												style="position: relative;">일정</div>
											<div
												class="external-event bg-info ui-draggable ui-draggable-handle"
												style="position: relative;">학회</div>
											<div
												class="external-event bg-primary ui-draggable ui-draggable-handle"
												style="position: relative;">회의</div>
											<div
												class="external-event bg-danger ui-draggable ui-draggable-handle"
												style="position: relative;">수술</div>
											<div class="checkbox">
												<label for="drop-remove"> <input type="checkbox"
													id="drop-remove"> remove after drop
												</label>
											</div>
										</div>
									</div>

								</div>

								<div class="card">
									<div class="card-header">
										<h3 class="card-title">일정 추가</h3>
									</div>
									<div class="card-body">
										<div class="btn-group"
											style="width: 100%; margin-bottom: 10px;">
											<ul class="fc-color-picker" id="color-chooser">
												<li><a class="text-primary" href="#"><i
														class="fas fa-square"></i></a></li>
												<li><a class="text-warning" href="#"><i
														class="fas fa-square"></i></a></li>
												<li><a class="text-success" href="#"><i
														class="fas fa-square"></i></a></li>
												<li><a class="text-danger" href="#"><i
														class="fas fa-square"></i></a></li>
												<li><a class="text-muted" href="#"><i
														class="fas fa-square"></i></a></li>
											</ul>
										</div>

										<div class="input-group">
											<input id="new-event" type="text" class="form-control"
												placeholder="Event Title">
											<div class="input-group-append">
												<button id="add-new-event" type="button"
													class="btn btn-primary">Add</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-9">
							<div class="card" style="max-width: 100%; max-height: 100%;">
								<div id="calendar"
									class="fc fc-media-screen fc-direction-ltr fc-theme-standard">
								</div>
							</div>
						</div>
						<!--calendar card  -->
					</div>
					<!-- end row  -->
					<!-- modal 추가 -->
					<div class="modal fade" id="calendarRegist" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">일정을 입력하세요.</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<div class="form-group">
										<label for="taskId" class="col-form-label">일정 내용</label> <input
											type="text" class="form-control" id="calendar_content"
											name="calendar_content"> <label for="taskId"
											class="col-form-label">시작 날짜</label> <input type="date"
											class="form-control" id="reservation"
											name="calendar_start_date"> <label for="taskId"
											class="col-form-label">종료 날짜</label> <input type="date"
											class="form-control" id="calendar_end_date"
											name="calendar_end_date">
									</div>
								</div>

								<div class="modal-footer">
									<button type="button" class="btn btn-warning" id="addCalendar">추가</button>
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal" id="sprintSettingModalClose">취소</button>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>

			<!--content  -->
		


	<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/pages/dashboard3.js"></script>

	<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/chart.js/Chart.min.js"></script>

	<script src="<%=request.getContextPath()%>/resources/fullcal/dist/index.global.js"></script>

	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="http://code.jquery.com/ui/1.8.17/jquery-ui.min.js"></script>

</body>

<script>
   document.addEventListener('DOMContentLoaded', function() {
       var calendarEl = document.getElementById('calendar');

       var calendar = new FullCalendar.Calendar(calendarEl, {
           headerToolbar : {
               left : 'prev,next today addEventButton',
               center : 'title',
               right : 'dayGridMonth,timeGridWeek,timeGridDay'
           },

           navLinks : true, // can click day/week names to navigate views
           selectable : true,
           nowIndicator : true,
           dayMaxEvents : true,
           locale : 'ko',
           selectMirror : true,
           select : function(arg) {
               var title = prompt('Event Title:');
               if (title) {
                   calendar.addEvent({
                       title : title,
                       start : arg.start,
                       end : arg.end,
                       allDay : arg.allDay
                   })
               }
               calendar.unselect()
           },
           eventClick : function(arg) {
               if (confirm('일정을 삭제하시겠습니까?')) {
                   arg.event.remove()
               }
           },
           editable : true,
           dayMaxEvents : true, // allow "more" link when too many events
           events : [ {
               title:'일정',
               start:'2023-03-26 00:00:00',
               end:'2023-03-27 24:00:00' 

           },],
           
           customButtons: {
               addEventButton: { // 추가한 버튼 설정
                   text : "일정 추가",  // 버튼 내용
                   click : function(){ // 버튼 클릭 시 이벤트 추가
                       
                        function OpenWindow(UrlStr, WinTitle, WinWidth, WinHeight) {
                            winleft = (screen.width - WinWidth) / 2;
                            wintop = (screen.height - WinHeight) / 2;
                            var win = window.open(UrlStr , WinTitle , "scrollbars=yes,width="+ WinWidth
                                                    +",height="+ WinHeight +", top="+ wintop +", left=" 
                                                    + winleft +", resizable=yes, status=yes"  );
                            win.focus() ; 
                        }
                        OpenWindow('<%=request.getContextPath()%>/calender/regist',
																'calendarRegist',
																700, 800);
													}
												}
											}
										});
								calendar.render();
							});
		</script>


