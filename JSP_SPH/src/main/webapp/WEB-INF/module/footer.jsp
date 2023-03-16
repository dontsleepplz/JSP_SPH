<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- S:footer -->

<aside class="control-sidebar control-sidebar-dark"></aside>


</div>
<!-- E:wrapper -->

<!-- MainFooterScript -->
<script>
	function submenu_loc(){
		var side = document.getElementById("sidebar");
		if(side==null){
			$('div[id="content-wrapper"]').css('margin-left','0');
			
		};
	}

	function open_Page(url,mCode){
		if(mCode=="M000000"){
			$('div#sidebar').css('display','none');
			$('div#content-wrapper').css('margin-left',0);
			$('aside.main-sidebar').css('display','inline-block');
			$('aside.main-sidebar').css('min-height','0%');
			
			$('li#pushmenu').css('display','none')
			$('body').attr('onload','getTime()');
			if($('body').hasClass('sidebar-collapse')){
				$('body').removeClass('sidebar-collapse');
				}
		}else{
			$('div#sidebar').css('display','block');
			$('div#content-wrapper').css('margin-left',250);
			$('aside.main-sidebar').css('display','block');
			$('li#pushmenu').css('display','block');
			$('aside.main-sidebar').css('min-height','100%');
			
		}
		
		
		
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




<script src="<%=request.getContextPath()%>/resources/bootstrap/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/adminlte.min.js"></script>
<!-- DashBoard3 -->
<script src="<%=request.getContextPath()%>/resources/bootstrap/dist/js/pages/dashboard3.js"></script>
<!-- common.js  -->
<script src="<%=request.getContextPath()%>/resources/js/common.min.js"></script>
</body>
</html>