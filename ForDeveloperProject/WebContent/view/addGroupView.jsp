<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
		String uid = String.valueOf(session.getAttribute("uid"));
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그룹생성</title>
<link href="../css/webstyle.css" rel="stylesheet">
<link href="../css/item.css" rel="stylesheet">
<link href="../css/addGroup.css" rel="stylesheet">
<script>
</script>
</head>
<body>
	<div class="container">
		<header>
			<%@include file="../intro/header.jsp"%>
		</header>
		<div class="item">
			<div class="title">
				<h2>그룹 생성</h2>
			</div>
			<div class="form-container">
				<form class="addForm" action="addGroupCtrl.jsp?uid=<%=uid %>" method="post"
					onsubmit="return check()">
					<div class="form-group">
						<input type="text" class="form-control" required id="groupName"
							name="groupName"><span>그룹 이름</span> <span class="border"></span>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" required id="gcontent"
							name="gcontent"><span>그룹 목적</span> <span class="border"></span>
					</div>
					<div class="buttonGroup">
					<button type="submit">생성하기</button>
					<button type="button" onclick="location.href='../intro/index.jsp'">돌아가기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="../script/jquery-1.12.4.js"></script>
	<script src="../script/point.js"></script>
</body>
</html>