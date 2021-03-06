<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="../css/login.css">
    <script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
    <script>
    	window.onload=function(){
    		const urlParams = new URL(location.href).searchParams;

    		const status = urlParams.get('status');
			if(status=="false"){
				alert("아이디 또는 비밀번호가 틀렸습니다.");
			}
    	}	
    </script>
    <link href="https://fonts.googleapis.com/css2?family=Alata&display=swap" rel="stylesheet">
</head>
<body>
<form action="../intro/loginCtrl.jsp" method="post" onsubmit="return check()">
    <div class="page-container">
        <div class="login-form-container shadow">
            <div class="login-form-right-side">
                <div class="top-logo-wrap">          
                </div>
                <h1>For Developer</h1>
                <p>효율적인 개발자 모집 지금 바로 나와 맞는 개발자를 구해서 함께 해보세요.</p>
            </div>
            <div class="login-form-left-side">
                <div class="login-top-wrap">
                    <span>아직도 계정이 없으십니까?</span>
                    <button type= "button" class="create-account-btn shadow-light" onclick="location.href='../intro/register.jsp'">회원가입</button>
                </div>
                <div class="login-input-container">
                    <div class="login-input-wrap input-id">
                        <i class="far fa-envelope"></i>
                        <input placeholder="ID" type="text" id="id" name="id">
                    </div>
                    
                    <div class="login-input-wrap input-password">
                        <i class="fas fa-key"></i>
                        <input placeholder="Password"  type="password" id="password" name="password">
                    </div>
                </div>
                <div class="login-btn-wrap">
                    <button class="login-btn" type="submit">로그인</button>
                    <a href="#" >비밀번호 찾기</a>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>