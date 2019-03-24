<%@page import="com.pmp.pet.dao.PetsDAO"%>
<%@page import="com.pmp.pet.vo.Pet"%>
<%@page import="java.sql.Date"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int sizeLimit = 1024 *1024 * 5;
	String savePath = request.getServletContext().getRealPath("/img_test");

	MultipartRequest mr = new MultipartRequest(request, savePath,sizeLimit,"UTF-8", new DefaultFileRenamePolicy() );
	
	String confirm_pet_type = mr.getParameter("confirm_pet_type");
	String confirm_gender = mr.getParameter("confirm_gender");
	String confirm_pet_name = mr.getParameter("confirm_pet_name");
	String pet_kind_no = mr.getParameter("pet_kind_no");
	String pet_birth = mr.getParameter("pet_birth");
	String confirm_pet_no = mr.getParameter("confirm_pet_no");
	
	int pet_no = Integer.parseInt(confirm_pet_no);
	
	int kind = Integer.parseInt(pet_kind_no);
	Date pet_bityhday = Date.valueOf(pet_birth);
	
	Pet updatePet = new Pet();
	
	updatePet.setKindNo(kind);
	updatePet.setPetType(confirm_pet_type);
	updatePet.setPetSex(confirm_gender);
	updatePet.setPetName(confirm_pet_name);
	updatePet.setPetBirthDay(pet_bityhday);
	updatePet.setPetNo(pet_no);

	System.out.println(pet_no);

	System.out.println(kind);
	System.out.println(confirm_pet_type);
	System.out.println(confirm_gender);
	System.out.println(confirm_pet_name);
	System.out.println(pet_bityhday);

	PetsDAO.update(updatePet);
	
	response.sendRedirect("/mypageform.jsp");
%>
<%=confirm_pet_type%>
<%=confirm_gender%>
<%=confirm_pet_name%>
<%=pet_kind_no%>
<%=pet_birth%>
<%=pet_no%>
