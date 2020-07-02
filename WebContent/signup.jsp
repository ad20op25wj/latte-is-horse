<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="resources/css/all-in-one.css"/>
<link rel="stylesheet" href="resources/css/inquiry.css"/>
<script type="text/javascript" src="resources/js/nav.js"></script>
<script type="text/javascript" src="resources/js/idp_validation.js"></script>
<meta name="viewport" content="width=device-width"/>
<title>24시 카페 찾기-올밤</title>
</head>
<body>
  <jsp:include page="sub_header.jsp"/>
  <jsp:include page="nav.jsp"/>
  <section class="container">
    <form name="newUser" action="processAddUser.jsp" method="POST">
      <div class="container">
        <p class="description">아이디</p>
        <input id="inputid" class="inputBox" type="text" name="ID" placeholder="아이디" required/>
      </div>
      <div class="container">
        <p class="description">비밀번호</p>
        <input id="inputpassword" class="inputBox" type="password" name="password" placeholder="비밀번호" required/>
        <br>
        <input id="inputpassword_con" class="inputBox" type="password" name="password_con" placeholder="비밀번호확인" required/>
      </div>
      <div class="container">
        <p class="description">이름</p>
        <input id="inputname" class="inputBox" type="text" name="name" placeholder="아름" required></input>
      </div>
      <input id="sendbtn" type="submit" value="가입" onclick="CheckAddpassword()"/>
    </form>
  </section>
  <jsp:include page="footer.jsp"/>
</body>
</html>