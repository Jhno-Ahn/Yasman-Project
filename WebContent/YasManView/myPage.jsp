<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/YasManView/header2.jsp"%>
<body>
	<section class="ftco-section">
    <div class="container">
      <div class="px-5 justify-content-center" style="padding-top:20%;">
          <div class="wrap">
            <div class="login-wrap p-4 p-md-5">
              <div class="d-flex">
                <div class="w-100">
                  <h3 class="text-center" style="font-family: inherit; color: green; font-weight: bold;">${nick_name}&nbsp님, 안녕하세요</h3>
                  <br>
                  <h1 class="text-center" style="font-family: inherit; color: black; font-weight: bold; ">My Page</h1>
                </div>
              </div>
              <c:if test = "${id ne 'rhksflwk123'}">
              <hr>
              <!-- 멤버 -->
              <div class="text-center">
                <h4 style="padding: 10px;">
                  <a href="mySports.do?id=${dto.id}">나의 스포츠</a>
                </h4>
              </div>
              <hr>
              <div class="text-center">
                <h4 style="padding: 10px;">
                  <a href="memberModifyForm.do?id=${dto.id}">내 정보 변경</a>
                </h4>
              </div>
              <hr>
              <div class="text-center">
                <h4 style="padding: 10px;">
                  <a href="QnAForm.do?id=${dto.id}">자주 묻는 질문</a>
                </h4>
              </div>
              <hr>
              <div class="text-center">
                <h4 style="padding: 10px;">
                  <a href="logout.do">로그아웃</a>
                </h4>
              </div>
              </c:if>
              <!-- ===================================== 관리자 ================================================ -->
              <c:if test = "${id eq 'rhksflwk123'}">
              <!-- 관리자 -->
              <hr>
              <div class="text-center">
                <h4 style="padding: 10px;">
                  <a href="memberAdmin.do?id=${id}&nick_name=${nick_name}">회원 관리</a>
                </h4>
              </div>
              <hr>
              <div class="text-center">
                <h4 style="padding: 10px;">
                  <a href="matchAdmin.do?id=${id}&nick_name=${nick_name}">경기장 이용 신청 관리</a>
                </h4>
              </div>
              <hr>
      			<div class="text-center">
                <h4 style="padding: 10px;">
                  <a href="#">스토리 관리</a>                  
                </h4>
              </div>
               <hr>
               <div class="text-center">
                <h4 style="padding: 10px;">
                   <a href="logout.do">로그아웃</a>
                </h4>
              </div>
              <hr>
              </c:if>  
              <hr>
              <div class="text-center">
                <a href="main.do?id=${id}" style="color: seagreen;">뒤로가기</a>
              </div>
            </div>
          </div>
        </div>
      </div>
  </section>
</body>
</html>