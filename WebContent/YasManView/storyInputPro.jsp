<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<c:if test="${result == 0}">
	<script type="text/javascript">
		<!--
		alert( "다시하셈" );
		//-->
	</script>
	<meta http-equiv="refresh" content="0; url=storyInputForm.do?id${requestScope.id}">
</c:if>
<c:if test="${result != 0}">
	<c:redirect url="storyList.do?id=${requestScope.id}"/>
</c:if>	