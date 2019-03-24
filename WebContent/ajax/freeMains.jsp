<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="com.pmp.pet.vo.Free"%>
<%@page import="java.util.List"%>
<%@page import="com.pmp.pet.dao.FreeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	List<Free> list = FreeDAO.selectList(1);

	ObjectMapper om = new ObjectMapper();

	String json = om.writeValueAsString(list);
%>

<%=json%>