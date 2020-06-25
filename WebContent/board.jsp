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
	  <div class="card" onclick="moveMark(35.855513, 128.552350)">XXX 카페 | 5.0</div>
	</div>
  </section>
  <jsp:include page="footer.jsp"/>
</body>
</html>