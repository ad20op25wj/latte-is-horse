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
  <jsp:include page="sub_header.jsp"/>
  <jsp:include page="nav.jsp"/>
  <section class="container">
    <form name="newInquiry" action="processAddInquiry.jsp" method="POST">
      <div class="container">
        <p class="description">제목</p>
        <input class="inputBox" type="text" id="title" name="title" placeholder="북문 파스쿠치 24시간 영업해요" required/>
      </div>
      <div class="container">
        <p class="description">이메일</p>
        <input class="inputBox" type="email" id="email" name="email" placeholder="hours24@knu.ac.kr" required/>
      </div>
      <div class="container">
        <p class="description">정보수정/ 문의 내용</p>
        <textarea class="inputBox" id="contents" placeholder="내용을 입력해주세요" required></textarea>
      </div>
      <input id="sendbtn" type="submit" value="보내기" onclick="CheckAddInquiry()"/>
    </form>
  </section>
  <jsp:include page="footer.jsp"/>
</body>
</html>