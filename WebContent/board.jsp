<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Store"%>
<%@ page import="dao.StoreDao"%>
<html>
<head>
<link rel="stylesheet" href="resources/css/all-in-one.css"/>
<link rel="stylesheet" href="resources/css/board.css"/>
<script type="text/javascript" src="resources/js/nav.js"></script>
<meta name="viewport" content="width=device-width"/>
<title>24시 카페 찾기-올밤</title>
</head>
<body>
  <jsp:include page="sub_header.jsp"/>
  <jsp:include page="nav.jsp"/>
  <section>
    <div id="map"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7c1be7ab63740e1db8a4da1568e4658d"></script>
	<script type="text/javascript" src="resources/js/kakao_map.js"></script>
	<div class="cardBox">
	<%
		String cat = request.getParameter("cat");
		StoreDao storeDao = new StoreDao();
    	ArrayList<Store> list = null;
    	if (cat.equals("cafe"))
    		list = storeDao.getList(1);
    	else if (cat.equals("food"))
    		list = storeDao.getList(2);
    	else if (cat.equals("pet"))
    		list = storeDao.getList(3);
    	else if (cat.equals("study"))
    		list = storeDao.getList(4);
    	for (int i=0; i<list.size(); i++) {
	%>
	  <div class="card" onclick="moveMark(<%=list.get(i).getLatitude()%>, <%=list.get(i).getLongitude()%>)">
	  	<%=list.get(i).getName()%> / <%=list.get(i).getRating()%>
	  	<a id="gobtn" href="store.jsp?id=<%=list.get(i).getId()%>">Go!</a>
	  </div>
	<%
    	}
	%>
	</div>
  </section>
  <jsp:include page="footer.jsp"/>
</body>
</html>