<%@page import="story.StoryDBBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
		<meta http-equiv="refresh" content="0; url=storyList.do">
	</c:if>
	<c:if test="${result != 0}">
		<c:redirect url="storyList.do"/>
	</c:if>
</c:if>


