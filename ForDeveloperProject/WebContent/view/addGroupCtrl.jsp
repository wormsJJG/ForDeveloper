<%@page import="DAO.memberDAO"%>
<%@page import="java.sql.Date"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("uid");
	String groupName = request.getParameter("groupName");
	String gcontent = request.getParameter("gcontent");
	LocalDate today = LocalDate.now();
	Date regiDate = Date.valueOf(today);
	memberDAO dao = new memberDAO();
	int status = dao.addGroup(uid, groupName, gcontent, regiDate);
	if(status>0){
		response.sendRedirect("../intro/myGroup.jsp");
	}else{
		response.sendRedirect("../intro/myGroup.jsp?status=false");
	}
			
%>