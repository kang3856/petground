<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@page import="com.pmp.pet.vo.Pride"%>
<%@page import="java.util.List"%>
<%@page import="com.pmp.pet.dao.PrideDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	List<Pride> list = PrideDAO.selectList(1);

	ObjectMapper om = new ObjectMapper();

	String json = om.writeValueAsString(list);

%>
<%=json%>
