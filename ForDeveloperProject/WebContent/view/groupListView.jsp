<%@page import="DTO.groupListDTO"%>
<%@page import="DTO.findDevDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	memberDAO dao = new memberDAO();
	ArrayList<groupListDTO> list = dao.getGroupList();
	String id = String.valueOf(session.getAttribute("id"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그룹참여</title>
<link href="../css/webstyle.css" rel="stylesheet">
<link href="../css/item.css" rel="stylesheet">
<script>
window.onload=function(){
	const urlParams = new URL(location.href).searchParams;

	const status = urlParams.get('status');
	if(status=="fal"){
		alert("참가 요청을 실패했습니다.");
	}else if(status=="suc"){
		alert("참가 요청을 성공했습니다.");
	}
}
	function request(sender,recipient){
		if(confirm('이 그룹에 참가 요청을 보내시겠습니까?')){
			location.href="requestCtrl.jsp?sender="+sender+"&recipient="+recipient+"&ms="+"group";
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
				<h2>그룹 참여</h2>
			</div>
			<div class="policy-container">
				<div class="policy-table">
					<div class="headings">
						<span class="heading">그룹 이름</span> <span class="heading">그룹 목적</span> <span
							class="heading">생성일자</span> <span class="heading">모집상태</span>
						<span class="heading">리더</span>
					</div>
					<%
						for (groupListDTO dto : list) {
					%>
					<div class="policy" onclick="request('<%=id %>','<%=dto.getId()%>')">
						<span><%=dto.getgName()%></span> <span><%=dto.getgContent()%></span>
						<span><%=dto.getRegisterDay()%></span> <span><%=dto.getgStatus()%></span>
						<span><%=dto.getdName()%></span>
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