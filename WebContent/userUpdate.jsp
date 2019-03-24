<%@page import="com.pmp.pet.dao.UsersDAO"%>
<%@page import="com.pmp.pet.vo.User"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.sql.Date"%>
<%@page import="org.apache.ibatis.type.DateOnlyTypeHandler"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int sizeLimit = 1024 *1024 * 5;
	String savePath = request.getServletContext().getRealPath("/img_test");

	MultipartRequest mr = new MultipartRequest(request, savePath,sizeLimit,"UTF-8", new DefaultFileRenamePolicy() );
	String no = mr.getParameter("no");
	String email = mr.getParameter("email");
	String backmail = mr.getParameter("backmail");
	
	String usermail = email +"@"+ backmail;
	
	String user_birth = mr.getParameter("user_birth");
	Date user_update_birth = Date.valueOf(user_birth);
	
	User user = new User();
	
	user.setBirthday(user_update_birth);
	user.setEmail(usermail);
	user.setUserNo(Integer.parseInt(no));
	
	UsersDAO.update(user);
	
	response.sendRedirect("/mypageform.jsp");
%>
<%=no %>
