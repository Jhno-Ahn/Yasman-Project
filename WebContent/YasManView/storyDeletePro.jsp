<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<c:if test="${resultCheck == 0}">
	<script type="text/javascript">
		
		alert( "아이디 틀림" );
		
	</script>
</c:if>
<c:if test="${resultCheck != 0}">
	<c:if test="${result == 0}">
		<script type="text/javascript">
			
			alert( "어ㅏㄴ대 다시해" );
							
		</script>
		<meta http-equiv="refresh" content="0; url=storyList.do?id=${requestScope.id}">
	</c:if>
	<c:if test="${result != 0}">
		<c:redirect url="storyList.do?id=${requestScope.id}"/>
	</c:if>
</c:if>


