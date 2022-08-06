<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="setting.jsp"%> --%>

<!-- <head>
  <title>마이페이지</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="/YasMan/YasManView/assets/css/login_style.css">
  <link rel="icon" href="assets/img/yasman/YasmanLogoBlack.png" type="image/png">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head> -->

<%@ include file="/YasManView/header2.jsp"%>
<body>
  <a href="index.html">
    <div class="img" style="background-image: url(assets/img/yasman/yasLogo.png);"></div>
  </a>
  <section class="ftco-section">
    <div class="container">
      <div class="row justify-content-center align-items-center">
          <div class="wrap">
            <div class="login-wrap p-4 p-md-5">
              <div class="d-flex">
                <div class="w-100">
                  <h3 class="text-center" style="font-family: inherit; color: gray; font-weight: bold;">${dto.nick_name}님, 안녕하세요</h3>
                  <br>
                  <h3 class="text-center" style="font-family: inherit; color: black;">My Page</h3>
                </div>
              </div>
              <c:if test = "${id ne 'rhksflwk123'}">
              <hr>
              <!-- 멤버 -->
              <div class="text-center">
                <h4 style="padding: 10px;">
                  <a href="mySports.do?id=${id}">나의 스포츠</a>
                </h4>
              </div>
              <hr>
              <div class="text-center">
                <h4 style="padding: 10px;">
                  <a href="#">내 정보 변경</a>
                </h4>
              </div>
              <hr>
              <div class="text-center">
                <h4 style="padding: 10px;">
                  <a href="logout.do">로그 아웃</a>
                </h4>
              </div>
              <hr>
              <div class="text-center">
                <h4 style="padding: 10px;">
                  <a href="#">자주 묻는 질문</a>
                </h4>
              </div>
              </c:if>
              <c:if test = "${id eq 'rhksflwk123'}">
              <!-- 관리자 -->
              <hr>
              <div class="text-center">
                <h4 style="padding: 10px;">
                  <a href="#">회원 관리</a>
                </h4>
              </div>
              <hr>
              <div class="text-center">
                <h4 style="padding: 10px;">
                  <a href="#">경기장 이용 신청 관리</a>
                </h4>
              </div>
               <hr>
               <div class="text-center">
                <h4 style="padding: 10px;">
                   <a href="logout.do">로그 아웃</a>
                </h4>
              </div>
              <hr>
      			<div class="text-center">
                <h4 style="padding: 10px;">
                  <a href="#">스토리 관리</a>                  
                </h4>
              </div>
              <hr>
              </c:if>  
              <div class="text-center">
                <a href="index.html" style="color: seagreen;">뒤로가기</a>
                <!-- <p onclick="history.back()">뒤로가기</p> -->
                <p class="text-center">&copy; 2022 <a href="index.html" class="font-weight-bold"
                    target="_blank" style="color:seagreen">Yas-man</a>. All rights reserved</p>
              </div>
            </div>
            
          </div>
        </div>
      </div>
  </section>

<!--   <script src="/YasMan/YasManView/assets/js/jquery.min.js"></script>
  <script src="/YasMan/YasManView/assets/js/popper.js"></script>
  <script src="/YasMan/YasManView/assets/js/bootstrap.min.js"></script>
  <script src="/YasMan/YasManView/assets/js/main.js"></script>
 -->
</body>

</html>