<!-- S:footer -->

<aside class="control-sidebar control-sidebar-dark"></aside>


</div>
<!-- E:wrapper -->

<!-- MainFooterScript -->
<script>
	function open_Page(url,mCode){
		$('iframe[name="ifr"]').attr("src",url);
		if(typeof(history.pushState) == 'function'){
			var renewURL = location.href;
			renewURL = renewURL.substring(0, renewURL.indexOf(".do")+3);
			
			if(mCode != 'M0000000'){
				renewURL += "?mCode="+mCode;
			}
			history.pushState(mCode,null,renewURL);
		
		} else {
			location.hash = "#"+mCode;
		}
		
	}
	
	function open_SubMenu(mCode){
		if(mCode!="M000000"){
			$.ajax({
				url:"<%=request.getContextPath()%>/subMenu.do?mCode="+mCode,
				type:"get",
				success:function(data){
					printData(data,$('.subMenuList'),$('#subMenu-list-template'),'.subMenu');
				},
				error:function(error){
					AjaxErrorSecurityRedirectHandler(error.status);
				}
			});
		}else{
			$('.subMenuList').html("");
		}
	}
	
	function printData(dataArr,target,templateObject,removeSelector){
		
		var template=Handlebars.compile(templateObject.html());
		
		var html = template(dataArr);
		
		$(removeSelector).remove();
		target.append(html);
	}
	
	
	window.onload=function(){
		open_Page('<%=request.getContextPath()%>${menu.murl}','${menu.mcode}');
		open_SubMenu('${menu.mcode}'.substring(0,3)+"0000");
	}
	</script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>
<script type="text/x-handlebars-template" id="subMenu-list-template">
{{#each .}}
	<li class="nav-item subMenu" >
    	<a href="javascript:open_Page('<%=request.getContextPath()%>{{murl}}','{{mcode}}');"	class="nav-link">
        	<i class="{{micon}}"></i>
            <p>{{mname}}</p>
       	</a>
	</li>
{{/each}}
</script>




<script
	src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
<!-- DashBoard3 -->
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/pages/dashboard3.js"></script>
<!-- common.js  -->
<script src="<%=request.getContextPath()%>/resources/js/common.min.js"></script>
</body>
</html>