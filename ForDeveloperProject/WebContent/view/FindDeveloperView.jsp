<%@page import="DTO.findDevDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	memberDAO dao = new memberDAO();
ArrayList<findDevDTO> list = dao.getDeveloperList();
String id = String.valueOf(session.getAttribute("id"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개발자 모집</title>
<link href="../css/webstyle.css" rel="stylesheet">
<link href="../css/item.css" rel="stylesheet">
<script>
function request(sender,recipient){
	if(confirm('이 개발자를 스카우트 하시겠습니까?')){
		location.href="requestCtrl.jsp?sender="+sender+"&recipient="+recipient;
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
				<h2>개발자 구하기</h2>
			</div>
			<div class="policy-container">
				<div class="policy-table">
					<div class="headings">
						<span class="heading">이름</span> <span class="heading">포지션</span> <span
							class="heading">주 언어</span> <span class="heading">마감 프로젝트수</span>
						<span class="heading">접속 상태</span>
					</div>
					<%
						for (findDevDTO dto : list) {
					%>
					<div class="policy" onclick="request('<%=id %>','<%=dto.getdName()%>')">
						<span><%=dto.getdName()%></span> <span><%=dto.getPosition()%></span>
						<span><%=dto.getdLanguage()%></span> <span><%=dto.getEndProCnt()%></span>
						<span><%=dto.getdStatus()%></span>
					</div>
					<%
						}
					%>
				</div>
			</div>
		</div>
		<div class="page-control">
			<div>

				<a id="prev" class="button"
					href="#none">&laquo; 이전</a>

			</div>

			<div>

				<a id="next" class="button"
					href="#none">다음 &raquo;</a>

			</div>
		</div>
	</div>
	<script src="../script/jquery-1.12.4.js"></script>
	<script src="../script/point.js"></script>
</body>
</html>