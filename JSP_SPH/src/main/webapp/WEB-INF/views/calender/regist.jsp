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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>


<style type="text/css">

	#table, th, td, input, textarea {border: solid #a0a0a0 1px;}
   
   #table {border-collapse: collapse;
          width: 500px;
          }
   #table th, #table td{padding: 5px;}
   #table th{ 
         background-color: #6F808A; 
         color: white;
   }
       /* 주소록 CSS 시작 */
      .content_layout_address {
         width: 500px;
         background-color:#fff;
   
   }
   
   .nav_layer{
         width:100%;
         height: 25px;
         display: block;
         float: left;
   }
   
   .tab_nav li {
       float: left;
       margin: 0 0 -1px 24px;
       padding: 0;
       cursor: pointer;
       height: 40px;
       line-height: 40px;
       font-size: 13px;
       color: #999;   
       
         list-style-type: none;      
   }
   
   .tab_nav li:first-child {
         margin: 0;
   }
   
   .ul_state_active {
   
          border-bottom: 1px solid #000;
   } 
   
   .tab_wrap {
         width: 550px;
         display: inline-block;
   }
   .tree, .tree ul {
       margin:0;
       padding:0;
       list-style:none
   }
   .tree ul {
       margin-left:1em;
       position:relative
   }
   .tree ul ul {
       margin-left:.5em
   }
   .tree ul:before {
       content:"";
       display:block;
       width:0;
       position:absolute;
       top:0;
       bottom:0;
       left:0;
       border-left:1px solid
   }
   .tree li {
       margin:0;
       padding:0 1em;
       line-height:2em;
       color:#369;
       font-weight:700;
       position:relative
   }
   .tree ul li:before {
       content:"";
       display:block;
       width:10px;
       height:0;
       border-top:1px solid;
       margin-top:-1px;
       position:absolute;
       top:1em;
       left:0
   }
   .tree ul li:last-child:before {
       background:#fff;
       height:auto;
       top:1em;
       bottom:0
   }
   .indicator {
       margin-right:5px;
   }
   .tree li a {
       text-decoration: none;
       color:#369;
   }
   .tree li button, .tree li button:active, .tree li button:focus {
       text-decoration: none;
       color:#369;
       border:none;
       background:transparent;
       margin:0px 0px 0px 0px;
       padding:0px 0px 0px 0px;
       outline: 0;
   }   
   .father {
         display: flex;
   }
   .search {
         width: 338px;
         border-radius: 3px;
         border: 2px solid #adb5bd;
   }
   .emp_search {
         margin-bottom: 0; 
   }
   .search, .btnSearch {
         height: 32px;   
   } 
   span.btn_bg {
        position: relative;
       cursor: pointer;
       padding: 4px 4px 6px;
       background-color: #fff;
       border: 1px solid #ddd;
       text-align: left;
       margin-bottom: 10px;
   }
   .addArea {
         margin-top: 147px;
   }
   .addList, li {
         list-style-type: none;
   }
   div.receive_wrap div.receive_list ul {
       border: 1px solid #666;
       height: 105px;
       overflow-x: hidden;
       background: #f9f9f9;
       padding: 0 4px;
   } 
   div.receive_wrap div.receive_list {
       display: inline-block;
       margin: 10px 0 0 0;
       width: 270px;
       height: 135px;
   }
      /* 주소록 CSS 끝 */
	
	.titleBox{
		background-color: white;
		padding: 15px;
	}
	
	.titleBox h2{
		margin: 0;
		font-weight: bold;
		color: #6a6a69;
	}
	
	.container{
		background-color: white;
		margin: 0 auto;
		margin-top: 2%;
		width: 50%;
	}
	
	
	.table-borderless > tbody > tr > td,
	.table-borderless > tbody > tr > th,
	.table-borderless > tfoot > tr > td,
	.table-borderless > tfoot > tr > th,
	.table-borderless > thead > tr > td,
	.table-borderless > thead > tr > th {
	    border: none;
	}
	
	.chip {
	  display: inline-block;
	  padding: 0 20px;
	  padding-top: 0.4%;
	  height: 25px;
	  font-size: 12px;
	  border-radius: 25px;
	  background-color: #f1f1f1;
	}
	
	.choiceAtd{
		cursor: pointer;
	}
	
	.blueBtn{
		border-radius: 4px;
		background-color: #0F4C81;
		color: white;
	}
	
	.grayBtn{
		border-radius: 4px;
		background-color: #D8D8D8;
		color: gray;
	}
	
	.redBtn{
		border-radius: 4px;
		background-color: #d53641;
		color: white;
	}

</style>


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
									<label>Date and time range:</label>
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"><i class="far fa-clock"></i></span>
										</div>
										<input type="text" name="daterange"
											class="form-control float-right" id="reservationtime">
									</div>

								</div>

								<label>참석자</label>
								<div class="atandee_td">
									<a data-toggle="modal" data-target="#findEmpListModal"
										style="cursor: pointer;"><i class="fa fa-plus"
										style="padding: 0 10px;"> 참석자 선택</i></a>
								</div>

							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<label>내용</label>
									<textarea class="form-control" rows="3" placeholder="내용을 입력하세요"></textarea>
								</div>
							</div>


						</div>


					</div>
					<%-- 주소록 모달 --%>
					<!-- Modal -->
					<div id="findEmpListModal" class="modal fade" role="dialog"
						data-keyboard="false" data-backdrop="static">
						<div class="modal-dialog" style="width: 500px;">
							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header" style="height: 60px;">
									<button type="button" class="close" data-dismiss="modal" onclick="window.closeModal()">
										<span style="font-size: 26pt;">&times;</span>
									</button>
									<h3 class="modal-title" style="font-weight: bold">주소록</h3>
								</div>
								<div class="modal-body">
									<div id="memberList" style="border: none; width: 100%; height: 100%;">
										<div class="member_Popup" style="overflow-x: hidden;">
											<div class="content">
												<div class="content_layout_address" style="margin-left: 60px;">
												<!-- 	<div id="tabArea" style="margin-left: -40px;">
														<ul class="tab_nav nav_layer" style="margin-bottom: 22px;">
																								
									                        <li value="user">
									                           <a>개인 주소록</a>
									                        </li>
									                        <li value="company">
									                           <a>공용 주소록</a>
									                        </li>
									                        <li value="org">
									                           <a>조직도</a>
									                        </li>
									                        
														</ul>
													</div> -->

													<div class="tabWrap father"
														style="margin-left: -1px; height: 200px;">
														<!-- border: solid 5px yellow;"> -->
														<div class="father" style="border: solid 1px #999; overflow-y: auto;">
															<%-- 조직도 시작--%>
															<div class="container" style="padding-top: 10px; width: 200px; border-right: solid 1px #999;">
																<div class="row box" style="width: 200px;">
																	<div class="col-md-6">
																		<ul id="tree1">
																			<li style="width: 130px;"><a href="#">SPH</a>
																				<ul>
																					<li class="orgName" style="width: 120px;" value="1">마취과</li>
																					<li class="orgName" value="2">신경외과</li>
																					<li class="orgName" value="3">내과</li>
																					<li class="orgName" value="4">정신과</li>
																					<li class="orgName" value="5">소아과</li>
																					<li class="orgName" value="6">흉부외과</li>
																					<li class="orgName" value="7">신경외과</li>

																				</ul>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
															<%-- 조직도 끝--%>

															<%-- 사원리스트 시작--%>
															<div class="content_list box">
																<div class="search_wrap">
																	<form class="member_search">
																		<input type="hidden"> <input id="searchWord" class="search" type="text" placeholder="이름,부서">
																		<button type="button" id="btnMemSearchOk" class="btn btn-primary btnSearch"
																			style="background-color: #00a1b9; border: solid 1px #00a1b9; border-radius: 3px; color: white;">검색</button>
																	</form>
																</div>
																<div class="scroll_wrap" style="height: 360px;">
																	<table style="width: 396px; height: 366px; border: 0px; overflow-y: auto;">
																		<thead style="padding: 0;">
																			<tr style="text-align: left; background: #efefef; font-weight: normal;">
																				<th style="padding-left: 2px;">
																					<input type="checkbox" name="checkAll" id="checkAll">
																				</th>
																				<th style="padding-left: 2px;">이름</th>
																				<th style="padding-left: 2px;">부서</th>
																				<th style="padding-left: 2px;">일정</th>
																			</tr>
																		</thead>

																		<tbody style="height: 300px;" id="empListTbody">
																			<%-- <c:forEach var="member" items="${memberList}" varStatus="status"> --%>
																				<tr style="height: 20px;" id="memberRow" class="${status.index}">
																					<td style="width: 40px; height: 10px; padding-left: 2px;">
																						<input type="checkbox" name="chkbox" class="check${status.index}">
																					</td>
																					<td style="width: 80px; height: 10px; padding-left: 2px;" id="member_name">멤버 아이디</td>
																					<td style="width: 50px; height: 10px; padding-left: 2px;" id="department_name">부서명</td>
																					<td style="width: 80px; height: 10px; padding-left: 2px;" id="calendar_name">일정명</td>
																				</tr>
																			<%-- </c:forEach> --%>
																		</tbody>
																	</table>
																</div>

															</div>
															<%-- 사원리스트 끝--%>

														</div>

														<%-- 추가 시작--%>
														<div class="addArea">
															<div>
																<div class="move_wrap">
																	<ul class="addListGroup" style="padding-left: 10px;">
																		<li class="addList"><span class="btn_bg addUser" style="display: inline-block; width: 50px; font-size: 10pt;">
																				사용자 </span></li>
																	</ul>
																</div>
															</div>
														</div>
														<%-- 추가 끝--%>

														<%-- 받는 사람 시작--%>
														<div class="receive_wrap" style="margin-left: 10px; margin-top: 80px;">
															<div id="mailReceive" class="receive_list">
																<span class="title">받는사람</span>
																<ul id="empAddListGroup">
																	<!-- 비어있는 li 네개 지우면 안됨 -->
																	<li class="empAddLists" value="1"></li>
																	<li class="empAddLists"></li>
																	<li class="empAddLists"></li>
																	<li class="empAddLists"></li>
																</ul>
															</div>
														</div>
														<%-- 받는 사람 끝--%>

													</div>

												</div>
											</div>
										</div>
										<%-- findEmpList.jsp --%>
									</div>
								</div>
								<%-- modal-body 끝 --%>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary"
										style="background-color: #00a1b9; border-color: #00a1b9;"
										onclick="findEmpOk()">확인</button>
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal"
										onclick="window.closeModal()">취소</button>
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
<script>
//전체 모달 닫기(전역함수인듯)
window.closeModal = function(){
    $('.modal').modal('hide');

};

$(document).ready(function() {

	addSch();	// 내 캘린더 불러오기
	
	// 모달창에서 사용자가 입력했던 정보들을 받아서 넣어줌
	$("input[name=startday]").val("${startday}");
	$("input[name=endday]").val("${endday}");
	
	
       
      $(".tab_nav li").click(function(event){
         
         
         $(this).addClass("ul_state_active");
         $(".tab_nav li").not($(this)).removeClass("ul_state_active");
         
         
      });
      
      $.fn.extend({
             treed: function (o) {
               
               var openedClass = 'glyphicon-minus-sign';
               var closedClass = 'glyphicon-plus-sign';
               
               if (typeof o != 'undefined'){
                 if (typeof o.openedClass != 'undefined'){
                 openedClass = o.openedClass;
                 }
                 if (typeof o.closedClass != 'undefined'){
                 closedClass = o.closedClass;
                 }
               };
               
                 var tree = $(this);
                 tree.addClass("tree");
                 tree.find('li').has("ul").each(function () {
                     var branch = $(this); //li with children ul
                     branch.prepend("<i class='indicator glyphicon " + closedClass + "'></i>");
                     branch.addClass('branch');
                     branch.on('click', function (e) {
                         if (this == e.target) {
                             var icon = $(this).children('i:first');
                             icon.toggleClass(openedClass + " " + closedClass);
                             $(this).children().children().toggle();
                         }
                     })
                     branch.children().children().toggle();
                 });
                 //fire event from the dynamically added icon
               tree.find('.branch .indicator').each(function(){
                 $(this).on('click', function () {
                     $(this).closest('li').click();
                 });
               });
                 //fire event to open branch if the li contains an anchor instead of text
                 tree.find('.branch>a').each(function () {
                     $(this).on('click', function (e) {
                         $(this).closest('li').click();
                         e.preventDefault();
                     });
                 });
                 //fire event to open branch if the li contains a button instead of text
                 tree.find('.branch>button').each(function () {
                     $(this).on('click', function (e) {
                         $(this).closest('li').click();
                         e.preventDefault();
                     });
                 });
             }
         });

      //Initialization of treeviews

      $('#tree1').treed();

      $('#tree2').treed({openedClass:'glyphicon-folder-open', closedClass:'glyphicon-folder-close'});

      $('#tree3').treed({openedClass:'glyphicon-chevron-right', closedClass:'glyphicon-chevron-down'});    
       
      
      // ====== 조직도에서 팀이름 클릭 했을때 ====== //
      $("li.orgName").each(function(){
         $(this).click(function(){
            
            // 검색어 비우기 
             $("input#searchWord").val("");
            
            var fk_dept_no = $(this).val();
            //alert("클릭한 조직 이름의 value 값은? ==> " + fk_dept_no);
            
            // sessionStorage.setItem("fk_dept_no", fk_dept_no);
            // var fk_dept_noVal = sessionStorage.getItem("fk_dept_no");
            
            $.ajax({ 
               url:"<%=request.getContextPath()%>/subin/writeAddAddress.os",
               // data: {"fk_dept_no" : fk_dept_noVal},
               data: {"fk_dept_no" : fk_dept_no},
               dataType:"json",
               success:function(json) {
                  
                  var html = "";
                     if(json.length > 0) {
                        $.each(json, function(index, item){
                        
                        html += "<tr>";   
                          html += "<td style='width: 40px; height: 10px; padding-left:2px;'> ";
                          html += "<input type='checkbox' name='chkbox' class='"+ index + "'>";
                          html += "</td>";
                           html += "<td style='width: 80px; height: 10px; padding-left:2px;' class='emp_name'>";
                           html += item.emp_name;
                           html += "</td>";
                           html += "<td style='width: 80px; height: 10px; padding-left:2px;' class='position_name'>";
                           html += item.position_name;
                           html += "</td>";   
                           html += "<td style='width: 80px; height: 10px; padding-left:2px;' class='dept_name'>";
                           html += item.dept_name;
                           html += "</td>";    
                           html += "<td style='width: 80px; height: 10px; padding-left:2px;' class='emp_no'>";
                           html += item.emp_no;
                           html += "</td>";   
                           html += "</tr>";   

                        });
                        
                        
                        $("tbody#empListTbody").html(html);
                        
                     }
               },
                 error: function(request, status, error){
                   alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
                }
               
            });      
            
         });
      });   
      
      // ====== 주소록 모달창 내에서 사원 검색하는 버튼 클릭(사원명 또는 부서 검색) ====== // 
      $(document).on("click", "button#btnEmpSearchOk", function(){

         // 입력되어있는 검색어 구하기 
         var searchWord = $("input#searchWord").val().trim();
         
         if(searchWord == "") {
            alert("검색어를 입력하세요!");
            return false;
         }
         
           $.ajax({
               url : '<%=request.getContextPath()%>/subin/writeAddressSearch.os',
               data : {"searchWord" : searchWord},
               dataType : 'JSON',
               success : function(json){
                  var html = "";
                  if(json.length > 0) {
                     $.each(json, function(index, item){

                     html += "<tr>";   
                       html += "<td style='width: 40px; height: 10px; padding-left:2px;'> ";
                       html += "<input type='checkbox' name='chkbox' class='"+ index + "'>";
                       html += "</td>";
                        html += "<td style='width: 80px; height: 10px; padding-left:2px;' >";
                        html += item.emp_name;
                        html += "</td>";
                        html += "<td style='width: 80px; height: 10px; padding-left:2px;' >";
                        html += item.position_name;
                        html += "</td>";   
                        html += "<td style='width: 80px; height: 10px; padding-left:2px;' >";
                        html += item.dept_name;
                        html += "</td>";    
                        html += "<td style='width: 80px; height: 10px; padding-left:2px;' >";
                        html += item.emp_no;
                        html += "</td>";   
                        html += "</tr>";   
                  
                     });
                     
                     
                     $("tbody#empListTbody").html(html);
                     
                  }       
                  else {
                     
                     
                     html += "<tr>";   
                     html += "<td colspan='5' style='height: 20px; text-align: center;'> 검색어와 일치한 사원이 없습니다. </td>"
                     html += "</tr>";
                     
                     $("tbody#empListTbody").html(html);
                  }
               },
              error: function(request, status, error){
                   alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
            }
           });

      });      
      
      
      // ====== 주소록에서 사원버튼 클릭했을 때 ====== // 
      $(document).on("click","span.addUser",function() {         
         
         //체크된 체크박스의 갯수를 구할 수 있음.      
         var chkCount = $("input[name=chkbox]:checked").length;
         
         // 체크된 Row의 값을 가져온다.
         var rowData = new Array();
         var tdArr = new Array();
         var checkbox = $("input[name=chkbox]:checked");

         var empList = new Array();
         
         var resultEmpList = "";
         
         var resultEmpListTemp = "";
         
         // 체크된 체크박스 값을 가져온다
         checkbox.each(function(i) {
   
            // checkbox.parent() : checkbox의 부모는 <td>이다.
            // checkbox.parent().parent() : <td>의 부모이므로 <tr>이다.
            var tr = checkbox.parent().parent().eq(i);
            var td = tr.children();
            
            // 체크된 row의 모든 값을 배열에 담는다.
            rowData.push(tr.text().trim());
            
            // td.eq(0)은 체크박스 이므로  td.eq(1)의 값부터 가져온다.
            var emp_name = td.eq(1).text().trim();
            var position_name = td.eq(2).text().trim();
            var dept_name = td.eq(3).text().trim();
            var emp_no = td.eq(4).text().trim(); //  + "\n"; // 엔터 추가
            
            // 가져온 값을 배열에 담는다.(객체 형태로 담는다. [{} ,{}] 형태 )
            empList.push({emp_name: emp_name
                       ,position_name: position_name
                       ,dept_name: dept_name
                       ,emp_no: emp_no
            });
            
            // 배열 반복문, 사원 리스트 중복 값 체크 및 두번재 요소부터 엔터 값 적용하기
            $.each(empList, function(index, item){
                 
               // console.log("$.each의 empList 결과는무엇?==? " + item.emp_name);
               // console.log("$.each의 empList 결과는무엇?==? " + item.position_name);
               // console.log("$.each의 empList 결과는무엇?==? " + item.dept_name);
               // console.log("$.each의 empList 결과는무엇?==? " + item.emp_no);
               
               // 사원 리스트 중복 값 체크를 위한 temp 변수(체크한 내용이 다 들어가있는 변수)
               resultEmpListTemp = item.emp_name + "/" + item.position_name + "/" +item.dept_name + "/" +item.emp_no;
               
               // 누적값과 temp와 비교
               if(resultEmpList.indexOf(resultEmpListTemp) == -1 ) {
               
                  if(index == 0) { 
                     resultEmpList += item.emp_name + "/" + item.position_name + "/" +item.dept_name + "/" +item.emp_no;
                  }
                  else { // 첫번째 요소가 아닐때만 사원명 앞에 엔터값 추가
                     resultEmpList += "\n" + item.emp_name + "/" + item.position_name + "/" +item.dept_name + "/" +item.emp_no;;
                  }
               }
                 
            });

         }); // 체크박스 반복
         
         
         // 첫번째 행에 문자열 넣기 (결과값)
         $(".empAddLists").eq(0).text(resultEmpList);
         
      }); // 버튼 클릭 끝

});

// ====== 주소록에서 확인 버튼 눌렀을때 ====== //  
  function findEmpOk() {
     
     // 넣은 문자열 추출
     var data = $(".empAddLists").eq(0).text();

     // 엔터를 구분자를 기준으로 잘라서 배열 만들기 
     var arrData = data.split("\n");

     // 사원번호 얻기
     var empnoExtract = "";
     var arrEmpno = [];
     
     // 사원명 얻기
     var empNameExtract = ""; 
     var arrEmpName = [];     
     
     // 배열 반복문 출력
     arrData.forEach(function(item, index, arr){
          
        // 사원번호
        empnoExtract = arr[index].lastIndexOf('/'); // 배열[index]의 마지막 /의 위치를 구한다. 
        // arrDeptno += arr[index].slice(deptnoExtract+1) + ","; // 마지막 / 의 다음부터 끝까지 추출해서 새로운 arrDeptno 배열에 담는다.
        // console.log("배열 요소 arrEmpno ===> " + arrEmpno); 
        // 2020012,2020007,
        
        arrEmpno.push(arr[index].slice(empnoExtract+1));
        
        // 사원명
        empNameExtract = arr[index].indexOf('/');
        arrEmpName.push(arr[index].slice(0, empNameExtract)); // slice : 0번째부터 empNameExtract 앞까지 추출
        
     });

     for(var i=0; i<arrEmpName.length; i++) {
        //console.log("배열 " + i + "=> " + arrEmpName[i]);
        
     }
     
     for(var i=0; i<arrEmpno.length; i++) {
       // console.log("배열 " + i + "=> " + arrEmpno[i]);
        
     }     
     
     // 배열을 문자열로 바꾸기
     var strEmpno = arrEmpno.join(",");
     
     var strEmpName = arrEmpName.join(",");
     
     // 참석자 칸 초기화
     $("td.atandee_td").html('<a data-toggle="modal" data-target="#findEmpListModal" style="cursor: pointer;"><i class="fa fa-plus" style="padding: 0 10px;"> 참석자 선택</i></a>');
     
     // 선택한 사원이 있을 때만 실행
     if (strEmpName != "") {
    	 
    	 var atdHtml = "";
	     $.each(arrEmpName, function(index, item){
	    	 
	    	 atdHtml += '<div class="chip" id="fk_emp_no_receive_name" style="margin-right: 0.5%;">';
	    	 atdHtml += item
	    	 atdHtml += '</div>';
	     });
	     
	     atdHtml += '<a data-toggle="modal" data-target="#findEmpListModal" style="cursor: pointer;"><i class="fa fa-plus" style="padding: 0 10px;"> 참석자 선택</i></a>';
	     
	     $("td.atandee_td").html(atdHtml);
     
     }
     
     $("input.fk_emp_no_receive").val(strEmpno); // 컨트롤러로 가져갈 사원번호(hidden)

     $('.modal').modal('hide'); // 확인버튼 누르자 마자 모달창 숨기기
  }


<%-- // 캘린더 불러와서 select에 넣어주는 함수
function addSch(){

	$.ajax({
		url:"<%=request.getContextPath()%>/readCalList.os",
		type:"get",
		dataType:"JSON",
		success:function(json){
			var html = "";
			if (json.length > 0) {
				$.each(json, function(index, item){
					var name = "";
					if (item.name.length > 8) {
						name = item.name.substring(0,8) + "...";
					}else{
						name = item.name;
					}
					
					html += "<option value='" + item.calendar_no + "'>" + item.name + "</option>";
				});
			}else{
				html += "<option value='-9999'>캘린더를 생성해주세요.</option>";
			}
			
			$("select.addSchSelect").html(html);
		},
		error: function(request, status, error){
			alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
	 	}
	});
	
  }

// 일정등록에서 등록버튼을 클릭했을시 실행하는 함수
  function addSchBtn(){
	  
	  // 입력받은 값들 유효성 검사: 시작

	  var title = $("input.title").val();
	  if (title.trim() == "") {
		  alert("일정명을 입력해주세요.");
		  $("input.title").focus();
		  return false;
	  }

	  var startday = $("input[name=startday]").val() + " " + $("select.startday_hour").val() + ":00";
	  var endday = "";
	  
	  // 종일 체크 시 시작 날짜를 기준으로 변경
	  if ($("input#allday:checked").val()) {
		  startday = $("input[name=startday]").val() + " 00:00:00";
		  endday = $("input[name=startday]").val() + " 23:59:59";
	  }else{
		  endday = $("input[name=endday]").val() + " " + $("select.endday_hour").val() + ":00";
	  }
	  
	  // true: 통과   false: 불통
	  if (!(startday < endday && startday != endday)) {
		  alert("올바른 일시를 선택해주세요.");
		  return false;
	  }

	  var fk_calendar_no = $("select[name=fk_calendar_no]").val();
	  if (fk_calendar_no.trim() == "" || fk_calendar_no == "-9999") {
		  alert("캘린더를 선택해주세요.");
		  return false;
	  }
	  // 참석자 최소 1명 이상 선택하게 함
	  var fk_emp_no_receive = $("input.fk_emp_no_receive").val();
	  if (fk_emp_no_receive == "") {
		  alert("참석자를 최소 1명 이상 선택해주세요.");
		  return false;
	  }
	  
	  var content = $("textArea[name=content]").val();
	  if (content.trim() == "") {
		  alert("일정내용을 입력해주세요.");
		  $("textArea[name=content]").focus();
		  return false;
	  }

	// 입력받은 값들 유효성 검사: 끝
	
	
	// db에 넣기
	$.ajax({
		url:"<%=request.getContextPath()%>/addDetailSch.os",
		data:{title:title, startday:startday, endday:endday, fk_calendar_no:fk_calendar_no, content:content, fk_emp_no_receive:fk_emp_no_receive},
		type:"POST",
		dataType:"JSON",
		success:function(json){
			
			if (json.n == 1) {
				location.href = "<%=request.getContextPath()%>/goCalendar.os";
				
			}else{
				alert("DB 오류");
			}
			
		},
		error: function(request, status, error){
			alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
	 	}
	});
	  
  }
 --%>
// 취소 버튼 클릭 시 캘린더로 돌아가는 함수
function cancelBtn() {
	location.href = "<%=request.getContextPath()%>
	/goCalendar.os";
	}
</script>