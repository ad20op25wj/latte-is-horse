<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.User"%>
<%@ page import="dao.UserDao"%>
<%
	request.setCharacterEncoding("UTF-8");

	String ID = request.getParameter("ID");
	String password = request.getParameter("password");
	String u_name = request.getParameter("name");
	
	UserDao userDao = new UserDao();
	userDao.write(ID, password, u_name);
	
	response.sendRedirect("index.jsp");
%>