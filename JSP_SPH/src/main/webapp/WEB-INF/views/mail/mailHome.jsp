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

<!-- S:iframe -->


      <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0">메일함</h1>
            </div>
            <!-- <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Dashboard v3</li>
              </ol>
            </div> -->
          </div>
        </div>
      </div>

      <div class="col-md-12">
						<div class="card card">
							<div class="card-header " style="background:rgb(180, 220, 255);">
								<h3 class="card-title">받은메일함</h3>
								<div class="card-tools">
									<div class="input-group input-group-sm">
										<input type="text" class="form-control"
											placeholder="Search Mail">
										<div class="input-group-append">
											<div class="btn btn-primary">
												<i class="fas fa-search"></i>
											</div>
										</div>
									</div>
								</div>

							</div>

							<div class="card-body p-0">
								<div class="mailbox-controls">

									<button type="button"
										class="btn btn-default btn-sm checkbox-toggle">
										<i class="far fa-square"></i>
									</button>
									<div class="btn-group">
										<button type="button" class="btn btn-default btn-sm">
											<i class="far fa-trash-alt"> 삭제</i>
										</button>

										<!-- <button type="button" class="btn btn-default btn-sm">
											<i class="fas fa-reply"></i>
										</button>
										 -->
										<button type="button" class="btn btn-default btn-sm">
											<i class="fas fa-share"> 답장</i>
										</button>
									</div>


									<button type="button" class="btn btn-default btn-sm">
										<i class="fa-regular fa-folder"> 이동</i>
									</button>
									<div class="float-right">

										<div class="btn-group">
											<button type="button" class="btn btn-default btn-sm">
												<i class="fa-solid fa-sort"></i> <select
													class="fa-solid fa-sort" name="perPageNum"
													id="perPageNum" onchange="list_go('${cri.page }');">
													<option value="10"
														${cri.perPageNum eq 10 ? 'selected' : '' }>정렬개수</option>
													<option value="10" ${cri.perPageNum eq 10 ? 'selected' : '' }>10개씩</option>
													<option value="15" ${cri.perPageNum eq 15 ? 'selected' : '' }>15개씩</option>
													<option value="20" ${cri.perPageNum eq 20 ? 'selected' : '' }>20개씩</option>
												</select>

											</button>

										</div>

									</div>
									<div class="table-responsive mailbox-messages">
										<table class="table table-hover ">
											<tbody>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check1"> <label
																for="check1"></label>
														</div>
													</td>
													<td class="mailbox-star"><a href="#"><i
															class="fas fa-star text-warning"></i></a></td>
													<td class="mailbox-name"><a href="read-mail.html">Alexander
															Pierce</a></td>
													<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b>
														- Trying to find a solution to this problem...</td>
													<td class="mailbox-attachment"></td>
													<td class="mailbox-date">5 mins ago</td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check2"> <label
																for="check2"></label>
														</div>
													</td>
													<td class="mailbox-star"><a href="#"><i
															class="fas fa-star-o text-warning"></i></a></td>
													<td class="mailbox-name"><a href="read-mail.html">Alexander
															Pierce</a></td>
													<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b>
														- Trying to find a solution to this problem...</td>
													<td class="mailbox-attachment"><i
														class="fas fa-paperclip"></i></td>
													<td class="mailbox-date">28 mins ago</td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check3"> <label
																for="check3"></label>
														</div>
													</td>
													<td class="mailbox-star"><a href="#"><i
															class="fas fa-star-o text-warning"></i></a></td>
													<td class="mailbox-name"><a href="read-mail.html">Alexander
															Pierce</a></td>
													<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b>
														- Trying to find a solution to this problem...</td>
													<td class="mailbox-attachment"><i
														class="fas fa-paperclip"></i></td>
													<td class="mailbox-date">11 hours ago</td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check4"> <label
																for="check4"></label>
														</div>
													</td>
													<td class="mailbox-star"><a href="#"><i
															class="fas fa-star text-warning"></i></a></td>
													<td class="mailbox-name"><a href="read-mail.html">Alexander
															Pierce</a></td>
													<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b>
														- Trying to find a solution to this problem...</td>
													<td class="mailbox-attachment"></td>
													<td class="mailbox-date">15 hours ago</td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check5"> <label
																for="check5"></label>
														</div>
													</td>
													<td class="mailbox-star"><a href="#"><i
															class="fas fa-star text-warning"></i></a></td>
													<td class="mailbox-name"><a href="read-mail.html">Alexander
															Pierce</a></td>
													<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b>
														- Trying to find a solution to this problem...</td>
													<td class="mailbox-attachment"><i
														class="fas fa-paperclip"></i></td>
													<td class="mailbox-date">Yesterday</td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check10"> <label
																for="check10"></label>
														</div>
													</td>
													<td class="mailbox-star"><a href="#"><i
															class="fas fa-star-o text-warning"></i></a></td>
													<td class="mailbox-name"><a href="read-mail.html">Alexander
															Pierce</a></td>
													<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b>
														- Trying to find a solution to this problem...</td>
													<td class="mailbox-attachment"></td>
													<td class="mailbox-date">2 days ago</td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check11"> <label
																for="check11"></label>
														</div>
													</td>
													<td class="mailbox-star"><a href="#"><i
															class="fas fa-star-o text-warning"></i></a></td>
													<td class="mailbox-name"><a href="read-mail.html">Alexander
															Pierce</a></td>
													<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b>
														- Trying to find a solution to this problem...</td>
													<td class="mailbox-attachment"><i
														class="fas fa-paperclip"></i></td>
													<td class="mailbox-date">4 days ago</td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check12"> <label
																for="check12"></label>
														</div>
													</td>
													<td class="mailbox-star"><a href="#"><i
															class="fas fa-star text-warning"></i></a></td>
													<td class="mailbox-name"><a href="read-mail.html">Alexander
															Pierce</a></td>
													<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b>
														- Trying to find a solution to this problem...</td>
													<td class="mailbox-attachment"></td>
													<td class="mailbox-date">12 days ago</td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check13"> <label
																for="check13"></label>
														</div>
													</td>
													<td class="mailbox-star"><a href="#"><i
															class="fas fa-star-o text-warning"></i></a></td>
													<td class="mailbox-name"><a href="read-mail.html">Alexander
															Pierce</a></td>
													<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b>
														- Trying to find a solution to this problem...</td>
													<td class="mailbox-attachment"><i
														class="fas fa-paperclip"></i></td>
													<td class="mailbox-date">12 days ago</td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check14"> <label
																for="check14"></label>
														</div>
													</td>
													<td class="mailbox-star"><a href="#"><i
															class="fas fa-star text-warning"></i></a></td>
													<td class="mailbox-name"><a href="read-mail.html">Alexander
															Pierce</a></td>
													<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b>
														- Trying to find a solution to this problem...</td>
													<td class="mailbox-attachment"><i
														class="fas fa-paperclip"></i></td>
													<td class="mailbox-date">14 days ago</td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check15"> <label
																for="check15"></label>
														</div>
													</td>
													<td class="mailbox-star"><a href="#"><i
															class="fas fa-star text-warning"></i></a></td>
													<td class="mailbox-name"><a href="read-mail.html">Alexander
															Pierce</a></td>
													<td class="mailbox-subject"><b>AdminLTE 3.0 Issue</b>
														- Trying to find a solution to this problem...</td>
													<td class="mailbox-attachment"><i
														class="fas fa-paperclip"></i></td>
													<td class="mailbox-date">15 days ago</td>
												</tr>
											</tbody>
										</table>

									</div>

								</div>

								<div class="card-footer p-0">
									<div class="mailbox-controls">

										<ul class="pagination justify-content-center m-0">
											<li class="page-item"><a class="page-link"
												href="javascript:list_go(1);"> <i
													class="fas fa-angle-double-left"></i>
											</a></li>
											<li class="page-item"><a class="page-link"
												href="javascript:list_go(${pageMaker.prev ? pageMaker.startPage-1 : pageMaker.cri.page});">
													<i class="fas fa-angle-left"></i>
											</a></li>
											<c:forEach var="pageNum" begin="${pageMaker.startPage }"
												end="${pageMaker.endPage }">

												<li
													class="page-item ${pageMaker.cri.page == pageNum?'active':''}">
													<a class="page-link"
													href="javascript:list_go('${pageNum}');">${pageNum }</a>
												</li>
											</c:forEach>

											<li class="page-item"><a class="page-link"
												href="javascript:list_go(${pageMaker.next ? pageMaker.endPage+1 :pageMaker.cri.page});">
													<i class="fas fa-angle-right"></i>
											</a></li>

											<li class="page-item"><a class="page-link"
												href="javascript:list_go('${pageMaker.realEndPage}');">
													<i class="fas fa-angle-double-right"></i>
											</a></li>
										</ul>
									</div>
								</div>
							</div>

						</div>

					</div>

   <!-- E:content-wrapper -->