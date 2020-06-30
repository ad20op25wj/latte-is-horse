<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Inquiry"%>
<%@ page import="dao.InquiryDao"%>
<%
	request.setCharacterEncoding("UTF-8");

	String title = request.getParameter("title");
	String email = request.getParameter("email");
	String contents = request.getParameter("contents");
	
	InquiryDao inquiryDao = new InquiryDao();
	inquiryDao.write(title, email, contents);
	
	response.sendRedirect("index.jsp");
%>