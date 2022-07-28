<%@page import="story.StoryDBBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:if test="${result == 0}">
	<script type="text/javascript">
		<!--
		alert( "다시하셈" );
		//-->
	</script>
	<meta http-equiv="refresh" content="0; url=storyInputForm.do">
</c:if>
<c:if test="${result != 0}">
	<c:redirect url="storyList.do"/>
		<%-- <c:param name = "story_member_id" value = "${requestScope.stroy_member_id}"/>
	</c:redirect>	 --%>
</c:if>	