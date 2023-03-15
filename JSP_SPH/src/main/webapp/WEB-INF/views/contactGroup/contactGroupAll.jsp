<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
ul, li {
	margin: 0;
	padding: 0;
	list-style: none;
}

a {
	text-decoration: none;
	color: inherit;
}
</style>

<div class="content">

	<div class="content-header">

		<div class="container-fluid">

			<div class="row mb-2">

				<div class="col-md-7">
					<h1>전체주소록</h1>
				</div>

				<div class="col-md-5">
					
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

					<div class="col-md-12 text-center" style="padding: 10px;">
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
							<div class="card-body">
								<p>이사 : 김 아무개</p>
							</div>
							<div class="card-body" style="overflow: auto;">
								<c:if test="${!empty departList }">
									<c:forEach items="${departList }" var="depart">
										<ul>
											<li style="cursor: pointer;"><a href="#">${depart.name }</a></li>
										</ul>
									</c:forEach>
								</c:if>

								<c:if test="${empty departList }">
									<div colspan="7" class="text-center">해당내용이 없습니다.</div>
								</c:if>
							</div>
						</div>
					</div>

				</div>
				<!-- ./col-md-4 -->

				<div class="col-md-9">
				<div class="row">
					<div class="col-md-6" style="height: 45px;">
						<button type="button" class="btn btn-primary float-left"
							style="max-width: 180px; cursor: pointer;">
							개인주소록 추가&nbsp;&nbsp;<i class="fas fa-plus"></i>
						</button>
					</div>
					<div class="col-md-6">
					<div class="form-inline">
						<!-- search bar -->
						<!-- sort num -->
						<select class="form-control col-md-3" name="perPageNum"
							id="perPageNum" onchange="list_go('${cri.page }');">
							<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>정렬개수</option>
							<option value="2" ${cri.perPageNum eq 2 ? 'selected' : '' }>2개씩</option>
							<option value="3" ${cri.perPageNum eq 3 ? 'selected' : '' }>3개씩</option>
							<option value="5" ${cri.perPageNum eq 5 ? 'selected' : '' }>5개씩</option>
						</select>

						<!-- search bar -->
						<select class="form-control col-md-3" name="searchType"
							id="searchType">
							<option value="">검색구분</option>
							<option value="i" ${cri.searchType=='i' ? 'selected':'' }>아이디</option>
							<option value="n" ${cri.searchType=='n' ? 'selected':'' }>이	름</option>
							<option value="p" ${cri.searchType=='p' ? 'selected':'' }>전화번호</option>
							<option value="e" ${cri.searchType=='e' ? 'selected':'' }>이메일</option>
						</select>
						<!-- keyword -->
						<input class="form-control col-md-5" type="text" name="keyword"
							placeholder="검색어를 입력하세요." value="${cri.keyword }" /> <span
							class="input-group-append">
							<button class="btn btn-primary" type="button" id="searchBtn"
								data-card-widget="search" onclick="list_go(1);">
								<i class="fa fa-fw fa-search"></i>
							</button>
						</span>
						<!-- end : search bar -->
					</div>
					</div>
					</div>
					<div class="col-sm-12">
						<table class="table table-bordered text-center">
							<tr>
								<th>사진</th>
								<th>이름</th>
								<th>직급</th>
								<th>부서</th>
								<th>전화번호</th>
								<th>이메일</th>
							</tr>
							<c:if test="${!empty memberList }">
								<c:forEach items="${memberList }" var="member">
									<tr>
										<td
											style="margin: 0; padding: 0; padding-top: 5px; width: 10%;"><input
											type="checkbox"> <span class="manPicture"
											data-id="${member.id }"
											style="display: block; width: 40px; height: 40px; margin: 0 auto;"></span>
										</td>
										<td style="width: 12%;">${member.name }</td>
										<td style="width: 12%;">${member.rankCode }</td>
										<td style="width: 16%;">${member.departCode }</td>
										<td style="width: 25%;">${member.phone.replace('-','') }</td>
										<td style="width: 25%; cursor: pointer;">${member.email }</td>
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
					
					<div class="card-footer">
						<!-- pagination -->
						<div style="display:${!empty memberList ? 'visible':'none' };">
							<%@ include file="/WEB-INF/module/pagination.jsp"%>
						</div>
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