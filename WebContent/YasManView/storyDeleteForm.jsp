<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<form name="passwdform" method="post" action="storyDeletePro.do">
	<input type="hidden" name="num" value="${story_num}"> 
	<%-- <input type="hidden" name="pageNum" value="${pageNum}"> --%>

	<table>
		<tr>
			<th>패스워드입력</th>
			<td><input class="input" type="text" name="story_num"
				maxlength="20" autofocus></td>
		</tr>
		<tr>
			<th colspan="2"><input class="inputbutton" type="submit"
				value="삭제"> <input class="inputbutton" type="button"
				value="삭제취소"
				onclick="location='storyList.do?pageNum=${pageNum}'"></th>
		</tr>
	</table>
</form>