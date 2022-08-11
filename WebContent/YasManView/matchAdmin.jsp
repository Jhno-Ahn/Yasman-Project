<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/YasManView/header2.jsp"%>
<body>
  <section class="ftco-section">
    <div class="container">
      <div class="row justify-content-center align-items-center">
          <div class="wrap" style="margin-top:10%;">
            <div class="login-wrap p-4 p-md-5">
              <div class="d-flex">
                <div class="w-100">
                  <h3 class="text-center" style="font-family: inherit; color: seagreen; font-weight: bold;">${nick_name}님, 안녕하세요</h3>
                  <br>
                  <h1 class="text-center" style="font-family: inherit; color: black; font-weight: bold;">경기장 관리</h1>
                </div>
              </div>
              <br>
              <hr>
              <br>
             <div id = "matchlist">
                <table id = "table">
                  <tr>
                     <th style="width:22%"> 경기 종류 </th>
                     <th style="width:30%"> 경기장 </th>
                     <th style="width:19%"> 경기 날짜 </th>
                     <th style="width:18%"> 사용 시간 </th>
                     <th style="width:10%"> 신청 인원</th>
                  </tr>
               <c:forEach var= "dto" items="${dtos}">
                  <tr>
                     <td> ${dto.match_kind}</td>
                     <td>${dto.match_stardi_name}</td>
                     <td> ${dto.match_day}</td>
                     <td> ${dto.match_time}</td>
                     <td> ${dto.match_personnel_now}</td>
                     <td> <button type = "submit" onclick = "deleteMatch_A('${dto.match_num}')">삭제</button>
                  </tr>
               </c:forEach>
            </table>
         	</div>
         	<br>
         	<hr>
         	<br>
              <div class="text-center">
                <a href="myPage.do?id=${id}" style="color: seagreen;">뒤로가기</a>
              </div>
                <br>
            </div>
          </div>
        </div>
      </div>
  </section>
</body>
</html>