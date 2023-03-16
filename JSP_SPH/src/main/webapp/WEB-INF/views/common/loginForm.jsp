<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="./style/login.css">
    <link rel="stylesheet" type="text/css" href="./style/common.css">
</head>
<style>
body{
    background-color:#FAFAFA;
    margin: 0px;
    color: #262626;
    box-sizing: border-box;
}

a{
    text-decoration: none;
    color:#262626;
}

.login_wrapper{
    position:absolute;
    display: flex;
    flex-direction: column;
    align-items: center;
    width:350px;
    height:380px;
    top:50%;
    left:50%;
    margin: -175px 0px 0px -190px;
    background-color:white;
    border: 1px solid #DBDBDB;
}

.login_logo{
    margin :30px 0 30px 0;
    color:#262626;
    font-family: 'Lobster', cursive;
    font-size: 40px;
    font-weight: 100px;
}

.login_form{
    display:flex;
    flex-direction: column;
    width:280px;
    margin-top:10px;
}

.login_text{
   
    height:40px;
    margin: 3px 0 3px 0 ;
    padding: 0 10px 0 10px;
    background-color:#FAFAFA;
    border: 1px solid #DBDBDB;
    border-radius: 3px;
}

.login_text:focus{
    outline: 1px solid #a8a8a8;
}

.login_text::placeholder{
    color:#8E8E8E;
}

.login_text::value{
    color:#262626;
}

.login_btn{
    width:280px;
    height:33px;
    margin: 10px 0 5px 0;
    color:white;
    background-color: #C0DFFD;
    border-radius: 5px;
    border-style: none;
    font-size: 15px;
    font-weight: bold;
    cursor: pointer;
}

.login_bottom{
	
    margin-top: 65px;
    color:#01376A;
    font-size: 13px;
}
#find{
	display:inline-block;
}
</style>
<body>
    <article>
        <div class = "login_wrapper">
            <div class="login_logo">SPH </div>
            <form class="login_form" action="login.do" method="post">
            	<input name="retUrl" value="${retUrl }" type="hidden" />
                <input id="LOGIN_ID" class = "login_text" type="text" name="id" placeholder="전화번호, 사용자 이름 또는 이메일">
                <input  id="LOGIN_PW" class = "login_text" type="password" name="pwd" placeholder="비밀번호">
                <button id="LOGIN_BTN" class = "login_btn" type="submit" disabled>로그인</button>
            </form>
            <div id="find">
            <a class = "login_bottom" href="javascript:OpenWindow('findId.do','아이디찾기',700,800);" >아이디 찾기</a>/<a class = "login_bottom" href="javascript:OpenWindow('findPwd.do','비밀번호찾기',700,800);" style="margin-top:3px;">비밀번호 찾기</a>
            <a class = "login_bottom" href="javascript:OpenWindow('otp.do','아이디찾기',700,800);"> OTP Test</a>
            </div>
        </div>
    </article>
    <script src="./js/login.js" defer=""></script>
</body>


<script>
"use strict";

var loginId = document.getElementById('LOGIN_ID');
var loginPw = document.getElementById('LOGIN_PW');
var loginBtn = document.getElementById('LOGIN_BTN');

function color() {
    if((loginId.value.length>0 && loginId.value.indexOf("@")!==-1) 
        && loginPw.value.length>=5){
        loginBtn.style.backgroundColor = "#0095F6";
        loginBtn.disabled = false;
    }else{
        loginBtn.style.backgroundColor = "#C0DFFD";
        loginBtn.disabled = true;
    }
}



loginId.addEventListener('keyup', color);
loginPw.addEventListener('keyup', color);

color();

</script>
<script src="<%=request.getContextPath()%>/resources/js/common.min.js"></script>

</html>