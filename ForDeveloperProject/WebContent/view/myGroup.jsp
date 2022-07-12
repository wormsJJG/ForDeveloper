<%@page import="DAO.memberDAO"%>
<%@page import="DTO.groupInfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
memberDAO dao = new memberDAO();
String id = request.getParameter("id");
groupInfoDTO dto = dao.getMyGroup(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 그룹</title>
<style>
.title2 {
	text-align: center;
	color: white;
}

.todolist {
	padding-top: 15px;
}
</style>
<link href="../css/webstyle.css" rel="stylesheet">
<link href="../css/item.css" rel="stylesheet">
<link href="../css/todo.css" rel="stylesheet">
<link href="../css/index.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<header>
			<%@include file="../intro/header.jsp"%>
		</header>
		<div class="item">
			<div class="title">
				<h2><%=dto.getgName()%></h2>
			</div>
			<div class="dash">

				<div class="groupPerson">
					<div class="title2">
						<h3>그룹원</h3>
					</div>
					<div class="policy-container">
						<div class="policy-table">
							<div class="headings">
								<span class="heading">이름</span> <span class="heading">포지션</span>
							</div>
							<div class="policy">
								<span>ㅇㅇㅇ</span> <span>ㅇㅇㅇ</span>
							</div>
						</div>
					</div>
				</div>
				<div class="todolist">
					<details open>
						<summary>
							<div class="top">
								<h3>할일</h3>
								<input type="text" id="input" placeholder="할 일을 적어주세요."
									onKeypress="javascript:if(event.keyCode==13) click_event();">
								<button type="button" class="fas fa-plus"
									onclick="click_event();"></button>
							</div>
						</summary>
						<div id="list"></div>
					</details>
					<details open>
						<summary>
							<h3 class="middle">완료</h3>
						</summary>
						<div id="done"></div>
					</details>
				</div>
				<div class="chatting">

				</div>
			</div>
		</div>
	</div>
		<script type="text/javascript" src="../script/index.js"></script>
	<script type="text/javascript" src="../script/todo.js"></script>
	<script src="https://kit.fontawesome.com/f1fb370a81.js"
		crossorigin="anonymous"></script>
	<script src="../script/jquery-1.12.4.js"></script>
	<script src="../script/point.js"></script>
</body>
</html>