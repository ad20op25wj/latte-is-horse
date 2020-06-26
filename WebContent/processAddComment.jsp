<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Comment"%>
<%@ page import="dao.CommentDao"%>
<%
	request.setCharacterEncoding("UTF-8");

	int store_id = Integer.parseInt(request.getParameter("id"));
	float rating = Float.parseFloat(request.getParameter("rating"));
	String content = request.getParameter("content");
	
	if(rating >= 0.5 && rating <= 5.0) {
		CommentDao commentDao = new CommentDao();
		commentDao.write(store_id, rating, content);
	}
	
	response.sendRedirect("store.jsp?id="+request.getParameter("id"));
%>