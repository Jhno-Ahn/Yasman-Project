<%@page import="member.MemberLogonDBBean"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<script src="/YasMan/YasManView/script.js"></script>
<h2>${page_input}</h2>
<c:if test="${result eq -1 }">
	<script type="text/javascript">
	      <!--
	      erroralert( iderror )
	      //-->
	    </script>
</c:if>
<c:if test="${result eq 0 }">
	<script type="text/javascript">
         <!--
         erroralert( passwderror )
         //-->
      </script>
</c:if>
<c:if test="${result eq 1}">
	    ${sessionScope.memId = id}
	    <c:redirect url="main.do">
		<c:param name="id" value="${requestScope.id}" />
		<!--<c:param name = "member_num" value = "${requestScope.member_num}"/>-->
	</c:redirect>
</c:if>