<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<form name="passwdform" method="post" action="storyDeletePro.do">
	<input type="hidden" name="story_num" value="${story_num}"> 
	<input type="hidden" name="story_member_id" value="${story_member_id }">
	<%-- <input type="hidden" name="pageNum" value="${pageNum}"> --%>

	<table>
		<tr>
			<th>아이디 입력</th>
			<!-- <td><input class="input" type="text" name="story_member_id"
				maxlength="20" autofocus></td> -->
		</tr>
		<tr>
			<th colspan="2"><input class="inputbutton" type="submit"
				value="삭제"> <input class="inputbutton" type="button"
				value="삭제취소"
				onclick="location='storyList.do'"></th>
		</tr>
	</table>
</form>