<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="java.util.List"%>
<%@page import="com.pmp.pet.vo.Pet"%>
<%@page import="com.pmp.pet.dao.PetsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<Pet> list= PetsDAO.selectList(1);

	ObjectMapper om = new ObjectMapper();
	
	String json = om.writeValueAsString(list);
%> 
<%=json%>