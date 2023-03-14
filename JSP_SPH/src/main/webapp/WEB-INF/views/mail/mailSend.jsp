<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Mailbox</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/plugins/fontawesome-free/css/all.min.css">

<link rel="stylesheet" href=<%=request.getContextPath()%>/resources/bootstrap/plugins/summernote/summernote-bs4.min.css">

<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
<script nonce="c2295416-0a68-41c6-b12c-5d08b10f3b20">(function(w,d){!function(f,g,h,i){f[h]=f[h]||{};f[h].executed=[];f.zaraz={deferred:[],listeners:[]};f.zaraz.q=[];f.zaraz._f=function(j){return function(){var k=Array.prototype.slice.call(arguments);f.zaraz.q.push({m:j,a:k})}};for(const l of["track","set","debug"])f.zaraz[l]=f.zaraz._f(l);f.zaraz.init=()=>{var m=g.getElementsByTagName(i)[0],n=g.createElement(i),o=g.getElementsByTagName("title")[0];o&&(f[h].t=g.getElementsByTagName("title")[0].text);f[h].x=Math.random();f[h].w=f.screen.width;f[h].h=f.screen.height;f[h].j=f.innerHeight;f[h].e=f.innerWidth;f[h].l=f.location.href;f[h].r=g.referrer;f[h].k=f.screen.colorDepth;f[h].n=g.characterSet;f[h].o=(new Date).getTimezoneOffset();if(f.dataLayer)for(const s of Object.entries(Object.entries(dataLayer).reduce(((t,u)=>({...t[1],...u[1]})))))zaraz.set(s[0],s[1],{scope:"page"});f[h].q=[];for(;f.zaraz.q.length;){const v=f.zaraz.q.shift();f[h].q.push(v)}n.defer=!0;for(const w of[localStorage,sessionStorage])Object.keys(w||{}).filter((y=>y.startsWith("_zaraz_"))).forEach((x=>{try{f[h]["z_"+x.slice(7)]=JSON.parse(w.getItem(x))}catch{f[h]["z_"+x.slice(7)]=w.getItem(x)}}));n.referrerPolicy="origin";n.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(f[h])));m.parentNode.insertBefore(n,m)};["complete","interactive"].includes(g.readyState)?zaraz.init():f.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script>
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
					</div>

					<div class="col-md-8">
						<div class="card card">
							<div class="card-header" style="background: rgb(180, 220, 255);">
								<h3 class="card-title" style=padding-top:10px;>메일쓰기</h3>
								<div class="float-right">
									<button type="button" class="btn btn-default ">
										<i class="fas fa-pencil-alt"></i> 임시저장
									</button>
									<button type="button" class="btn btn-default">
										<i class="fa-regular fa-paper-plane"></i> 보내기
									</button>
									<button type="reset" class="btn btn-default">
										<i class="fas fa-times"></i> 닫기
									</button>
								</div>
							</div>

							<div class="card-body">


								<div class="form-group">
									<div class="row">
										<input class="form-control" placeholder="받는사람 :"
											style="width: 88%" style="pdding:0.55rem;">
										<button type="button" class="btn btn-default">
											<i class="fa-regular fa-address-card"></i> 주소록
										</button>
									</div>
								</div>
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="제목 :"
									style="width: 100%;">
							</div>
							<div class="form-group">
								<div class="form-group" style="border: 1px solid #ced4da;" >
									<div class="note-editable card-block" style="height:600px;" contenteditable="true"
										role="textbox" aria-multiline="true" spellcheck="true"
										autocorrect="true">

									</div>

								</div>
								<div class="form-group">
									<div class="btn btn-default btn-file">
										<i class="fas fa-paperclip"></i> 첨부파일 <input type="file"
											name="attachment">
									</div>
									<p class="help-block"></p>
								</div>
							</div>

							<div class="card-footer"></div>

						</div>

					</div>


	<footer class="main-footer">
		<!-- 	<div class="float-right d-none d-sm-block">
				<b>Version</b> 3.2.0
			</div>
			<strong>Copyright &copy; 2014-2021 <a
				href="https://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved. -->
	</footer>

	<aside class="control-sidebar control-sidebar-dark"></aside>



	<script src="../../plugins/jquery/jquery.min.js"></script>

	<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="../../dist/js/adminlte.min.js?v=3.2.0"></script>

	<script src="../../plugins/summernote/summernote-bs4.min.js"></script>

	<script src="../../dist/js/demo.js"></script>

	<script>
  $(function () {
    //Add text editor
    $('#compose-textarea').summernote()
  })
</script>
</body>
</html>