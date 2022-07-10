<%@page import="DAO.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String senderId = request.getParameter("sender");
	String recipient = request.getParameter("recipient");
	memberDAO dao = new memberDAO();
	int status = dao.requestAboutGroup(senderId, recipient);
	if(status>0){
		response.sendRedirect("groupListView.jsp?status=suc");
	}else{
		response.sendRedirect("groupListView.jsp?status=fal");
	}
%>