<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="resources/css/all-in-one.css"/>
<link rel="stylesheet" href="resources/css/inquiry.css"/>
<script type="text/javascript" src="resources/js/nav.js"></script>
<meta name="viewport" content="width=device-width"/>
<title>24시 카페 찾기-올밤</title>
</head>
<body>
  <%@ include file="sub_header.jsp"%>
  <%@ include file="nav.jsp"%>
  <section class="container">
    <form action="" method="POST">
      <div class="container">
        <p class="description">제목</p>
        <input class="inputBox" type="text" name="title" placeholder="북문 파스쿠치 24시간 영업해요" required/>
      </div>
      <div class="container">
        <p class="description">이메일</p>
        <input class="inputBox" type="email" name="emailID" placeholder="hours24@knu.ac.kr" required/>
      </div>
      <div class="container">
        <p class="description">정보수정/ 문의 내용</p>
        <textarea class="inputBox" placeholder="내용을 입력해주세요" required></textarea>
      </div>
      <input id="sendbtn" type="submit" value="보내기"/>
    </form>
  </section>
  <%@ include file="footer.jsp"%>
</body>
</html>