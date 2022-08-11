<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<script src="/YasMan/YasMember/script.js"></script>
<!DOCTYPE html>
<h2>경기가 중복 되었습니다.</h2>
<c:if test="${result eq 0}">
	<script type="text/javascript">
			<!--
			erroralert(inputerror);
			//-->
		</script>
</c:if>
<c:if test="${result ne 0}">
	<c:redirect url="basketBallBoard.do?id=${id}&nick_name=${nick_name}">
		<c:param name="id" value="${requestScope.id}" />
	</c:redirect>
</c:if>