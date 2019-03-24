<%@page import="com.pmp.pet.dao.PetsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	System.out.println(request.getParameter("pet_no"));
	
	int no = Integer.parseInt(request.getParameter("pet_no"));
	
	PetsDAO.delete(no);
	
	response.sendRedirect("mypageform.jsp");
%>