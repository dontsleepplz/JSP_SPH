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

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
</head>
<style>


</style>
<body class="hold-transition sidebar-mini">
  <div class="wrapper">

    <nav class="main-header navbar navbar-expand navbar-white navbar-light" style="background-color: rgb(180, 220, 255);">

      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          <a href="index3.html" class="nav-link">Home</a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          <a href="#" class="nav-link">Contact</a>
        </li>
      </ul>

      <ul class="navbar-nav ml-auto">

        <li class="nav-item">
          <a class="nav-link" data-widget="navbar-search" href="#" role="button">
            <i class="fas fa-search"></i>
          </a>
          <div class="navbar-search-block">
            <form class="form-inline">
              <div class="input-group input-group-sm">
                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                  <button class="btn btn-navbar" type="submit">
                    <i class="fas fa-search"></i>
                  </button>
                  <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
            </form>
          </div>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link" data-toggle="dropdown" href="#">
            <i class="far fa-comments"></i>
            <span class="badge badge-danger navbar-badge">3</span>
          </a>
          <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
            <a href="#" class="dropdown-item">

              <div class="media">
                <img src="dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
                <div class="media-body">
                  <h3 class="dropdown-item-title">
                    Brad Diesel
                    <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                  </h3>
                  <p class="text-sm">Call me whenever you can...</p>
                  <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                </div>
              </div>

            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">

              <div class="media">
                <img src="dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                <div class="media-body">
                  <h3 class="dropdown-item-title">
                    John Pierce
                    <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                  </h3>
                  <p class="text-sm">I got your message bro</p>
                  <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                </div>
              </div>

            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">

              <div class="media">
                <img src="dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                <div class="media-body">
                  <h3 class="dropdown-item-title">
                    Nora Silvester
                    <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                  </h3>
                  <p class="text-sm">The subject goes here</p>
                  <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                </div>
              </div>

            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
          </div>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link" data-toggle="dropdown" href="#">
            <i class="far fa-bell"></i>
            <span class="badge badge-warning navbar-badge">15</span>
          </a>
          <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
            <span class="dropdown-item dropdown-header">15 Notifications</span>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">
              <i class="fas fa-envelope mr-2"></i> 4 new messages
              <span class="float-right text-muted text-sm">3 mins</span>
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">
              <i class="fas fa-users mr-2"></i> 8 friend requests
              <span class="float-right text-muted text-sm">12 hours</span>
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item">
              <i class="fas fa-file mr-2"></i> 3 new reports
              <span class="float-right text-muted text-sm">2 days</span>
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-widget="fullscreen" href="#" role="button">
            <i class="fas fa-expand-arrows-alt"></i>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
            <i class="fas fa-th-large"></i>
          </a>
        </li>
      </ul>
    </nav>

    <aside class="main-sidebar sidebar-dark-primary elevation-0" style="background-color:white; border-right:1px solid #DFE1E4" >

      <a href="index3.html" class="brand-link" style="background-color: rgb(180, 220, 255);border-bottom:none;">
        <img src="<%=request.getContextPath() %>/resources/img/SPHLogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-0" style="opacity: .8;">
        <span class="brand-text font-weight-light" style="color:black;">SPH</span>
      </a>

      <div class="sidebar" >

        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
		<a href="<%=request.getContextPath()%>/mailSend"
							class="btn btn-primary btn-block mb-2" onclick="OpenWindow('detail.do?from=list&nno=${notice.nno }','상세보기',800,700);">메일쓰기</a>
            <li class="nav-item menu-open">
              <a href="#" class="nav-link active">
                <i class="fas fa-minus"></i>
                <p>
                  즐겨찾기
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="./index.html" class="nav-link">
                    <i class="fas fa-inbox"></i>
                    <p>오늘온메일함 </p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="./index2.html" class="nav-link">
                    <i class="far fa-envelope"></i>
                    <p>중요메일함 </p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item menu-open">
              <a href="#" class="nav-link active">
                <i class="fas fa-minus"></i>
                <p>
                  메일함
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="./index.html" class="nav-link">
                    <i class="fas fa-inbox"></i>
                    <p>받은메일함 </p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="./index2.html" class="nav-link">
                    <i class="far fa-envelope"></i>
                    <p>보낸메일함 </p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="./index2.html" class="nav-link">
                    <i class="far fa-file-alt"></i>
                    <p>임시보관함 </p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="./index2.html" class="nav-link">
                    <i class="far fa-trash-alt"></i>
                    <p>휴지통 </p>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </nav>

      </div>

    </aside>
<!-- E:header -->
    <div class="content-wrapper">
    
    
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
															<input type="checkbox" value="" id="check6"> <label
																for="check6"></label>
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
													<td class="mailbox-date">2 days ago</td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check7"> <label
																for="check7"></label>
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
													<td class="mailbox-date">2 days ago</td>
												</tr>
												<tr>
													<td>
														<div class="icheck-primary">
															<input type="checkbox" value="" id="check8"> <label
																for="check8"></label>
														</div>
													</td>
													<td class="mailbox-star"><a href="#"><i
															class="fas fa-star text-warning"></i></a></td>
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
															<input type="checkbox" value="" id="check9"> <label
																for="check9"></label>
														</div>
													</td>
													<td class="mailbox-star"><a href="#"><i
															class="fas fa-star text-warning"></i></a></td>
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
										</nav>
									</div>
								</div>
							</div>

						</div>

					</div>

    </div>
   <!-- E:content-wrapper -->
    <aside class="control-sidebar control-sidebar-dark">

    </aside>

    <footer class="main-footer">
      <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong>
      All rights reserved.
      <div class="float-right d-none d-sm-inline-block">
        <b>Version</b> 3.2.0
      </div>
    </footer>
  </div>

  <script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/jquery/jquery.min.js"></script>

  <script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

  <script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.js"></script>

  <script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/chart.js/Chart.min.js"></script>


  <script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/pages/dashboard3.js"></script>
</body>

</html>