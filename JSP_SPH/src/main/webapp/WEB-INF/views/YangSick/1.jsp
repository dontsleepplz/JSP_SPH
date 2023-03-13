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

<script
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<!-- Theme style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/bootstrap/dist/css/adminlte.min.css">
<script nonce="c2295416-0a68-41c6-b12c-5d08b10f3b20">(function(w,d){!function(f,g,h,i){f[h]=f[h]||{};f[h].executed=[];f.zaraz={deferred:[],listeners:[]};f.zaraz.q=[];f.zaraz._f=function(j){return function(){var k=Array.prototype.slice.call(arguments);f.zaraz.q.push({m:j,a:k})}};for(const l of["track","set","debug"])f.zaraz[l]=f.zaraz._f(l);f.zaraz.init=()=>{var m=g.getElementsByTagName(i)[0],n=g.createElement(i),o=g.getElementsByTagName("title")[0];o&&(f[h].t=g.getElementsByTagName("title")[0].text);f[h].x=Math.random();f[h].w=f.screen.width;f[h].h=f.screen.height;f[h].j=f.innerHeight;f[h].e=f.innerWidth;f[h].l=f.location.href;f[h].r=g.referrer;f[h].k=f.screen.colorDepth;f[h].n=g.characterSet;f[h].o=(new Date).getTimezoneOffset();if(f.dataLayer)for(const s of Object.entries(Object.entries(dataLayer).reduce(((t,u)=>({...t[1],...u[1]})))))zaraz.set(s[0],s[1],{scope:"page"});f[h].q=[];for(;f.zaraz.q.length;){const v=f.zaraz.q.shift();f[h].q.push(v)}n.defer=!0;for(const w of[localStorage,sessionStorage])Object.keys(w||{}).filter((y=>y.startsWith("_zaraz_"))).forEach((x=>{try{f[h]["z_"+x.slice(7)]=JSON.parse(w.getItem(x))}catch{f[h]["z_"+x.slice(7)]=w.getItem(x)}}));n.referrerPolicy="origin";n.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(f[h])));m.parentNode.insertBefore(n,m)};["complete","interactive"].includes(g.readyState)?zaraz.init():f.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script>
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<div class="row">
			<div class="col-8">
				<div class="card card-info">
					<div class="card-header" style="background: rgb(180, 220, 255);">
						<h3 class="card-title"
							style="padding-top: 10px; padding-left: 30px; color: black;">휴가신청서</h3>
						<button type="reset" class="btn btn-default float-right">
							<i class="fas fa-times float-reight "></i> 닫기
						</button>
						<button type="button" class="btn btn-default float-right">
							<i class="fas fa-pencil-alt"></i> 등록
						</button>

					</div>
					<form class="form-horizontal">
						<div class="card-body">
							<div class="form-group row">
								<label for="inputEmail3" class="col-sm-2 col-form-label"
									style="padding-left: 50px;">부서</label>
								<div class="col-sm-10">
									<input type="email" class="form-control" id="inputEmail3"
										placeholder="">
								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword3" class="col-sm-2 col-form-label"
									style="padding-left: 50px;">직위/직책</label>
								<div class="col-sm-10">
									<select class="custom-select rounded-0"
										id="exampleSelectRounded0">
										<option>사원</option>
										<option>과장</option>
									</select>

								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword3" class="col-sm-2 col-form-label"
									style="padding-left: 50px;">신청자</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="inputPassword3"
										placeholder="">
								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword3" class="col-sm-2 col-form-label"
									style="padding-left: 50px; padding-top:35px;">기안일</label>

								<div class="form-group">
									<label></label>
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"><i class="far fa-clock"></i></span>
										</div>
										<input type="text" name="daterange"
											class="form-control float-right" id="reservationtime">
									</div>

								</div>

								<!-- div class="col-sm-10">
									<input type="password" class="form-control" id="inputPassword3"
										placeholder=""> -->
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPassword3" class="col-sm-2 col-form-label"
								style="padding-left: 50px;">휴가일수</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="inputPassword3"
									placeholder="">
							</div>
						</div>
				
				<div class="form-group row">
					<label for="inputPassword3" class="col-sm-2 col-form-label"
						style="padding-left: 56px;"> 휴가종류</label>
					<div class="col-sm-10">
						<select class="custom-select rounded-0" id="exampleSelectRounded0">
							<option>연차휴가</option>
							<option>출산휴가</option>
							<option>배우자출산휴가</option>
							<option>생리휴가</option>
							<option>가족돌봄휴가</option>
							<option>병가</option>
						</select>

					</div>
				</div>

				<div class="card-body">
					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label"
							style="padding-left: 50px;">휴가사유</label>
						<div class="col-sm-10" style="border: 1px solid #ced4da;">
							<div class="note-editable card-block" style="height: 400px;"
								contenteditable="true" role="textbox" aria-multiline="true"
								spellcheck="true" autocorrect="true"></div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

	<aside class="control-sidebar control-sidebar-dark"></aside>

	</div>


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
  
</script>
</body>
</html>