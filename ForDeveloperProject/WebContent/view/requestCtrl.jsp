<%@page import="DAO.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String senderId = request.getParameter("sender");
	String recipient = request.getParameter("recipient");
	String ms = request.getParameter("ms");
	memberDAO dao = new memberDAO();
	int status = dao.requestAboutGroup(senderId, recipient, ms);
	if (ms.equals("group")){
		if(status>0){
			response.sendRedirect("groupListView.jsp?status=suc");
		}else{
			response.sendRedirect("groupListView.jsp?status=fal");
		}
	}else{
		if(status>0){
			response.sendRedirect("FindDeveloperView.jsp?status=suc");
		}else{
			response.sendRedirect("FindDeveloperView.jsp?status=fal");
		}
	}
	
%>