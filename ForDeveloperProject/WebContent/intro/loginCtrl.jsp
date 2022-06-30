<%@page import="DAO.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	memberDAO dao = new memberDAO();
	boolean check = dao.login(request.getParameter("id"), request.getParameter("password"));
	if(check){
		response.sendRedirect("../intro/index.jsp");
	}else{
		response.sendRedirect("../intro/login.jsp?status=false");
	} 
	session.setAttribute("id", request.getParameter("id"));
%>