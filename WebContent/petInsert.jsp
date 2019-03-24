<%@page import="com.pmp.pet.dao.PetsDAO"%>
<%@page import="java.sql.Date"%>
<%@page import="com.pmp.pet.vo.Pet"%>
<%@page import="com.pmp.pet.dao.PetTypeDAO"%>
<%@page import="com.pmp.pet.vo.PetType"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	System.out.println("petinsert");
	int sizeLimit = 1024 *1024 * 5;
	String savePath = request.getServletContext().getRealPath("/img_test");

	MultipartRequest mr = new MultipartRequest(request, savePath,sizeLimit,"UTF-8", new DefaultFileRenamePolicy() );

	String pet_name = mr.getParameter("pet_name");
	String pet_gender = mr.getParameter("pet_gender");
	String pet_age = mr.getParameter("pet_age");
	String pet_kind = mr.getParameter("pet_kind");
	String pet_birth = mr.getParameter("pet_birth");
	String no = mr.getParameter("no");
	
	int user_no =Integer.parseInt(no);
	
	
	Date birth = Date.valueOf(pet_birth);
	
	PetType kind_no = PetTypeDAO.selectOne(pet_kind);
	
	int pet_no = kind_no.getKindNo();
	
	Pet insertPet = new Pet(user_no,pet_no,pet_name,pet_gender,"1.jpg",birth);
	
	PetsDAO.insert(insertPet);
	
	response.sendRedirect("/mypageform.jsp");
	
%>

