<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="resources/css/all-in-one.css"/>
<link rel="stylesheet" href="resources/css/index.css"/>
<script type="text/javascript" src="resources/js/nav.js"></script>
<meta name="viewport" content="width=device-width"/>
<title>24시 카페 찾기-올밤</title>
</head>
<body>
  <%@ include file="main_header.jsp"%>
  <%@ include file="nav.jsp"%>
  <section class="container">
    <a href="board.jsp?cat=cafe">카페</a>
    <a href="board.jsp?cat=food">식당 / 술집</a>
    <a href="board.jsp?cat=pet">애견카페 / 동물병원</a>
    <a href="board.jsp?cat=study">스터디카페 / 독서실</a>
  </section>
  <%@ include file="footer.jsp"%>
</body>
</html>