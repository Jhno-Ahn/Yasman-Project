<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>

<footer class="position-relative" id="footer-main">
	<div class="footer pt-lg-7">
		<!-- SVG shape -->
		<!-- Footer -->
		<div class="container pt-4">
			<div class="row">
				<div class="col-lg-4 mb-5 mb-lg-0">
					<!-- Theme's logo -->
					<c:if test = "${sessionScope.memId ne null}">
					<a href="main.do?id=${id}"> <img alt="Image placeholder"
						src="${pageContext.request.contextPath}/YasManView/assets/img/yasman/YasmanLogoBlack.png"
						id="footer-logo" style="height: 80px;">
					</a>
					</c:if>
					<c:if test = "${sessionScope.memId eq null}">
					<a href="main.do"> <img alt="Image placeholder"
						src="${pageContext.request.contextPath}/YasManView/assets/img/yasman/YasmanLogoBlack.png"
						id="footer-logo" style="height: 80px;">
					</a>
					</c:if>
					
					<!-- Webpixels' mission -->
					<p class="mt-4 text-sm opacity-8 pr-lg-4">
						야외 스포츠 매니아~<br> Yasman이 도와드립니다.
					</p>
					<!-- Social -->
					<ul class="nav mt-4">
						<li class="nav-item"><a class="nav-link pl-0"
							href="https://www.premierleague.com/" target="_blank"> <i
								class="fab fa-dribbble"></i>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="https://github.com/Jhno-Ahn" target="_blank"> <i
								class="fab fa-github"></i>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="https://www.instagram.com/dlwlrma/" target="_blank"> <i
								class="fab fa-instagram"></i>
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="https://ko-kr.facebook.com/" target="_blank"> <i
								class="fab fa-facebook"></i>
						</a></li>
					</ul>
				</div>
				<div class="col-lg-2 col-6 col-sm-4 ml-lg-auto mb-5 mb-lg-0">
					<h6 class="heading mb-3">계정</h6>
					<ul class="list-unstyled">
					<c:if test = "${sessionScope.memId ne null}">
						<c:if test = "${id eq 'rhksflwk123'}">
							<li><a href="matchAdmin.do?id=${id}&nick_name=${nick_name}">경기 관리</a></li>
							<li><a href="memberAdmin.do?id=${id}&nick_name=${nick_name}">회원 관리</a></li>
						</c:if>
						<c:if test = "${id ne 'rhksflwk123'}">
							<li><a href="myPage.do?id=${id}">프로필</a></li>
							<li><a href="mySports.do?id=${id}">나의 스포츠</a></li>
						</c:if>
					</c:if>
					<c:if test = "${sessionScope.memId eq null}">
						<li><a href="loginForm.do">프로필</a></li>
						<li><a href="loginForm.do">나의 스포츠</a></li>
					</c:if>
					</ul>
				</div>
				<div class="col-lg-2 col-6 col-sm-4 mb-5 mb-lg-0">
					<h6 class="heading mb-3">YasMan</h6>
					<ul class="list-unstyled">
					  <c:if test = "${sessionScope.memId ne null}">
						<li><a href="storyList.do?id=${id}">커뮤니티</a></li>
					  </c:if>
					  <c:if test = "${sessionScope.memId eq null}">
						<li><a href="loginForm.do">커뮤니티</a></li>
					  </c:if>
					   <c:if test = "${sessionScope.memId ne null}">
						<li><a href="QnAForm.do?id=${id}">자주 묻는 질문</a></li>
					  </c:if>
					  <c:if test = "${sessionScope.memId eq null}">
						<li><a href="QnAForm.do">커뮤니티</a></li>
					  </c:if>
					  
					</ul>
				</div>
			</div>
			<hr class="divider divider-fade divider-dark my-4">
			<div class="row align-items-center justify-content-md-between pb-4">
				<div class="col-md-6">
					<div
						class="copyright text-sm font-weight-bold text-center text-md-left">
						&copy; 2022 <a href="#" class="font-weight-bold" target="_blank"
							style="color: olivedrab">Yas-man</a>. All rights reserved
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>

</body>

