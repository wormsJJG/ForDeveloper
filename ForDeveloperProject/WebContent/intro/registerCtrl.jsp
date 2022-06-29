<%@page import="DAO.memberDAO"%>
<%@page import="java.sql.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="DTO.developerDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	LocalDate today = LocalDate.now();
	developerDTO dto = new developerDTO();
	dto.setdName(request.getParameter("name"));
	dto.setId(request.getParameter("id"));
	dto.setPassword(request.getParameter("password"));
	dto.setdLanguage(request.getParameter("lan"));
	dto.setdPhone(request.getParameter("phone"));
	dto.setPosition(request.getParameter("position"));
	dto.setRegisterDay(Date.valueOf(today));
	memberDAO dao = new memberDAO();
	int status = dao.registerDeveloper(dto);
	if(status>0){
		response.sendRedirect("../intro/login.jsp");
	}else{
		response.sendRedirect("../intro/register.jsp");
	}
%>