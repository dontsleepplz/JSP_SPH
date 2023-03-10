<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<style>
</style>

<div class="content">

	<div class="content-header">

		<div class="container-fluid">

			<div class="row mb-2">

				<div class="col-md-10">
					<h1>전체주소록</h1>
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

				<div class="col-md-3">

					<div class="col-md-12 text-center" style="padding: 5px;">
						<div style="display: inline">
							<a href="#">전체</a>
						</div>
						<div style="display: inline">
							<a href="#">ㄱ</a>
						</div>
						<div style="display: inline">
							<a href="#">ㄴ</a>
						</div>
						<div style="display: inline">
							<a href="#">ㄷ</a>
						</div>
						<div style="display: inline">
							<a href="#">ㄹ</a>
						</div>
						<div style="display: inline">
							<a href="#">ㅁ</a>
						</div>
						<div style="display: inline">
							<a href="#">ㅂ</a>
						</div>
						<div style="display: inline">
							<a href="#">ㅅ</a>
						</div>
						<div style="display: inline">
							<a href="#">ㅇ</a>
						</div>
						<div style="display: inline">
							<a href="#">ㅈ</a>
						</div>
						<div style="display: inline">
							<a href="#">ㅊ</a>
						</div>
						<div style="display: inline">
							<a href="#">ㅋ</a>
						</div>
						<div style="display: inline">
							<a href="#">ㅌ</a>
						</div>
						<div style="display: inline">
							<a href="#">ㅍ</a>
						</div>
						<div style="display: inline">
							<a href="#">ㅎ</a>
						</div>
					</div>

					<div class="col-md-12">
						<div class="card card-row card-primary" style="height: 85vh;">
							<div class="card-header">
								<h1 class="card-title">조 직 도</h1>
							</div>
							<div class="card-body" style="overflow: auto;"></div>
						</div>
					</div>

				</div>
				<!-- ./col-md-4 -->

				<div class="col-md-9">
					<div class="col-md-12">
						<button type="button" class="btn btn-primary float-left"
							style="max-width: 180px;">
						 	개인주소록 추가&nbsp;&nbsp;<i class="fas fa-plus"></i>
						</button>
					</div>

					<div class="col-sm-12">
						<table class="table table-bordered">
							<tr>
								<th>사진</th>
								<th>아이디</th>
								<th>패스워드</th>
								<th>이 름</th>
								<th>이메일</th>
								<th>전화번호</th>
								<th>등록날짜</th>
								<!-- yyyy-MM-dd  -->
							</tr>
							<c:if test="${!empty memberList }">
								<c:forEach items="${memberList }" var="member">
									<tr style="cursor: pointer;"
										onclick="OpenWindow('detail.do?id=${member.id}','회원상세',700,800);">
										<td style="margin: 0; padding: 0; padding-top: 5px;"><span
											class="manPicture" data-id="${member.id }"
											style="display: block; width: 40px; height: 40px; margin: 0 auto;"></span>
										</td>
										<td>${member.id }</td>
										<td>${member.pwd }</td>
										<td>${member.name }</td>
										<td>${member.email }</td>
										<td>${member.phone.replace('-','')  }</td>
										<td><fmt:formatDate value="${member.regDate }"
												pattern="yyyy-MM-dd" /></td>
									</tr>
								</c:forEach>
							</c:if>

							<c:if test="${empty memberList }">
								<tr>
									<td colspan="7" class="text-center">해당내용이 없습니다.</td>
								</tr>
							</c:if>
						</table>
					</div>
					
				</div>
				<!-- ./col-md-9 -->

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