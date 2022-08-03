<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="en">

<%@ include file="/YasManView/header.jsp"%>

<body class="loaded">

	<!-- Preloader -->
	<!-- Header =========================================================================-->
	<nav class="navbar navbar-expand-lg navbar-light bg-white">
		<div class="container">
			<!-- Brand -->
			<a class="navbar-brand" href="main.do"> <img
				alt="Image placeholder" src="/YasMan/Images/yasLogo.png"
				style="height: 120px" id="navbar-logo">
			</a>
			<!--Toggler -->

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarCollapse" aria-controls="navbarCollapse"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!-- Collapse  -->
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mt-4 mt-lg-0 ml-auto">
					<li class="nav-item dropdown dropdown-animate" data-toggle="hover">
						<a class="nav-link" href="category.html" role="button"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
						style="color: seagreen;">Category</a> <!-- =================================================로그인을 안 했을 때============================================ -->
						<c:if test="${sessionScope.memId eq null}">
							<div class="dropdown-menu dropdown-menu-single">
								<a href="loginForm.do" class="dropdown-item">FootBall</a> <a
									href="loginForm.do" class="dropdown-item">BascketBall</a> <a
									href="loginForm.do" class="dropdown-item">Yasman Story</a> <a
									href="loginForm.do" class="dropdown-item">MyPage</a>
								<div class="dropdown-divider"></div>
								<a href="loginForm.do" class="dropdown-item"></a>
							</div>
							<li class="nav-item"><a class="nav-link" href="loginForm.do">LogIn</a>
							</li>
						</c:if> <!-- =================================================로그인을 안 했을 때============================================ -->
						<!-- =================================================로그인을  했을 때============================================ -->

						<c:if test="${sessionScope.memId ne null}">
							<div class="dropdown-menu dropdown-menu-single">
								<a href="footBallBoard.do" class="dropdown-item">FootBall</a> <a
									href="basketBallBoard.do?id=${id}" class="dropdown-item">BasketBall</a>
								<a href="StoryBoard.do" class="dropdown-item">Yasman Story</a> <a
									href="Mypage.do" class="dropdown-item">MyPage</a>
								<div class="dropdown-divider"></div>
								<a href="loginForm.do" class="dropdown-item"></a>
							</div>
							<li class="nav-item"><a class="nav-link">${requestScope.nick_name}님,
									환영합니다.</a></li>
						</c:if> <!-- =================================================로그인을  했을 때============================================ -->
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Main content -->
	<section class="slice py-7" style="background-color: white;">
		<div class="container">
			<div class="row row-grid align-items-center">
				<div class="col-12 col-md-5 col-lg-6 order-md-2 text-center">
					<!-- Image -->
					<figure class="w-100">
						<div id="carouselExampleControls" class="carousel slide"
							data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img class="d-block w-100"
										src="/YasMan/YasManView/assets/img/yasman/11.jpg"
										alt="First slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="/YasMan/YasManView/assets/img/yasman/22.jpg"
										alt="Second slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="/YasMan/YasManView/assets/img/yasman/33.jpg"
										alt="Third slide">
								</div>
							</div>
							<a class="carousel-control-prev" href="#carouselExampleControls"
								role="button" data-slide="prev"> <span
								class="carousel-control-prev-icon" aria-hidden="true"></span> <span
								class="sr-only">Previous</span>
							</a> <a class="carousel-control-next" href="#carouselExampleControls"
								role="button" data-slide="next"> <span
								class="carousel-control-next-icon" aria-hidden="true"></span> <span
								class="sr-only">Next</span>
							</a>
						</div>
					</figure>
				</div>
				<div class="col-12 col-md-7 col-lg-6 order-md-1 pr-md-5">
					<!-- Heading -->
					<h1 class="display-4 text-center text-md-left mb-3">
						<strong class="text-primary" style="color: rgb(190, 224, 243);"><span
							style="color: rgb(88, 110, 233);"> 농구 <br>
						</span></strong> 경기 일정을 한눈에 <br>확인해보세요.
					</h1>
					<!-- Text -->
					<p class="lead text-center text-md-left text-muted">
						스토리 게시판을 통해 <br>다른 회원들과 스포츠를 공유 해보세요.🧐
					</p>
					<!-- ---------------------------------------------------Buttons---------------------------------------------------------- -->
					<!-- -------------------------------------------------회원일 때 -------------------------------------------------------------- -->
					<c:if test="${requestScope.id ne 'rhksflwk123'}">
						<div class="text-center text-md-left mt-5">
							<a href="storyList.do?id=${requestScope.id}"
								class="btn btn-primary btn-icon" target="_blank"
								style="background-color: val(- -blue); border: 2px solid val(- -blue);">
								<span class="btn-inner--text"
								style="background-color: val(- -blue);">스토리</span> <span
								class="btn-inner--icon"><svg
										xmlns="http://www.w3.org/2000/svg" width="1em" height="1em"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" class="feather feather-chevron-right">
                                    <polyline points="9 18 15 12 9 6"></polyline>
                                </svg></span>
							</a>
						</div>
					</c:if>
					<!-- -------------------------------------------------회원일 때 -------------------------------------------------------------- -->
					<!-- -------------------------------------------------관리자일 때 -------------------------------------------------------------- -->
					<c:if test="${requestScope.id eq 'rhksflwk123'}">
						<div class="text-center text-md-left mt-5">
							<a href="storyList.do?id=${requestScope.id}"
								class="btn btn-primary btn-icon" target="_blank"
								style="background-color: val(- -blue); border: 2px solid val(- -blue);">
								<span class="btn-inner--text"
								style="background-color: val(- -blue);">스토리</span> <span
								class="btn-inner--icon"><svg
										xmlns="http://www.w3.org/2000/svg" width="1em" height="1em"
										viewBox="0 0 24 24" fill="none" stroke="currentColor"
										stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round" class="feather feather-chevron-right">
                                    <polyline points="9 18 15 12 9 6"></polyline>
                                </svg></span>
							</a>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</section>

	<!------------------------------------------------------------------- 요일선택 ---------------------------------------------------------------------->
	<div class="text-center text-md-center mt-5">
		<input type="button" class="btn btn-primary btn-icon" name="seokyoung"
			style="background-color: white; text-color: blue;" value="서경대 풋살파크">
		<input type="button" class="btn btn-primary btn-icon" name="dobong"
			style="background-color: white; text-color: blue;" value="도봉산 구민 운동장">
		<input type="button" class="btn btn-primary btn-icon" name="yangjoo"
			style="background-color: white; text-color: blue;" value="양주 풋살 파크">
		<input type="button" class="btn btn-primary btn-icon" name="seokyoung"
			style="background-color: white; text-color: blue;"
			value="강북 생활 운동 센터">
	</div>
	<!------------------------------------------------------------------- 요일선택 ---------------------------------------------------------------------->
	<div class="col-md-12">
		<!-- 경기신청버튼 -->
		<c:if test="${requestScope.id eq 'rhksflwk123'}">
			<div class="d-flex justify-content-start align-items-center activity">
				<a href="basketMatchInputForm.do?id=${id}"
					class="btn btn-neutral btn-icon d-none d-lg-inline-block"
					style="border: 2px solid val(- -blue);">경기 글 작성 &nbsp;&nbsp;<span
					class="btn-inner--icon"> <svg width="1em" height="1em"
							viewBox="0 0 24 24" fill="none" stroke="currentColor"
							stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
							class="feather feather-chevron-right">
                                <polyline points="9 18 15 12 9 6"></polyline>
                            </svg></span>
				</a>
			</div>
		</c:if>
	</div>
	<!-- ----------------------------------- 여기서부터 게시글 ------------------------------------------------------------------------ -->
	<!-- ----------------------------------- 체육관 버튼 누르기 전 ------------------------------------------------------------------------ -->
	<hr>
	<div id="list" align="center">사용하고 싶은 체육관을 클릭하세요!</div>
	<br>
	<br>
	<!-- ----------------------------------- 체육관 버튼 누르기 전 ------------------------------------------------------------------------ -->
	<!-- ----------------------------------- 여기까지 게시글 ----------------------------------------------------------------------------------- -->



	<!-- Footer -->
		<%@ include file="/YasManView/footer.jsp"%>
	<script type="text/javascript">
    	//<!--
    		$(document).ready(
		function() {
			//리스트 불러오기
			$("input[name = seokyoung]").on(
					"click",
					function(event) {
						$.ajax(
							{
								type : "POST",
								url : "list.do",
								//처리한다음에 아이디 돌려줄 파일
								data : {
									match_stardi_name : $("input[name=seokyoung]").val(),
									id : "${id}"
								},
								dataType : "text",
								success : function(data) {
									$("#list").html(data);
									//id가 idcheck인 애한테 data를 출력시킨다는 뜻
								},
								error : function(error) {
									$("#list").html(error);
								}
							}
						)	
					}
				);
			
			$("input[name = dobong]").on(
					"click",
					function(event) {
						$.ajax(
							{
								type : "POST",
								url : "list.do",
								//처리한다음에 아이디 돌려줄 파일
								data : {
									match_stardi_name : $("input[name=dobong]").val(),
									
								},
								dataType : "text",
								success : function(data) {
									$("#list").html(data);
									//id가 idcheck인 애한테 data를 출력시킨다는 뜻
								},
								error : function(error) {
									$("#list").html(error);
								}
							}
						)	
					}
				);
			}
		);
    	//-->
    </script>



</body>

</html>