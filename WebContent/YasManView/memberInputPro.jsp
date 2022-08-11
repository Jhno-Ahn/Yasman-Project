<%@page import="member.MemberLogonDBBean"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<script src="/YasMan/YasMember/script.js"></script>
<h2>회원 가입</h2>
<c:if test="${result eq 0}">
	<script type="text/javascript">
			<!--
			erroralert(inputerror);
			//-->
		</script>
</c:if>
<c:if test="${result ne 0}">
	<c:redirect url="loginForm.do" />
</c:if>