<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


     <%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
  	
  	<head>
  		<style>
  			#matchlist {
  				text:center;
  			}
  		</style>
  	</head>
  	<body style = "text-align:center;">
	   <hr>
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
                     <td><a href = "basketBallContent.do?id=${id}&match_num=${dto.match_num}"> ${dto.match_stardi_name}</a></td>
                     <td> ${dto.match_day}</td>
                     <td> ${dto.match_time}</td>
                     <td> ${dto.match_personnel_now}</td>
                  </tr>
               </c:forEach>
            </table>
         	</div>
    </body>
   
    