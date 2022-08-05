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
									<c:if test = "${dto.my_match_num_first eq match_num}">
										<h5>경기 신청</h5>
											<!-- 아이디가 있는지 없는지 디비에게 물어봐야함. -->
											<table border="1">
												<tr>
													<th>이미 신청하셨습니다.</th>
													<th><input class="inputbutton" type="button" value= "${btn_ok}"
													onclick= "setok()"></th>
												</tr>
											</table>
									</c:if>
									<c:if test = "${dto.my_match_num_first ne match_num}">
										<c:if test = "${dto.my_match_num_second eq match_num}">
											<h5>경기 신청</h5>
											<!-- 아이디가 있는지 없는지 디비에게 물어봐야함. -->
												<table border="1">
													<tr>
														<th>이미 신청하셨습니다.</th>
														<th><input class="inputbutton" type="button" value= "${btn_ok}"
														onclick= "setok()"></th>
													</tr>
												</table>
										</c:if>
										<c:if test = "${dto.my_match_num_second ne match_num}">
											<c:if test = "${dto.my_match_num_third eq match_num}">
												<h5>경기 신청</h5>
												<!-- 아이디가 있는지 없는지 디비에게 물어봐야함. -->
													<table border="1">
														<tr>
															<th>이미 신청하셨습니다.</th>
															<th><input class="inputbutton" type="button" value= "${btn_ok}"
															onclick= "setok()"></th>
														</tr>
													</table>
											</c:if>
											<c:if test = "${dto.my_match_num_third ne match_num}">
												<c:if test = "${dto_board.match_personnel_now eq dto_board.match_personnel}">
													<h5>경기 신청</h5>
													<!-- 아이디가 있는지 없는지 디비에게 물어봐야함. -->
														<table border="1">
															<tr>
																<th>신청 인원이 초과하였습니다.</th>
																<th><input class="inputbutton" type="button" value= "${btn_ok}"
																onclick= "setok()"></th>
															</tr>
														</table>
												</c:if>
												<c:if test = "${dto_board.match_personnel_now lt dto_board.match_personnel}">
													<h5>경기 신청</h5>
													<!-- 아이디가 있는지 없는지 디비에게 물어봐야함. -->
														<table border="1">
															<tr>
																<th>정말 신청하시겠습니까?</th>
																<th><input class="inputbutton" type="button" value= "${btn_ok}"
																onclick= "applyBasketMatch_B('${id}', '${match_num}')" ></th>
															</tr>
														</table>
												</c:if>
											</c:if>
										</c:if>
									</c:if>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>