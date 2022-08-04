<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    

<%@ include file="setting.jsp"%>

    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Webpixels">
    <title>Match Form</title>
    <!-- script -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!-- 맨 위로 올리는 script -->
    <script src="/YasMan/YasManView/assets/js/topUp.js"></script>
    <!-- CSS -->
    <!-- Favicon -->
    <link rel="stylesheet" href="/YasMan/YasManView/assets/libs/@fortawesome/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="/YasMan/YasManView/assets/css/quick-website.css" id="stylesheet">
    <link rel="stylesheet" href="/YasMan/YasManView/assets/css/index.css">
    <link rel="icon" href="/YasMan/assets/img/yasman/YasmanLogoBlack.png" type="image/png">
    <!-- Preloader -->
    <link href="/YasMan/YasManView/assets/css/preloader.css" rel="stylesheet">
</head>

<body>



    <!-- Navbar -->
     <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <div class="container">
             <!-- Brand -->
            <a class="navbar-brand" href="main.do">
                <img alt="Image placeholder" src="/YasMan/Images/yasLogo.png" style="height: 120px" ; id="navbar-logo">
            </a>
    <!-- Header =========================================================================-->
    <!-- 카테고리 및 로그인----------------------------------------------------------------------->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Collapse -->
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mt-4 mt-lg-0 ml-auto">
    
                    <li class="nav-item dropdown dropdown-animate" data-toggle="hover">
    
                        <a class="nav-link" href="category.html" role="button" data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false" style="color: seagreen;">Category</a>
                        <!-- =================================================로그인을 안 했을 때============================================ -->
                         	<c:if test = "${sessionScope.memId eq null}">
		                        <div class="dropdown-menu dropdown-menu-single">
		                            <a href="loginForm.do" class="dropdown-item">FootBall</a>
		                            <a href="loginForm.do" class="dropdown-item">BascketBall</a>
		                            <a href="loginForm.do" class="dropdown-item">Yasman Story</a>
		                            <a href="loginForm.do" class="dropdown-item">MyPage</a>
		                            <div class="dropdown-divider"></div>
		                            <a href="loginForm.do" class="dropdown-item"></a>
		                        </div>
			                    <li class="nav-item ">
			                        <a class="nav-link" href="loginForm.do">LogIn</a>
			                    </li>
		                    </c:if>
           <!-- =================================================로그인을 안 했을 때============================================ -->
           <!-- =================================================로그인을  했을 때============================================ --> 

		                    <c:if test = "${sessionScope.memId ne null}">
		                    	<div class="dropdown-menu dropdown-menu-single">
		                            <a href="footBallBoard.do" class="dropdown-item">FootBall</a>
		                            <a href="basketBallBoard.do?id=${id}" class="dropdown-item">BascketBall</a>
		                            <a href="StoryBoard.do" class="dropdown-item">Yasman Story</a>
		                            <a href="Mypage.do" class="dropdown-item">MyPage</a>
		                            <div class="dropdown-divider"></div>
		                            <a href="loginForm.do" class="dropdown-item"></a>
		                        </div>
		                        <li class="nav-item ">
			                        <a class="nav-link">${requestScope.nick_name}님, 환영합니다.</a>
			                    </li>
 							</c:if>
 						
           <!-- =================================================로그인을  했을 때============================================ --> 
    <!-- 카테고리 및 로그인----------------------------------------------------------------------->
                </ul>
            </div>
        </div>
    </nav>

    <!-- Main content -->
    <section class="slice slice-lg" id="sct-form-contact">
        <div class="container position-relative zindex-100">
            <div class="row justify-content-center mb-5">
                <div class="col-lg-6 text-center">
                    <h3>경기 정보 입력</h3>
                    <p class="lh-190">경기 정보를 입력해 글 작성을 완료하세요! </p>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <!-- Form -->
                    <form method = "post" action = "basketMatchInputPro.do?id=${id}">
                        <div class="form-group">
                            <h5>종목 선택</h5>
                            <select class="form-control" id="menu" name="match_kind" required>
                                <option value="" disabled selected>종목</option>
                                <option value="basketBall">농구</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <h5>구장 선택</h5>
                            <select class="form-control" id="menu" name="match_stardi_name" required>
                                <option value="" disabled selected>구장</option>
                                <option value="서경대 풋살파크">서경대 풋살파크</option>
                                <option value="도봉산 구민 운동장">도봉산 구민운동장</option>
                                <option value="양주 풋살파크">양주 풋살파크</option>
                                <option value="강북 생활 농구 센터">강북 생활 농구센터</option>
                            </select>
                        </div>
                        <div class="form-group">
                        <!-- 
                            <h5>팀 수 선택</h5>
                            <select class="form-control" id="menu" name="match_personnel" required>
                                <option value="" disabled selected>팀</option>
                                <option value= 2 >2 팀</option>
                            </select>
                            <h5>현재 등록된 팀 수 선택</h5>
                            <select class="form-control" id="menu" name="match_personnel" required>
                                <option value="" disabled selected>팀</option>
                                <option value= 0 >0 팀</option>
                            </select>
                             -->
                        </div>
                        <div class="form-group">
                            <h5>날짜 선택</h5>
                            <input class="form-control form-control-lg" type="date" name = "match_day">
                        </div>
                         <div class="form-group">
                            <h5>사용 시간 선택</h5>
                            <select class="form-control" id="menu" name="match_time" required>
                                <option value="" disabled selected>사용 시간 선택</option>
                                <option value="18:00 ~ 19:50">18:00 ~ 19:50</option>
                                <option value="20:00 ~ 21:50">20:00 ~ 21:50</option>
                            </select>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-block btn-lg btn-primary mt-4"
                                style="background-color:  sky-blue; border-style: none;">글 작성 완료
                            </button>
                        </div>
                        <div>
                            <button type="reset" class="btn btn-block btn-lg btn-primary mt-4"
                                style="background-color:  sky-blue; border-style: none;">
                                <a style="color: white;" href="football.html">돌아가기</a>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    
    <c:if test = "${sessionScope.memId eq null}">
	 <%@ include file="/YasManView/footer.jsp"%>
    </c:if>
    <c:if test = "${sessionScope.memId ne null}">
	 <%@ include file="/YasManView/loginFooter.jsp"%>
    </c:if>

   
    <!-- Core JS  -->
    <script src="/YasMan/YasManView/assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/svg-injector/dist/svg-injector.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/feather-icons/dist/feather.min.js"></script>
    <!-- Page JS -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC1oALsXLX-XEh2iYbE8tOjxsdFNHE39WM"></script>
    <!-- Quick JS -->
    <script src="/YasMan/YasManView/assets/js/quick-website.js"></script>
    <a href="#" id="TopButton"><img src="/YasMan/assets/img/icon/topbutton.jpg" style="width: 45px;"></a>
    <div id="chatbot" onclick="chatbot()"><img src="/YasMan/assets/img/icon/chatbot.png" style="width: 45px;"></div>

</body>
</html>
