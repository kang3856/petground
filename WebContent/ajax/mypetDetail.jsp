<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="java.util.List"%>
<%@page import="com.pmp.pet.vo.Pet"%>
<%@page import="com.pmp.pet.dao.PetsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pet_no = request.getParameter("pet_no");
	
	Pet pet= PetsDAO.selectOne(pet_no);

	ObjectMapper om = new ObjectMapper();
	
	String json = om.writeValueAsString(pet);
%> 
<%=json%>