<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Comment"%>
<%@ page import="dao.CommentDao"%>
<%@ page import="dto.User"%>
<%@ page import="dao.UserDao"%>
<%
	request.setCharacterEncoding("UTF-8");

	int store_id = Integer.parseInt(request.getParameter("id"));
	float rating = Float.parseFloat(request.getParameter("rating"));
	String content = request.getParameter("content");
	String ID = request.getParameter("ID");
	String password = request.getParameter("password");
	
	UserDao userDao = new UserDao();
	int result = userDao.isValid(ID, password);
	
	if(result == 0)
	{
		out.println("<script>alert('아이디가 존재하지 않습니다.'); window.location='store.jsp?id="+request.getParameter("id")+"'</script>"); 
	}
	else if(result == 1)
	{
		out.println("<script>alert('비밀번호가 틀렸습니다.'); window.location='store.jsp?id="+request.getParameter("id")+"'</script>"); 
	}
	else if(result == 2)
	{
		if(rating >= 0.5 && rating <= 5.0) {
			CommentDao commentDao = new CommentDao();
			commentDao.write(store_id, rating, content);
		}
		response.sendRedirect("store.jsp?id="+request.getParameter("id"));
	}
%>