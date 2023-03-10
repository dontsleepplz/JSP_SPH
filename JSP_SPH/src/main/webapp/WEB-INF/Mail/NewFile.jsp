<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
#divCustomWrapper {
	word-break: break-all;
	font-family: malgun gothic, dotum, arial, tahoma;
	width: 700px !important;
}

#divCustomWrapper * {
	max-width: 500px !important;
}

#divCustomWrapper .titleSection {
	text-align: center;
	font-size: 20pt;
	font-weight: bold;
	margin-bottom: 20px !important;
	margin-top: 20px !important;
}

#divCustomWrapper .detailSection>* {
	margin-bottom: 10px;
}

#divCustomWrapper .detailSection {
	width: 700px !important;
	clear: both;
	margin-top: 10px !important;
	vertical-align: middle;
}

#divCustomWrapper table {
	border-collapse: collapse;
	word-break: break-all;
}

#divCustomWrapper div.partition {
	display: flex;
}

#divCustomWrapper div.partition.left {
	flex: 1;
}

#divCustomWrapper div.inaRowRight {
	flex: 1;
	text-align: right;
}

#divCustomWrapper td.BCel {
	font-size: 9pt !important;
	height: 28px;
	border: 1px solid black !important;
	padding: 3px 5px 3px 5px; /*top right bottom left*/
}

#divCustomWrapper td.ACel {
	font-size: 9pt !important;
	height: 28px;
	border: 1px solid black !important;
	padding: 3px 5px 3px 5px;
	text-align: center !important;
	background: #eee;
	font-weight: bold;
}

#divCustomWrapper td.noneborder {
	border: none !important;
}

#divCustomWrapper td.center {
	text-align: center;
}

#divCustomWrapper td.right {
	text-align: right;
}

#divCustomWrapper td.editor {
	height: 300px;
	vertical-align: top;
}

#divCustomWrapper td.area {
	height: 120px;
	vertical-align: middle;
}

#divCustomWrapper .div_button {
	word-break: break-all;
	padding: 3px;
	margin-top: 2px;
	margin-bottom: 2px !important;
	height: 22px;
	vertical-align: middle;
}

#divCustomWrapper a.button {
	background: rgb(102, 102, 102);
	color: rgb(255, 255, 255);
	padding: 2px 5px;
	border-radius: 3px;
}

p.freeP {
	font-weight: normal;
	font-size: 9pt;
	margin: 3px 1px 3px 5px;
}
</style>
<style type="text/css">
@media print {
	.viewModeHiddenPart {
		display: none;
	}
	h1, h2, h3, h4, h5, dl, dt, dd, ul, li, ol, th, td, p, blockquote, form,
		fieldset, legend, div, body {
		-webkit-print-color-adjust: exact;
	}
	#divCustomWrapper {
		margin-left: auto !important;
		margin-right: auto !important;
	}
	/*#divCustomWrapper td.ACel {border:none\9 !important; outline:black solid 0.5px\9 !important;}
	#divCustomWrapper td.BCel {border:none\9 !important; outline:black solid 0.5px\9 !important;}*/
}
</style>

</head>
<div class="row">
	<div class="col-2">

		<div class="form-group">
			<label for="inputStatus">강의선택</label> <select id="inputStatus"
				class="form-control custom-select">
				<option selected="" disabled="">Select one</option>
				<option>JAVA</option>
				<option>CSS</option>
				<option>HTML</option>
			</select>
		</div>
	</div>

	<div class="col-5">
		<table class="table table-striped table-valign-middle">
			<thead>
				<tr>
					<th>과목명</th>
					<th>강의명</th>
					<th>강사명</th>
					<th>인원수</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>JAVA</td>
					<td>JAVA 초급</td>
					<td>홍승미</td>
					<td>(14/20)</td>
				</tr>

			</tbody>
		</table>
	</div>

	<div class="col-5">
		<div class="card card-primary  card-tabs">
			<div class="card-header p-0 pt-1 border-bottom-0">
				<ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						id="custom-tabs-three-home-tab" data-toggle="pill"
						href="#custom-tabs-three-home12" role="tab"
						aria-controls="custom-tabs-three-home" aria-selected="true">강의진행도</a>
					</li>
					<li class="nav-item"><a class="nav-link"
						id="custom-tabs-three-profile-tab" data-toggle="pill"
						href="#custom-tabs-three-profile12" role="tab"
						aria-controls="custom-tabs-three-profile" aria-selected="true">강의평가</a>
					</li>

				</ul>
			</div>
			<div class="card-body">
				<div class="tab-content" id="custom-tabs-three-tabContent">
					<div class="tab-pane fade active show"
						id="custom-tabs-three-home12" role="tabpanel"
						aria-labelledby="custom-tabs-three-home-tab">

						<div class="progress-group">
							<span class="float-right"><b>60</b>/100(%)</span>
							<div class="progress progress-sm">
								<div class="progress-bar bg-success" style="width: 60%"></div>
							</div>
						</div>

					</div>
					<!-- 영역표시 -->
					<div class="tab-pane fade" id="custom-tabs-three-profile12"
						role="tabpanel" aria-labelledby="custom-tabs-three-profile-tab">
						<ul class="list-group list-group-unbordered mb-3">
							<li class="list-group-item"><span><b>강사명 :</b> 홍승미</span></li>
							<li class="list-group-item"><span><b>과목명 :</b> JAVA</span></li>
							<li class="list-group-item"><span><b>수강평 :</b>★★★★☆</span></li>
						</ul>
					</div>
					<!-- 강사 탭 -->
				</div>
			</div>
		</div>

	</div>
</div>
<!--윗줄 고정 끝  -->

<!--전체 2댑스  -->



<div class="col-12 col-sm-12" style="margin-top: -10px;">
	<div class="card card-primary  card-tabs">
		<div class="card-header p-0 pt-1 border-bottom-0">
			<ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">

				<li class="nav-item"><a class="nav-link active"
					id="custom-tabs-three-home-tab" data-toggle="pill"
					href="#custom-tabs-three-home" role="tab"
					aria-controls="custom-tabs-three-home" aria-selected="true">시험출제</a>
				</li>

				<li class="nav-item"><a class="nav-link"
					id="custom-tabs-three-profile-tab" data-toggle="pill"
					href="#custom-tabs-three-profile" role="tab"
					aria-controls="custom-tabs-three-profile" aria-selected="true">질문받기</a>
				</li>

				<li class="nav-item"><a class="nav-link"
					id="custom-tabs-one-messages-tab" data-toggle="pill"
					href="#custom-tabs-one-messages" role="tab"
					aria-controls="custom-tabs-one-messages" aria-selected="false">강의계획서
						작성</a></li>

			</ul>
		</div>

		<!-- <div class="card-body" style="height: 810px;">
			<div class="tab-content" id="custom-tabs-three-tabContent">
				<div class="tab-pane fade active show" id="custom-tabs-three-profile"
					role="tabpanel" aria-labelledby="custom-tabs-three-profile-tab">
					시험출제 밑 설정하는곳 한줄 시작 
					<div class="row">
						<div class="col-2">
							<select id="inputStatus" class="form-control custom-select">
								<option selected="" disabled="">강의선택</option>
								맨 위에 설정하는 강의와 연동되게 하고싶음 
								<option>JAVA</option>
								<option>CSS</option>
								<option>HTML</option>
							</select> -->

		<!--시험출제 시작  -->
		<div class="card-body" style="height: 810px;">
			<div class="tab-content" id="custom-tabs-three-tabContent">

				<div class="tab-pane fade active show" id="custom-tabs-three-home"
					role="tabpanel" aria-labelledby="custom-tabs-three-home-tab">
					<!--시험출제 밑 설정하는곳 한줄 시작  -->
					<div class="row">
						<div class="col-2">
							<select id="inputStatus" class="form-control custom-select">
								<option selected="" disabled="">강의선택</option>
								<!--맨 위에 설정하는 강의와 연동되게 하고싶음  -->
								<option>JAVA</option>
								<option>CSS</option>
								<option>HTML</option>
							</select>


						</div>

						<div class="col-3">
							<select id="inputStatus" class="form-control custom-select">
								<option selected="" disabled="">시험선택</option>
								<!--맨 위에 설정하는 강의와 연동되게 하고싶음  -->
								<option>JAVA초급시험1</option>
								<option>Sql쿼리문 평가</option>
								<option>JSP/Servlet 구현 평가</option>
							</select>
						</div>
						<div class="col-4">
							<div class="form-group">
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"> <i
											class="far fa-calendar-alt"></i>
										</span>
									</div>
									<input type="text" class="form-control float-right"
										id="reservation">
								</div>

							</div>
						</div>




						<div class="col-2">
							<select id="inputStatus" class="form-control custom-select">
								<option selected="" disabled="">문항수</option>
								<!--맨 위에 설정하는 강의와 연동되게 하고싶음  -->
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
								<option>11</option>
								<option>12</option>
								<option>13</option>
								<option>14</option>
								<option>15</option>
								<option>16</option>
								<option>17</option>
								<option>18</option>
								<option>19</option>
								<option>20</option>

							</select>
						</div>
						<div class="col-1">
							<td>
								<button type="button" class="btn btn-block btn-info">설정완료</button>
							</td>
						</div>
					</div>






					<!--시험출제  -->

					<div class="card-body border-top mt-3">
						<div class="row">
							<div class="col-6 border-right">
								<div class="card "
									style="border: #4188FE solid 0.5px; border-radius: 10px; height: 645px;">
									<div class="card-header">
										<h3 class="card-title">문제 리스트</h3>
										<div class="card-tools">
											<div class="input-group input-group-sm">
												<button type="button"
													class="btn btn-block btn-sm btn-primary">추가</button>
											</div>
										</div>
									</div>
									<div class="card-body table-responsive p-0"
										style="height: 400px; overflow-y: scroll;">
										<table class="table table-head-fixed text-nowrap"
											style="height: 100px; text-align: center;">
											<thead>
												<tr>
													<th><button type="button"
															class="btn btn-default btn-sm checkbox-toggle">
															<i class="far fa-square"></i>
														</button></th>
													<th>코드</th>
													<th>문제</th>
													<th>난이도</th>
													<th>미리보기</th>

												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check1"> <label
																for="check1"></label>
														</div>
													</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check2"> <label
																for="check2"></label>
														</div>
													</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check3"> <label
																for="check3"></label>
														</div>
													</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check4"> <label
																for="check4"></label>
														</div>
													</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check5"> <label
																for="check5"></label>
														</div>
													</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check6"> <label
																for="check6"></label>
														</div>
													</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check7"> <label
																for="check7"></label>
														</div>
													</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check8"> <label
																for="check8"></label>
														</div>
													</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check9"> <label
																for="check9"></label>
														</div>
													</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check10"> <label
																for="check10"></label>
														</div>
													</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check11"> <label
																for="check11"></label>
														</div>
													</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check12"> <label
																for="check12"></label>
														</div>
													</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
											</tbody>
										</table>
									</div>

								</div>

							</div>
							<!--메일시작  -->
							<div class="col-6 border-right">
								<div class="card "
									style="border: #4188FE solid 0.5px; border-radius: 10px;">
									<div class="card-header">
										<h3 class="card-title">시험 문제 출제</h3>

										<div class="row">
											<div class="col-10">
												<table class="table table-striped table-valign-middle">
													<thead>
														<tr>
															<th>강의명</th>
															<th>시험명</th>
															<th>시작일</th>
															<th>종료일</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>JAVA초급</td>
															<td>JAVA기초이론</td>
															<td>2023/03/28</td>
															<td>2023/04/01</td>
														</tr>
													</tbody>
												</table>
											</div>

											<div class="col-2">
												<div class="input-group input-group-sm">
													<button type="button"
														class="btn btn-block btn-sm btn-primary">완료</button>
													<button type="button"
														class="btn btn-block btn-sm btn-primary">제거</button>
												</div>


											</div>



										</div>
									</div>

									<div class="card-body table-responsive p-0"
										style="height: 500px; overflow-y: scroll;">
										<table class="table table-head-fixed text-nowrap"
											style="height: 100px; text-align: center;">
											<thead>
												<tr>
													<th><button type="button"
															class="btn btn-default btn-sm checkbox-toggle">
															<i class="far fa-square"></i>
														</button></th>
													<th>문항</th>
													<th>코드</th>
													<th>문제</th>
													<th>난이도</th>
													<th>미리보기</th>

												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check1"> <label
																for="check1"></label>
														</div>
													</td>
													<td>1</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check2"> <label
																for="check2"></label>
														</div>
													</td>
													<td>1</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check3"> <label
																for="check3"></label>
														</div>
													</td>
													<td>1</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check4"> <label
																for="check4"></label>
														</div>
													</td>
													<td>1</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check5"> <label
																for="check5"></label>
														</div>
													</td>
													<td>1</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check6"> <label
																for="check6"></label>
														</div>
													</td>
													<td>1</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check7"> <label
																for="check7"></label>
														</div>
													</td>
													<td>1</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check8"> <label
																for="check8"></label>
														</div>
													</td>
													<td>1</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check9"> <label
																for="check9"></label>
														</div>
													</td>
													<td>1</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check10"> <label
																for="check10"></label>
														</div>
													</td>
													<td>1</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check11"> <label
																for="check11"></label>
														</div>
													</td>
													<td>1</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check12"> <label
																for="check12"></label>
														</div>
													</td>
													<td>1</td>
													<td>125</td>
													<td>시험문제</td>
													<td>상</td>
													<td><button>미리보기</button></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>





					<div class="daterangepicker ltr show-calendar opensright"
						style="top: 1608.19px; left: auto; right: 0px; display: none;">
						<div class="ranges"></div>
						<div class="drp-calendar left">
							<div class="calendar-table">
								<table class="table-condensed">
									<thead>
										<tr>
											<th class="prev available"><span></span></th>
											<th colspan="5" class="month">Mar 2023</th>
											<th></th>
										</tr>
										<tr>
											<th>Su</th>
											<th>Mo</th>
											<th>Tu</th>
											<th>We</th>
											<th>Th</th>
											<th>Fr</th>
											<th>Sa</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="weekend off ends available" data-title="r0c0">26</td>
											<td class="off ends available" data-title="r0c1">27</td>
											<td class="off ends available" data-title="r0c2">28</td>
											<td class="available" data-title="r0c3">1</td>
											<td class="available" data-title="r0c4">2</td>
											<td class="available" data-title="r0c5">3</td>
											<td class="weekend available" data-title="r0c6">4</td>
										</tr>
										<tr>
											<td class="weekend available" data-title="r1c0">5</td>
											<td class="today active start-date active end-date available"
												data-title="r1c1">6</td>
											<td class="available" data-title="r1c2">7</td>
											<td class="available" data-title="r1c3">8</td>
											<td class="available" data-title="r1c4">9</td>
											<td class="available" data-title="r1c5">10</td>
											<td class="weekend available" data-title="r1c6">11</td>
										</tr>
										<tr>
											<td class="weekend available" data-title="r2c0">12</td>
											<td class="available" data-title="r2c1">13</td>
											<td class="available" data-title="r2c2">14</td>
											<td class="available" data-title="r2c3">15</td>
											<td class="available" data-title="r2c4">16</td>
											<td class="available" data-title="r2c5">17</td>
											<td class="weekend available" data-title="r2c6">18</td>
										</tr>
										<tr>
											<td class="weekend available" data-title="r3c0">19</td>
											<td class="available" data-title="r3c1">20</td>
											<td class="available" data-title="r3c2">21</td>
											<td class="available" data-title="r3c3">22</td>
											<td class="available" data-title="r3c4">23</td>
											<td class="available" data-title="r3c5">24</td>
											<td class="weekend available" data-title="r3c6">25</td>
										</tr>
										<tr>
											<td class="weekend available" data-title="r4c0">26</td>
											<td class="available" data-title="r4c1">27</td>
											<td class="available" data-title="r4c2">28</td>
											<td class="available" data-title="r4c3">29</td>
											<td class="available" data-title="r4c4">30</td>
											<td class="available" data-title="r4c5">31</td>
											<td class="weekend off ends available" data-title="r4c6">1</td>
										</tr>
										<tr>
											<td class="weekend off ends available" data-title="r5c0">2</td>
											<td class="off ends available" data-title="r5c1">3</td>
											<td class="off ends available" data-title="r5c2">4</td>
											<td class="off ends available" data-title="r5c3">5</td>
											<td class="off ends available" data-title="r5c4">6</td>
											<td class="off ends available" data-title="r5c5">7</td>
											<td class="weekend off ends available" data-title="r5c6">8</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="calendar-time" style="display: none;"></div>
						</div>
						<div class="drp-calendar right">
							<div class="calendar-table">
								<table class="table-condensed">
									<thead>
										<tr>
											<th></th>
											<th colspan="5" class="month">Apr 2023</th>
											<th class="next available"><span></span></th>
										</tr>
										<tr>
											<th>Su</th>
											<th>Mo</th>
											<th>Tu</th>
											<th>We</th>
											<th>Th</th>
											<th>Fr</th>
											<th>Sa</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="weekend off ends available" data-title="r0c0">26</td>
											<td class="off ends available" data-title="r0c1">27</td>
											<td class="off ends available" data-title="r0c2">28</td>
											<td class="off ends available" data-title="r0c3">29</td>
											<td class="off ends available" data-title="r0c4">30</td>
											<td class="off ends available" data-title="r0c5">31</td>
											<td class="weekend available" data-title="r0c6">1</td>
										</tr>
										<tr>
											<td class="weekend available" data-title="r1c0">2</td>
											<td class="available" data-title="r1c1">3</td>
											<td class="available" data-title="r1c2">4</td>
											<td class="available" data-title="r1c3">5</td>
											<td class="available" data-title="r1c4">6</td>
											<td class="available" data-title="r1c5">7</td>
											<td class="weekend available" data-title="r1c6">8</td>
										</tr>
										<tr>
											<td class="weekend available" data-title="r2c0">9</td>
											<td class="available" data-title="r2c1">10</td>
											<td class="available" data-title="r2c2">11</td>
											<td class="available" data-title="r2c3">12</td>
											<td class="available" data-title="r2c4">13</td>
											<td class="available" data-title="r2c5">14</td>
											<td class="weekend available" data-title="r2c6">15</td>
										</tr>
										<tr>
											<td class="weekend available" data-title="r3c0">16</td>
											<td class="available" data-title="r3c1">17</td>
											<td class="available" data-title="r3c2">18</td>
											<td class="available" data-title="r3c3">19</td>
											<td class="available" data-title="r3c4">20</td>
											<td class="available" data-title="r3c5">21</td>
											<td class="weekend available" data-title="r3c6">22</td>
										</tr>
										<tr>
											<td class="weekend available" data-title="r4c0">23</td>
											<td class="available" data-title="r4c1">24</td>
											<td class="available" data-title="r4c2">25</td>
											<td class="available" data-title="r4c3">26</td>
											<td class="available" data-title="r4c4">27</td>
											<td class="available" data-title="r4c5">28</td>
											<td class="weekend available" data-title="r4c6">29</td>
										</tr>
										<tr>
											<td class="weekend available" data-title="r5c0">30</td>
											<td class="off ends available" data-title="r5c1">1</td>
											<td class="off ends available" data-title="r5c2">2</td>
											<td class="off ends available" data-title="r5c3">3</td>
											<td class="off ends available" data-title="r5c4">4</td>
											<td class="off ends available" data-title="r5c5">5</td>
											<td class="weekend off ends available" data-title="r5c6">6</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="calendar-time" style="display: none;"></div>
						</div>
						<div class="drp-buttons">
							<span class="drp-selected">03/06/2023 - 03/06/2023</span>
							<button class="cancelBtn btn btn-sm btn-default" type="button">Cancel</button>
							<button class="applyBtn btn btn-sm btn-primary" type="button">Apply</button>
						</div>
					</div>
				</div>
				<!--시험출제 끝  -->


				<!--질문받기 시작  -->

				<div class="tab-pane fade" id="custom-tabs-three-profile"
					role="tabpanel" aria-labelledby="custom-tabs-three-profile-tab">
					<!--시험출제 밑 설정하는곳 한줄 시작  -->

					<div class="row">
						<!--좌측상단화면  -->
						<div class="col-6">
							<!--문제 리스트  -->
							<div class="card "
								style="border: #4188FE solid 0.5px; border-radius: 10px;">
								<div class="card-header">
									<h3 class="card-title;">문제목록</h3>
									<div class="card-tools">
										<div class="input-group input-group-sm">
											<button type="button"
												class="btn btn-block btn-sm btn-primary">더보기</button>
										</div>
									</div>
								</div>
								<div class="card-body table-responsive p-0"
									style="height: 300px; overflow-y: scroll;">
									<table class="table table-head-fixed text-nowrap"
										style="height: 100px; text-align: center;">
										<thead>
											<tr>
												<th>분류</th>
												<th>강의명</th>
												<th>제목</th>
												<th>작성자</th>
												<th>질문일자</th>
												<th>내용보기</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>(시험)</td>
												<td>JAVA 기초</td>
												<td>질문입니다.</td>
												<td>양종민</td>
												<td>2023/04/01</td>
												<td><button>내용보기</button></td>
											</tr>
											<tr>
												<td>(시험)</td>
												<td>JAVA 기초</td>
												<td>질문입니다.</td>
												<td>양종민</td>
												<td>2023/04/01</td>
												<td><button>내용보기</button></td>
											</tr>
											<tr>
												<td>(시험)</td>
												<td>JAVA 기초</td>
												<td>질문입니다.</td>
												<td>양종민</td>
												<td>2023/04/01</td>
												<td><button>내용보기</button></td>
											</tr>
											<tr>
												<td>(시험)</td>
												<td>JAVA 기초</td>
												<td>질문입니다.</td>
												<td>양종민</td>
												<td>2023/04/01</td>
												<td><button>내용보기</button></td>
											</tr>
											<tr>
												<td>(시험)</td>
												<td>JAVA 기초</td>
												<td>질문입니다.</td>
												<td>양종민</td>
												<td>2023/04/01</td>
												<td><button>내용보기</button></td>
											</tr>
											<tr>
												<td>(시험)</td>
												<td>JAVA 기초</td>
												<td>질문입니다.</td>
												<td>양종민</td>
												<td>2023/04/01</td>
												<td><button>내용보기</button></td>
											</tr>
											<tr>
												<td>(시험)</td>
												<td>JAVA 기초</td>
												<td>질문입니다.</td>
												<td>양종민</td>
												<td>2023/04/01</td>
												<td><button>내용보기</button></td>
											</tr>
											<tr>
												<td>(시험)</td>
												<td>JAVA 기초</td>
												<td>질문입니다.</td>
												<td>양종민</td>
												<td>2023/04/01</td>
												<td><button>내용보기</button></td>
											</tr>
											<tr>
												<td>(시험)</td>
												<td>JAVA 기초</td>
												<td>질문입니다.</td>
												<td>양종민</td>
												<td>2023/04/01</td>
												<td><button>내용보기</button></td>
											</tr>
											<tr>
												<td>(시험)</td>
												<td>JAVA 기초</td>
												<td>질문입니다.</td>
												<td>양종민</td>
												<td>2023/04/01</td>
												<td><button>내용보기</button></td>
											</tr>
										</tbody>
									</table>
								</div>

							</div>

							<!--좌측하단화면  -->
							<div class="row">
								<div class="col-12">
									<div class="card "
										style="border: #4188FE solid 0.5px; border-radius: 10px;">
										<div class="card-header">
											<h3 class="card-title">질문내용</h3>
											<div class="card-tools">
												<div class="input-group input-group-sm">
													<button type="button"
														class="btn btn-block btn-sm btn-primary">답변작성</button>
												</div>
											</div>
										</div>
										<div class="card-body table-responsive p-0"
											style="height: 300px; overflow-y: scroll;">
											<table class="table table-head-fixed text-nowrap"
												style="height: 100px; text-align: center;">
												<thead>
													<tr>
														<th>분류</th>
														<th>강의명</th>
														<th>제목</th>
														<th>작성자</th>
														<th>질문일자</th>

													</tr>
												</thead>
												<tbody>
													<tr>
														<td>(시험)</td>
														<td>JAVA 기초</td>
														<td>질문입니다.</td>
														<td>홍승미</td>
														<td>2023/04/01</td>

													</tr>
												</tbody>

											</table>
											<textarea id="inputDescription" class="form-control" rows="4"
												style="height: 247px;">SQL의 기능에 따른 분류 중에서 REVOKE문과 같이 데이터의 사용 권한을 관리하는데 사용하는 언어는?</textarea>
										</div>


										<!--좌측하단화면  -->
									</div>
								</div>
							</div>
						</div>
						<!--좌측화면끝  -->

						<!--우측화면  -->
						<div class="col-6">
							<div class="card "
								style="border: #4188FE solid 0.5px; border-radius: 10px;">
								<div class="card-header">
									<h3 class="card-title" style="">답변하기</h3>
									<div class="card-tools">
										<div class="input-group input-group-sm">
											<button type="button"
												class="btn btn-block btn-sm btn-primary">답변하기</button>
										</div>
									</div>
								</div>
								<div class="card-body table-responsive p-0"
									style="height: 670px; overflow-y: scroll;">

									<textarea id="inputDescription" class="form-control" rows="4"
										style="height: 670px;">SQL의 기능에 따른 분류 중에서 REVOKE문과 같이 데이터의 사용 권한을 관리하는데 사용하는 언어는?</textarea>
								</div>


								<!--좌측하단화면  -->
							</div>
						</div>






						<!-- 질문받기 끝 -->
					</div>
				</div>

				<!-- 강의계획서 작성 -->
				<div class="tab-pane fade" id="custom-tabs-one-messages"
					role="tabpanel" aria-labelledby="custom-tabs-one-messages-tab">
					<!--시험출제 밑 설정하는곳 한줄 시작  -->
					<div class="row">
						<!--좌측화면  -->
						<div class="col-6">
							<div class="card "
								style="border: #4188FE solid 0.5px; border-radius: 10px;">
								<div class="card-header">
									<h3 class="card-title;">제출해야할 강의제안서</h3>
									
												<div class="row">
			<div class="col-3">
				<select id="inputStatus" class="form-control custom-select"
					style=" font-size: 14px;">
					<option selected="" disabled="">과목별 </option>

					<option>A과목</option>
					<option>B과목</option>
					<option>C과목</option>
					<option>D과목</option>
					<option>E과목</option>
					<option>F과목</option>
					<option>G과목</option>
					<option>H과목</option>
					<option>I과목</option>

				</select>
				</div>
				
				<div class="col-4">
				<select id="inputStatus" class="form-control custom-select"
					style=" font-size: 14px;">
					<option selected="" disabled="">검색구분</option>

					<option value="" >검색구분</option>
							<option value="" >강사명</option>
							<option value="" >과목명</option>
				</select>
				</div>
				
				<div class="col-5">
					<input  class="form-control" type="text" name="keyword"  style="font-size:14px; width: 300px; display: inline-block;"
   					 			placeholder="검색" value="${cri.keyword }"/>
   					 			<span class="input-group-append" style="display: inline-block;">
							<button class="btn btn-primary" type="button"   style="width: 38px;height: 36px;"
									id="searchBtn" data-card-widget="search" onclick="list_go(1);">
								<i class="fa-solid fa-magnifying-glass"></i>
							</button>
						</span>
   					 			</div>
   				</div>
									
									
								</div>
								<div class="card-body table-responsive p-0"
									style="height: 650px; overflow-y: scroll;">
									<table class="table table-head-fixed text-nowrap"
										style="height: 100px; text-align: center;">
										<thead>
											<tr>
												<th>기안일</th>
												<th>과목명</th>
												<th>강의명</th>
												<th>제목</th>
												<th>강사명</th>
												<th>작성하기</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>2023/03/28</td>
												<th>JAVA</th>
												<td>JAVA 기초</td>
												<td>강의제안서입니다.</td>
												<td>홍승미</td>
												<td><button>작성하기</button></td>
											</tr>
											<tr>
												<td>2023/03/28</td>
												<th>JAVA</th>
												<td>JAVA 기초</td>
												<td>강의제안서입니다.</td>
												<td>홍승미</td>
												<td><button>작성하기</button></td>
											</tr>
											<tr>
												<td>2023/03/28</td>
												<th>JAVA</th>
												<td>JAVA 기초</td>
												<td>강의제안서입니다.</td>
												<td>홍승미</td>
												<td><button>작성하기</button></td>
											</tr>
											<tr>
												<td>2023/03/28</td>
												<th>JAVA</th>
												<td>JAVA 기초</td>
												<td>강의제안서입니다.</td>
												<td>홍승미</td>
												<td><button>작성하기</button></td>
											</tr>
											<tr>
												<td>2023/03/28</td>
												<th>JAVA</th>
												<td>JAVA 기초</td>
												<td>강의제안서입니다.</td>
												<td>홍승미</td>
												<td><button>작성하기</button></td>
											</tr>
											<tr>
												<td>2023/03/28</td>
												<th>JAVA</th>
												<td>JAVA 기초</td>
												<td>강의제안서입니다.</td>
												<td>홍승미</td>
												<td><button>작성하기</button></td>
											</tr>

											<tr>
												<td>2023/03/28</td>
												<th>JAVA</th>
												<td>JAVA 기초</td>
												<td>강의제안서입니다.</td>
												<td>홍승미</td>
												<td><button>작성하기</button></td>
											</tr>


										</tbody>
									</table>
								</div>

							</div>
						</div>
						<!--좌측화면끝  -->
						<!--우측화면시작 -->

<!--강의계획서 시작  -->


	<!-- 강의계획서작성 우측페이지시작 -->
	<div class="col-6">
		<!-- 강의계획서양식 시작 -->
	
	<div class="card"
			style="border: #4188FE solid 0.5px; border-radius: 10px;">
			<div id="divCustomWrapper" style="margin-left: 35px;">
				<form>
					<!-- 1. Title Section (start) -->
					<div class="titleSection">강&nbsp;의&nbsp;계&nbsp;획&nbsp;서</div>
					<!-- 1. Title Section (end) -->
					<!-- 2. Draft Section (Start) -->
					<div class="row" style="padding: 0 0 0 0; margin: 0 0 0 0;">
						<div class="partition">
							<div class="col-xs-6">
								<!-- 2.1 Drafter Information (Start) -->
								<div class="left">
									<table style="width: 250px; height: 100px;">

										<colgroup>
											<col width="90">
											<col width="270">
										</colgroup>
										<tbody>
											<tr>
												<td class="ACel">과목명</td>
												<td class="BCel"><input type="text"
													style="width: 100%;"><span
													data-dsl="{{label:docNo}}"></span></td>
											</tr>
											<tr>
												<td class="ACel">강사명</td>
												<td class="BCel"><input type="text"
													style="width: 100%;"><span
													data-dsl="{{label:draftDate}}"></span></td>
											</tr>
											<tr>
												<td class="ACel">수강인원</td>
												<td class="BCel"><input type="text"
													style="width: 100%;"><span
													data-dsl="{{label:draftDept}}"></span></td>
											</tr>
										</tbody>

									</table>
								</div>
								<!-- 2.1 Drafter Information (end) -->
								<!-- 2.2 Draft Line (start) -->
								<!-- 2.2 Draft Line (end) -->

							</div>
							<div class="col-xs-6">
								<!-- 2.1 Drafter Information (Start) -->
								<div class="left">
									<table style="width: 250px; height: 100px;">

										<colgroup>
											<col width="90">
											<col width="270">
										</colgroup>
										<tbody>
											<tr>
												<td class="ACel">강의명</td>
												<td class="BCel"><input type="text"
													style="width: 100%;"><span
													data-dsl="{{label:docNo}}"></span></td>
											</tr>
											<tr>
												<td class="ACel">교제명</td>
												<td class="BCel"><input type="text"
													style="width: 100%;"><span
													data-dsl="{{label:draftDate}}"></span></td>
											</tr>
											<tr>
												<td class="ACel">강의실</td>
												<td class="BCel"><input type="text"
													style="width: 100%;"><span
													data-dsl="{{label:draftDept}}"></span></td>
											</tr>
										</tbody>

									</table>
								</div>
								<!-- 2.1 Drafter Information (end) -->
								<!-- 2.2 Draft Line (start) -->
								<!-- 2.2 Draft Line (end) -->

							</div>
						</div>
						<div class="row" style="margin-top: -11px;">
							<div class="col-12">
								<table class="detailSection">
									<colgroup>
										<col width="100">
										<col width="700">
									</colgroup>
									<tbody>
										<tr>
											<td colspan="1" class="ACel" width="13%;">강의 기간</td>
											<td colspan="1" class="BCel">
												<div class="input-group">
													<div class="input-group-prepend">
														<span class="input-group-text"> <i
															class="far fa-calendar-alt"></i>
														</span>
														<div class="daterangepicker ltr show-calendar opensright"
															style="top: 1608.88px; left: auto; right: 0px; display: none;">
															<div class="ranges"></div>
															<div class="drp-calendar left">
																<div class="calendar-table">
																	<table class="table-condensed">
																		<thead>
																			<tr>
																				<th class="prev available"><span></span></th>
																				<th colspan="5" class="month">Mar 2023</th>
																				<th></th>
																			</tr>
																			<tr>
																				<th>일</th>
																				<th>월</th>
																				<th>화</th>
																				<th>수</th>
																				<th>목</th>
																				<th>금</th>
																				<th>토</th>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td class="weekend off ends available"
																					data-title="r0c0">26</td>
																				<td class="off ends available" data-title="r0c1">27</td>
																				<td class="off ends available" data-title="r0c2">28</td>
																				<td class="available" data-title="r0c3">1</td>
																				<td class="available" data-title="r0c4">2</td>
																				<td class="available" data-title="r0c5">3</td>
																				<td class="today weekend available"
																					data-title="r0c6">4</td>
																			</tr>
																			<tr>
																				<td class="weekend available" data-title="r1c0">5</td>
																				<td class="available" data-title="r1c1">6</td>
																				<td class="available" data-title="r1c2">7</td>
																				<td class="available" data-title="r1c3">8</td>
																				<td class="available" data-title="r1c4">9</td>
																				<td class="available" data-title="r1c5">10</td>
																				<td class="weekend available" data-title="r1c6">11</td>
																			</tr>
																			<tr>
																				<td class="weekend available" data-title="r2c0">12</td>
																				<td class="available" data-title="r2c1">13</td>
																				<td class="available" data-title="r2c2">14</td>
																				<td class="available" data-title="r2c3">15</td>
																				<td class="available" data-title="r2c4">16</td>
																				<td class="available" data-title="r2c5">17</td>
																				<td class="weekend available" data-title="r2c6">18</td>
																			</tr>
																			<tr>
																				<td class="weekend available" data-title="r3c0">19</td>
																				<td class="available" data-title="r3c1">20</td>
																				<td class="available" data-title="r3c2">21</td>
																				<td class="available" data-title="r3c3">22</td>
																				<td class="available" data-title="r3c4">23</td>
																				<td class="available" data-title="r3c5">24</td>
																				<td class="weekend available" data-title="r3c6">25</td>
																			</tr>
																			<tr>
																				<td class="weekend available" data-title="r4c0">26</td>
																				<td class="available" data-title="r4c1">27</td>
																				<td class="available" data-title="r4c2">28</td>
																				<td class="available" data-title="r4c3">29</td>
																				<td class="available" data-title="r4c4">30</td>
																				<td class="available" data-title="r4c5">31</td>
																				<td class="weekend off ends available"
																					data-title="r4c6">1</td>
																			</tr>
																			<tr>
																				<td class="weekend off ends available"
																					data-title="r5c0">2</td>
																				<td class="off ends available" data-title="r5c1">3</td>
																				<td class="off ends available" data-title="r5c2">4</td>
																				<td class="off ends available" data-title="r5c3">5</td>
																				<td class="off ends available" data-title="r5c4">6</td>
																				<td class="off ends available" data-title="r5c5">7</td>
																				<td class="weekend off ends available"
																					data-title="r5c6">8</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<div class="calendar-time" style="display: none;"></div>
															</div>
															<div class="drp-calendar right">
																<div class="calendar-table">
																	<table class="table-condensed">
																		<thead>
																			<tr>
																				<th></th>
																				<th colspan="5" class="month">Apr 2023</th>
																				<th class="next available"><span></span></th>
																			</tr>
																			<tr>
																				<th>일</th>
																				<th>월</th>
																				<th>화</th>
																				<th>수</th>
																				<th>목</th>
																				<th>금</th>
																				<th>토</th>
																			</tr>
																		</thead>
																		<tbody>
																			<tr>
																				<td class="weekend off ends available"
																					data-title="r0c0">26</td>
																				<td class="off ends available" data-title="r0c1">27</td>
																				<td class="off ends available" data-title="r0c2">28</td>
																				<td class="off ends available" data-title="r0c3">29</td>
																				<td class="off ends available" data-title="r0c4">30</td>
																				<td class="off ends available" data-title="r0c5">31</td>
																				<td class="weekend available" data-title="r0c6">1</td>
																			</tr>
																			<tr>
																				<td class="weekend available" data-title="r1c0">2</td>
																				<td class="available" data-title="r1c1">3</td>
																				<td class="available" data-title="r1c2">4</td>
																				<td class="available" data-title="r1c3">5</td>
																				<td class="available" data-title="r1c4">6</td>
																				<td class="available" data-title="r1c5">7</td>
																				<td class="weekend available" data-title="r1c6">8</td>
																			</tr>
																			<tr>
																				<td class="weekend available" data-title="r2c0">9</td>
																				<td class="available" data-title="r2c1">10</td>
																				<td class="available" data-title="r2c2">11</td>
																				<td class="active start-date available"
																					data-title="r2c3">12</td>
																				<td class="in-range available" data-title="r2c4">13</td>
																				<td class="in-range available" data-title="r2c5">14</td>
																				<td class="weekend in-range available"
																					data-title="r2c6">15</td>
																			</tr>
																			<tr>
																				<td class="weekend in-range available"
																					data-title="r3c0">16</td>
																				<td class="in-range available" data-title="r3c1">17</td>
																				<td class="in-range available" data-title="r3c2">18</td>
																				<td class="in-range available" data-title="r3c3">19</td>
																				<td class="in-range available" data-title="r3c4">20</td>
																				<td class="in-range available" data-title="r3c5">21</td>
																				<td class="weekend in-range available"
																					data-title="r3c6">22</td>
																			</tr>
																			<tr>
																				<td class="weekend in-range available"
																					data-title="r4c0">23</td>
																				<td class="in-range available" data-title="r4c1">24</td>
																				<td class="in-range available" data-title="r4c2">25</td>
																				<td class="in-range available" data-title="r4c3">26</td>
																				<td class="in-range available" data-title="r4c4">27</td>
																				<td class="in-range available" data-title="r4c5">28</td>
																				<td
																					class="weekend active end-date in-range available"
																					data-title="r4c6">29</td>
																			</tr>
																			<tr>
																				<td class="weekend available" data-title="r5c0">30</td>
																				<td class="off ends available" data-title="r5c1">1</td>
																				<td class="off ends available" data-title="r5c2">2</td>
																				<td class="off ends available" data-title="r5c3">3</td>
																				<td class="off ends available" data-title="r5c4">4</td>
																				<td class="off ends available" data-title="r5c5">5</td>
																				<td class="weekend off ends available"
																					data-title="r5c6">6</td>
																			</tr>
																		</tbody>
																	</table>
																</div>
																<div class="calendar-time" style="display: none;"></div>
															</div>
															<div class="drp-buttons">
																<span class="drp-selected"></span>
																<button class="cancelBtn btn btn-sm btn-default"
																	type="button">Cancel</button>
																<button class="applyBtn btn btn-sm btn-primary"
																	type="button">Apply</button>
															</div>
														</div>
													</div>
													<input type="text" class="form-control float-right"
														id="reservation">
												</div> <span data-dsl="{{text:subject}}"></span>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="row" style="margin-top: -10px;">
							<div class="col-12">
								<table class="detailSection" style="margin-top: 8px;">
									<colgroup>
										<col width="100">
										<col width="700">
									</colgroup>
									<tbody>
										<tr>
											<td colspan="1" class="ACel" width="13%;">강의 목표</td>
											<td colspan="1" class="BCel"><span
												data-dsl="{{text:subject}}"><input type="text"
													style="width: 100%;"></span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="row" style="margin-top: -11px;">
							<div class="col-12">
								<table class="detailSection"
									style="margin-top: 8px; height: 100px;">
									<colgroup>
										<col width="100">
										<col width="700">
									</colgroup>
									<tbody>
										<tr>
											<td colspan="1" class="ACel" width="13%;">강의 방법</td>
											<td colspan="1" class="BCel"><textarea
													style="width: 100%; height: 100px;"></textarea> <span
												data-dsl="{{text:subject}}"></span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="row" style="margin-top: -11px;">
							<div class="col-12">
								<table class="detailSection"
									style="margin-top: 8px; height: 300px;">
									<colgroup>
										<col width="100">
										<col width="700">
									</colgroup>
									<tbody>
										<tr>
											<td colspan="1" class="ACel" width="13%;">강의 내용</td>
											<td colspan="1" class="BCel"><textarea
													style="width: 100%; height: 300px;"></textarea> <span
												data-dsl="{{text:subject}}"></span></td>
										</tr>
									</tbody>

								</table>

							</div>
						</div>
					</div>
					<!-- 2. Draft Section (end) -->
					<!-- 3. Detail Section (start) -->


					<!-- 3. Detail Section (end) -->


				</form>
			</div>
			<!--버튼추가  -->
			<div class="row"
				style="margin-top: 30px; margin-left: 20px; margin-bottom: 20px;">
				<div class="col-3">
					<button type="button" id="registBtn" style="width: 100px;"
						onclick="" class="btn btn-info">승&nbsp;&nbsp;인</button>
				</div>
				<div class="col-3">
					<button type="button" id="registBtn" style="width: 100px;"
						onclick="" class="btn btn-info">임&nbsp;시&nbsp;저&nbsp;장</button>
				</div>
				<div class="col-3">
					<button type="button" id="registBtn" style="width: 100px;"
						onclick="" class="btn btn-info">반&nbsp;&nbsp;려</button>
				</div>

				<div class="col-3">
					<button type="button" id="cancelBtn" style="width: 100px;"
						onclick="CloseWindow();" class="btn btn-info">취
						&nbsp;&nbsp;소</button>
				</div>

			</div>
		</div>
	
	<!-- 강의계획서양식 끝 -->
	</div>
	<!-- 강의계획서작성 우측페이지끝 -->
</div>

		<!-- 강의계획서 끝 -->
</div>
<!-- Page Wrapping (end) -->

						<!--강의계획서 끝  -->
						</div>
					</div>
				</div>
			</div>

	<!-- webcontent -->
	
<!-- 3tab 강의계획서 캘린더 시작 -->

<script>
	window.onload = function() {

		$(function() {
			//Initialize Select2 Elements
			$('.select2').select2()

			//Initialize Select2 Elements
			$('.select2bs4').select2({
				theme : 'bootstrap4'
			})

			//Datemask dd/mm/yyyy
			$('#datemask').inputmask('dd/mm/yyyy', {
				'placeholder' : 'dd/mm/yyyy'
			})
			//Datemask2 mm/dd/yyyy
			$('#datemask2').inputmask('mm/dd/yyyy', {
				'placeholder' : 'mm/dd/yyyy'
			})
			//Money Euro
			$('[data-mask]').inputmask()

			//Date picker
			$('#reservationdate').datetimepicker({
				format : 'L'
			});

			//Date and time picker
			$('#reservationdatetime').datetimepicker({
				icons : {
					time : 'far fa-clock'
				}
			});

			//Date range picker
			$('#reservation').daterangepicker()
			//Date range picker with time picker
			$('#reservationtime').daterangepicker({
				timePicker : true,
				timePickerIncrement : 30,
				locale : {
					format : 'MM/DD/YYYY hh:mm A'
				}
			})
			//Date range as a button
			$('#daterange-btn').daterangepicker(
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
					})

			//Timepicker
			$('#timepicker').datetimepicker({
				format : 'LT'
			})

			//Bootstrap Duallistbox
			$('.duallistbox').bootstrapDualListbox()

			//Colorpicker
			$('.my-colorpicker1').colorpicker()
			//color picker with addon
			$('.my-colorpicker2').colorpicker()

			$('.my-colorpicker2').on(
					'colorpickerChange',
					function(event) {
						$('.my-colorpicker2 .fa-square').css('color',
								event.color.toString());
					})

			$("input[data-bootstrap-switch]").each(function() {
				$(this).bootstrapSwitch('state', $(this).prop('checked'));
			})

		})
		// BS-Stepper Init
		document.addEventListener('DOMContentLoaded', function() {
			window.stepper = new Stepper(document.querySelector('.bs-stepper'))
		})

		// DropzoneJS Demo Code Start
		Dropzone.autoDiscover = false

		// Get the template HTML and remove it from the doumenthe template HTML and remove it from the doument
		var previewNode = document.querySelector("#template")
		previewNode.id = ""
		var previewTemplate = previewNode.parentNode.innerHTML
		previewNode.parentNode.removeChild(previewNode)

		var myDropzone = new Dropzone(document.body, { // Make the whole body a dropzone
			url : "/target-url", // Set the url
			thumbnailWidth : 80,
			thumbnailHeight : 80,
			parallelUploads : 20,
			previewTemplate : previewTemplate,
			autoQueue : false, // Make sure the files aren't queued until manually added
			previewsContainer : "#previews", // Define the container to display the previews
			clickable : ".fileinput-button" // Define the element that should be used as click trigger to select files.
		})

		myDropzone.on("addedfile", function(file) {
			// Hookup the start button
			file.previewElement.querySelector(".start").onclick = function() {
				myDropzone.enqueueFile(file)
			}
		})

		// Update the total progress bar
		myDropzone
				.on(
						"totaluploadprogress",
						function(progress) {
							document
									.querySelector("#total-progress .progress-bar").style.width = progress
									+ "%"
						})

		myDropzone.on("sending", function(file) {
			// Show the total progress bar when upload starts
			document.querySelector("#total-progress").style.opacity = "1"
			// And disable the start button
			file.previewElement.querySelector(".start").setAttribute(
					"disabled", "disabled")
		})

		// Hide the total progress bar when nothing's uploading anymore
		myDropzone.on("queuecomplete", function(progress) {
			document.querySelector("#total-progress").style.opacity = "0"
		})

		// Setup the buttons for all transfers
		// The "add files" button doesn't need to be setup because the config
		// `clickable` has already been specified.
		document.querySelector("#actions .start").onclick = function() {
			myDropzone.enqueueFiles(myDropzone
					.getFilesWithStatus(Dropzone.ADDED))
		}
		document.querySelector("#actions .cancel").onclick = function() {
			myDropzone.removeAllFiles(true)
		}
	}
	// DropzoneJS Demo Code End
</script>
<!-- 3tab 강의계획서 캘린더 끝 -->




