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
                  <h3 class="text-center" style="font-family: inherit; color: seagreen; font-weight: bold;">${nick_name}님, 안녕하세요</h3>
                  <br>
                  <h1 class="text-center" style="font-family: inherit; color: black; font-weight: bold;">회원 관리</h1>
                </div>
              </div>
              <hr>
              <br><br>
              
              <div class="text-center" id = "matchList">
                <table id = "table">
                  <tr>
                     <th style="width:50%%"> 아이디 </th>
                     <th style="width:40%"> 닉네임 </th>
                  </tr>
               <c:forEach var= "dto" items="${dtos}">
                  <tr>
                     <td> ${dto.id}</td>
                     <td> ${dto.nick_name}</td>
                     <td> <button type = "submit" onclick = "deleteMember_A('${dto.id}', '${dto.nick_name}')">삭제</button>
                  </tr>
               </c:forEach>
	            </table>
	            </div>
	            <div></div>
	            <br>
	            <hr>
	            <br>
              <div class="text-center">
                <a href="index.html" style="color: seagreen;">뒤로가기</a>
              </div>
              <br>
            </div>
            
          </div>
        </div>
      </div>
  </section>

</body>

</html>