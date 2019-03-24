<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="java.util.List"%>
<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@page import="com.pmp.pet.dao.PetTypeDAO"%>
<%@page import="com.pmp.pet.vo.PetType"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String kind = request.getParameter("kind");
	kind = "%"+kind+"%";
	List<PetType> list = PetTypeDAO.selectList(kind);
	
	ObjectMapper om = new ObjectMapper();
	
	String json = om.writeValueAsString(list);
	
	System.out.println(json);
%>
<%=json %>
