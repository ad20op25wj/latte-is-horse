<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Store"%>
<%@ page import="dao.StoreDao"%>
<%@ page import="dto.Comment"%>
<%@ page import="dao.CommentDao"%>
<html>
<head>
<link rel="stylesheet" href="resources/css/all-in-one.css"/>
<link rel="stylesheet" href="resources/css/store.css"/>
<script type="text/javascript" src="resources/js/nav.js"></script>
<script type="text/javascript" src="resources/js/comment_validation.js"></script>
<meta name="viewport" content="width=device-width"/>
<title>24시 카페 찾기-올밤</title>
</head>
<body>
  <jsp:include page="sub_header.jsp"/>
  <jsp:include page="nav.jsp"/>
  <section class="container">
    <div class="uppercontainer">
      <%
		int id = Integer.parseInt(request.getParameter("id"));
		StoreDao storeDao = new StoreDao();
    	Store store = storeDao.getStoreById(id);
	  %>
      <div id="name"><%=store.getName()%></div>
      <a id="address" class="storedesc" href="https://map.kakao.com/link/map/<%=store.getName()%>,<%=store.getLatitude()%>,<%=store.getLongitude()%>"><%=store.getAddress()%></a>
      <div id="rating" class="storedesc"><%=store.getRating()%></div>
    </div>
    <hr/>
    <div class="lowercontainer">
      <div class="input_comment">
        <form name="newComment" action="processAddComment.jsp?id=<%=request.getParameter("id")%>" method="POST">
          <div class="inputcontainer">
            <input id="inputrating" class="inputBox" type="text" name="rating" placeholder="별점" required/>
            <span id="perfect"> / 5.0</span>
            <input id="sendbtn" type="submit" value="보내기" key="button" onclick="CheckAddComment()"/>
          </div>
          <div class="inputcontainer">
            <textarea class="inputBox" name="content" placeholder="코멘트를 남겨주세요" required></textarea>
          </div>
        </form>
      </div>
      <%
      	  CommentDao commentDao = new CommentDao();
      	  ArrayList<Comment> list = commentDao.getList(id);
      	  for (int i=0; i<list.size(); i++) {
	  %>
      <div class="comment">
        <span id="rating2"><%=list.get(i).getRating()%></span>
        <span class="cmt"><%=list.get(i).getContent()%></span>
      </div>
      <%
      	  }
	  %>
	</div>
  </section>
  <jsp:include page="footer.jsp"/>
</body>
</html>