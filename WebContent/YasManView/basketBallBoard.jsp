<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/YasManView/header2.jsp"%>
<body class="loaded">
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
										src="${pageContext.request.contextPath}/YasManView/assets/img/yasman/11.jpg"
										alt="First slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="${pageContext.request.contextPath}/YasManView/assets/img/yasman/22.jpg"
										alt="Second slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100"
										src="${pageContext.request.contextPath}/YasManView/assets/img/yasman/33.jpg"
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
								style="background-color: val(- -blue);">👉 스토리 구경하기</span>
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
								style="background-color: val(- -blue);">👉 스토리 구경하기</span>
							</a>
						</div>
						<div class="text-center text-md-left mt-5">
							<a href="basketMatchInputForm.do?id=${id}"
								class="btn btn-primary btn-icon" target="_blank"
								style="background-color: val(- -blue); border: 2px solid val(- -blue);">
								<span class="btn-inner--text"
								style="background-color: val(- -blue);">👉 경기 글 작성</span>
							</a>
						</div>
					</c:if>
				</div>
			</div>
		</div>
	</section>

	<!------------------------------------------------------------------- 요일선택 ---------------------------------------------------------------------->
	<div class="text-center text-md-center mt-5">
		<input type="button" class="btn btn-primary btn-icon" name="seokyoung" value="서경대 풋살파크">
		<input type="button" class="btn btn-primary btn-icon" name="dobong" value="도봉산 구민 운동장">
		<input type="button" class="btn btn-primary btn-icon" name="yangjoo" value="양주 풋살파크">
		<input type="button" class="btn btn-primary btn-icon" name="gangbook" value="강북 생활 농구 센터">
	</div>
	<!------------------------------------------------------------------- 요일선택 ---------------------------------------------------------------------->

	<!-- ----------------------------------- 여기서부터 게시글 ------------------------------------------------------------------------ -->
	<!-- ----------------------------------- 체육관 버튼 누르기 전 ------------------------------------------------------------------------ -->
	<div id="list" align="center">사용하고 싶은 체육관을 클릭하세요!</div>
	<br>
	<br>
	<!-- ----------------------------------- 체육관 버튼 누르기 전 ------------------------------------------------------------------------ -->
	<!-- ----------------------------------- 여기까지 게시글 ----------------------------------------------------------------------------------- -->

	<!-- Footer -->
	<%@ include file="/YasManView/footer2.jsp"%>
	<!-- Footer -->
	
	<script src="/YasMan/YasManView/jquery-3.6.0.js"></script>
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
			$("input[name = yangjoo]").on(
					"click",
					function(event) {
						$.ajax(
							{
								type : "POST",
								url : "list.do",
								//처리한다음에 아이디 돌려줄 파일
								data : {
									match_stardi_name : $("input[name=yangjoo]").val(),
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
			
			$("input[name = gangbook]").on(
					"click",
					function(event) {
						$.ajax(
							{
								type : "POST",
								url : "list.do",
								//처리한다음에 아이디 돌려줄 파일
								data : {
									match_stardi_name : $("input[name=gangbook]").val(),
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
			}
		);
    	//-->
    </script>
</body>
</html>