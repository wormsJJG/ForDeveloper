<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>HTML5 Form template</title>
<link rel="stylesheet" href="../css/register.css">
</head>
<body>
	<div class="wrapper">
		<div class="form-container">
			<form>
				<h3>회원 가입</h3>
				<p>양식에 맞추어 회원 정보를 입력해주세요.</p>
				<div class="form-group">
					<input type="text" class="form-control" required> <span>이름</span>
					<span class="border"></span>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" required> <span>아이디</span>
					<span class="border"></span>
				</div>
				<div class="form-group">
					<input type="password" class="form-control" required> <span>비밀번호</span>
					<span class="border"></span>
				</div>
				<div class="form-group">
					<input type="password" class="form-control" required> <span>비밀번호
						확인</span> <span class="border"></span>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" required> <span>주력언어</span> <span class="border"></span>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" required> <span>연락처
						</span> <span class="border"></span>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" required> <span>주 포지션
				</span> <span class="border"></span>
				</div>
				<button type="submit">가입하기</button>
				<button type="button" onclick="location.href='../intro/login.jsp'">돌아가기</button>
			</form>
		</div>
	</div>
</body>
</html>