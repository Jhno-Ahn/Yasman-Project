<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/YasManView/header2.jsp"%>
<body>
  <section class="ftco-section">
    <div class="container">
      <div class="row justify-content-center align-items-center">
          <div class="wrap">
            <div class="login-wrap p-4 p-md-5">
              <div class="d-flex">
                <div class="w-100">
                  <h3 class="text-center" style="font-family: inherit; color: green; font-weight: bold;">${nick_name}님, 안녕하세요</h3>
                  <br>
                  <h1 class="text-center" style="font-family: inherit; color: black; font-weight: bold; ">My Sports</h1>
                </div>
              </div>
              
              <div class="text-center" id = "matchList">
                <table id = "table">
                  <tr>
                     <th style="width:32%"> 경기 종류 </th>
                     <th style="width:40%"> 경기장 </th>
                     <th style="width:29%"> 경기 날짜 </th>
                     <th style="width:28%"> 사용 시간 </th>
                     <th style="width:20%"> 신청 인원</th>
                     <th style="width:20%"> &nbsp;&nbsp; </th>
                  </tr>
               <c:forEach var= "dto_b" items="${dto_board}">
                  <tr>
                     <td> ${dto_b.match_kind}</td>
                     <td> ${dto_b.match_stardi_name}</td>
                     <td> ${dto_b.match_day}</td>
                     <td> ${dto_b.match_time}</td>
                     <td> ${dto_b.match_personnel_now}&nbsp;&nbsp;</td>
                     <td> <button type = "submit" onclick = "cancelMatch_A('${dto_b.match_num}', ${dto.member_num})">삭제</button>
                  </tr>
               </c:forEach>
	            </table>
	            </div>
              
              <div class="text-center">
                <a href="myPage.do?id=${id}" style="color: seagreen;">뒤로가기</a>
              </div>
            </div>
          </div>
        </div>
      </div>
  </section>
</body>
</html>