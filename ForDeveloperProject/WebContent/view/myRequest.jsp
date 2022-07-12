<%@page import="DTO.recipientDTO"%>
<%@page import="DTO.sendDTO"%>
<%@page import="DTO.findDevDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	memberDAO dao = new memberDAO();
	String id = String.valueOf(session.getAttribute("id"));
	ArrayList<sendDTO> list = dao.getRequestList(id);
	ArrayList<recipientDTO> list2 = dao.getCRequestList(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개발자 모집</title>
<link href="../css/webstyle.css" rel="stylesheet">
<link href="../css/item.css" rel="stylesheet">
<script>
function srequest(sender,recipient){
	if(confirm('스카우트 요청을 받으시겠습니까?')){
		location.href="requestCtrl.jsp?sender="+sender+"&recipient="+recipient+"&ms="+"sc";
	}else{
		
	}
}
function grequest(sender,recipient){
	if(confirm('이 개발자를 스카우트 하시겠습니까?')){
		location.href="requestCtrl.jsp?sender="+sender+"&recipient="+recipient+"&ms="+"sc";
	}else{
		
	}
}
</script>
</head>
<body>
	<div class="container">
		<header>
			<%@include file="../intro/header.jsp"%>
		</header>
		<div class="item">
			<div class="title">
				<h2>내가 보낸 요청</h2>
			</div>
			<div class="policy-container">
				<div class="policy-table">
					<div class="headings">
						<span class="heading">그룹 이름</span> <span class="heading">요청 메세지</span>
					</div>
					<%
						for (sendDTO dto : list) {
					%>
					<div class="policy">
						<span><%=dto.getRecipientName()%></span> <span><%=dto.getRequestTitle()%></span>
					</div>
					<%
						}
					%>
				</div>
			</div>
			<br>
			<br>
			<div class="title">
				<h2>내가 받은 요청</h2>
			</div>
			<div class="policy-container">
				<div class="policy-table">
					<div class="headings">
						<span class="heading">보낸 사람</span> <span class="heading">요청 메세지</span>
					</div>
					<%
						for (recipientDTO dto : list2) {
					%>
					<div class="policy">
						<span><%=dto.getRecipientName()%></span> <span><%=dto.getRequestTitle()%></span>
					</div>
					<%
						}
					%>
				</div>
			</div>
		</div>
	</div>
	<script src="../script/jquery-1.12.4.js"></script>
	<script src="../script/point.js"></script>
</body>
</html>