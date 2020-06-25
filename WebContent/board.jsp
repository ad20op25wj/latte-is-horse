<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="resources/css/all-in-one.css"/>
<link rel="stylesheet" href="resources/css/board.css"/>
<script type="text/javascript" src="resources/js/nav.js"></script>
<meta name="viewport" content="width=device-width"/>
<title>24시 카페 찾기-올밤</title>
</head>
<body>
  <%@ include file="sub_header.jsp"%>
  <%@ include file="nav.jsp"%>
  <section>
    <div id="map"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7c1be7ab63740e1db8a4da1568e4658d"></script>
	<script type="text/javascript" src="resources/js/kakao_map.js"></script>
	
	<div class="cardBox">
	  <div class="card" onclick="moveMark(35.825372, 128.620915)">고바슨 | 24h | 3.8</div>
	  <div class="card" onclick="moveMark(35.855505, 128.552319)">엔제리너스 광장점 | 24h | 3.7</div>
	  <div class="card" onclick="moveMark(35.868926, 128.597090)">엔제리너스 대구동성로점 | 24h | 3.9</div>
	  <div class="card" onclick="moveMark(35.859835, 128.617765)">투썸플레이스 대구수성점 | 24h | 3.8</div>
	  <div class="card" onclick="moveMark(35.882471, 128.621909)">파스쿠치 대구신암점 | 24h | 3.8</div>
	  <div class="card" onclick="moveMark(35.825924, 128.618632)">커피스미스 대구수성레이크점 | 24h | 3.8</div>
	</div>
  </section>
  <%@ include file="footer.jsp"%>
</body>
</html>