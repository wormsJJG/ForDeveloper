<%@page import="DAO.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	memberDAO dao = new memberDAO();
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String guid = dao.getGuid(id);
	Boolean status = dao.updateGuid(guid, id);
	if(status){
		response.sendRedirect("../view/myGroup.jsp?id="+id);
	}else{
		response.sendRedirect("../view/addGroup.jsp?status=false");
	}
%>