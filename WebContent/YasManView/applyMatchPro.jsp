<%@page import="member.MemberLogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<link type="text/css" rel="stylesheet" href="/YasMan/YasMasnView/memberInputForm.css">
<script src="/YasMan/YasManView/script.js"></script>
<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center ">
				<div class="col-md-7 col-lg-5">
					<div class="wrap">
						<div class="login-wrap p-4 p-md-5 ">
							<div class="d-flex">
								<div class="w-100">
								<!-- -------------------------------------------------------------여기부터 ------------------------------- -->
									<c:if test = "${result eq 0}">
										<h5>경기 신청</h5>
											<!-- 아이디가 있는지 없는지 디비에게 물어봐야함. -->
											<table border="1">
												<tr>
													<th>더 이상 신청 하실 수 없습니다.</th>
													<th><input class="inputbutton" type="button" value= "${btn_ok}"
													onclick= "setok()"></th>
												</tr>
											</table>
									</c:if>
									<c:if test = "${result ne 0}">
										<h5>경기 신청</h5>
											<!-- 아이디가 있는지 없는지 디비에게 물어봐야함. -->
											<table border="1">
												<tr>
													<th>신청이 완료되었습니다.</th>
													<th><input class="inputbutton" type="button" value= "${btn_ok}"
													onclick= "setok()"></th>
												</tr>
											</table>
									</c:if>
								<!-- -------------------------------------------------------------여기부터 ------------------------------- -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>