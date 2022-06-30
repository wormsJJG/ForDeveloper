<%@page import="DAO.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = String.valueOf(session.getAttribute("id"));
	memberDAO dao = new memberDAO();
	int status = dao.logout(id);
	if(status>0){
		response.sendRedirect("../intro/login.jsp");
		session.removeAttribute("id");
	}else{
		response.sendRedirect("../intro/index.jsp?status=false");
	}
%>