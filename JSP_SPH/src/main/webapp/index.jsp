<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE htmls>
<head>

<input  class="form-control" id="url" type="text" name="keyword" placeholder="url" value="/"></input>
<button class="btn btn-primary" type="button" onclick="javascript:page_go();" data-card-widget="search">요청</button>
</head>

<script>
	function page_go(){
		
		var gourl= document.getElementById("url").value;
		var template = gourl;
		location.href="<%= request.getContextPath()%>/index.do?murl="+gourl;
	};
</script>


<%-- <c:if test="${empty loginUser }">
	<script>		
		location.href="<%=request.getContextPath() %>/common/loginForm.do";
	</script>
</c:if>


<c:if test="${!empty loginUser }">
	<script>
		location.href="<%=request.getContextPath() %>/index.do"
	</script>
</c:if> --%>