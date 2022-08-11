<%@page import="member.MemberLogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<link type="text/css" rel="stylesheet"
	href="/YasMan/YasMasnView/memberInputForm.css">
<script src="/YasMan/YasManView/script.js"></script>
<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center ">
			<div class="col-md-7 col-lg-5">
				<div class="wrap">
					<div class="login-wrap p-4 p-md-5 ">
						<div class="d-flex">
							<div class="w-100">
								<c:if test="${result eq 0}">
									<h5>${page_confirm}</h5>
									<!-- 아이디가 있는지 없는지 디비에게 물어봐야함. -->
									<table border="1">
										<tr>
											<th style="width: 300px"><span>${id}</span>${msg_confirm_o}
											</th>
										</tr>
										<tr>
											<th><input class="inputbutton" type="button"
												value="${btn_ok}" onclick="setid('${id}')"></th>
										</tr>
									</table>
								</c:if>
								<c:if test="${result ne 0}">
									<form method="post" name="confirmform" action="confirmId.do"
										onsubmit="return confirmidcheck()">
										<table border="1">
											<tr>
												<th colspan="2"><span>${id}</span>${msg_confirm_x}</th>
											</tr>
											<tr>
												<th>${str_id}
												<td><input class="input" type="text" name="id"
													autofocus></td>
											</tr>
											<tr>
												<th colspan="2"><input class="inputbutton"
													type="submit" value="${btn_ok}"> <input
													class="inputbutton" type="button" value="${btn_cancel}"
													onclick="window.close()"></th>
											</tr>
										</table>
									</form>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>