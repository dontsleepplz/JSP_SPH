<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <div >
  	 
    <!-- Main content -->
    <section class="content register-page">       
		<div class="register-box">         
	    	<form role="form" class="form-horizontal"  method="post">
	    		<div class="register-card-header" >
	    			<h1 class="text-center">아이디 찾기</h1>
	    		</div>
	        	<div class="register-card-body" >
	            	
					<br />
	                           
	                <div class="form-group row">
	                  <label for="inputPassword3" class="col-sm-3 control-label text-right">이  름</label>
	
	                  <div class="col-sm-9">
	                    <input name="pwd" type="text" class="form-control" id="inputPassword3" value="${member.name }" >
	                  </div>
	                </div>
	                 
	                 <div class="form-group row">
	                  <label for="inputPassword3" class="col-sm-3 control-label text-right">전화번호</label>
	                  <div class="col-sm-9">   
	                  	<input name="phone" type="text" class="form-control" id="inputPassword3" value="${member.phone }" >	                
	                  </div>                  
	                </div>               
	              </div>  
		          <div class="card-footer" style="padding:5px 0;" >
		          		<div class="row">
			          		<div class="col-sm-6 text-center float-left">
			          			<button type="button" onclick="location.href='modifyForm.do?id=${member.id}';" id="modifyBtn" class="btn btn-info">다 음</button>
			          		</div>
		          		
			          		
			          		<div class="col-sm-6 text-center float-right">
			            		<button type="button" id="listBtn" onclick="CloseWindow();" class="btn btn-primary pull-right">닫 기</button>
			            	</div>
		          	    </div>  	
		          </div>
	      	  </form>
      	  </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  
<script>

	<c:if test="${not empty name}">
		alert("${name}님의 정보가 수정되었습니다.");
		window.opener.parent.location.reload();
	</c:if>
	<c:if test="${param.from eq 'remove'}">
		alert("${removeMember.name}님의 정보가 삭제되었습니다.");
		window.opener.parent.location.reload();
		window.close();
	</c:if>

  window.onload=function(){
  	MemberPictureThumb('<%=request.getContextPath()%>');
  }
</script>
  
  
  
  
  
  
  
  
  
  
  
  
