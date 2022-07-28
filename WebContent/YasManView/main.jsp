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
    <%@ include file="/YasManView/setting.jsp"%>
    <title>Yasman</title>
 	<!-- CSS -->
    <!-- Favicon -->
    <link rel="stylesheet" href="/YasMan/YasManView/assets/libs/@fortawesome/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="/YasMan/YasManView/assets/css/quick-website.css" id="stylesheet">
    <link rel="stylesheet" href="/YasMan/YasManView/assets/css/index.css">
    <!-- 형광펜 css -->
    <link href="/YasMan/YasManView/assets/css/neon.css">
    <!-- Preloader -->
    <link href="/YasMan/YasManView/assets/css/preloader.css" rel="stylesheet">
    <script src="/YasMan/YasManView/script.js"></script>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <div class="container">
             <!-- Brand -->
            <a class="navbar-brand" href="main.do">
                <img alt="Image placeholder" src="/YasMan/Images/yasLogo.png" style="height: 120px" id="navbar-logo">
            </a>
             <!--Toggler -->
          
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Collapse  -->
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
		                        <li class="nav-item">
                        			<a class="nav-link" href="loginForm.do">LogIn</a>
                   				 </li>
		                    </c:if>
           <!-- =================================================로그인을 안 했을 때============================================ -->
           <!-- =================================================로그인을  했을 때============================================ --> 

		                    <c:if test = "${sessionScope.memId ne null}">
		                    	<div class="dropdown-menu dropdown-menu-single">
		                            <a href="footBallBoard.do" class="dropdown-item">FootBall</a>
		                            <a href="basketBallBoard.do?id=${id}" class="dropdown-item">BasketBall</a>
		                            <a href="StoryBoard.do" class="dropdown-item">Yasman Story</a>
		                            <a href="Mypage.do" class="dropdown-item">MyPage</a>
		                            <div class="dropdown-divider"></div>
		                            <a href="loginForm.do" class="dropdown-item"></a>
		                        </div>
		                        <li class="nav-item">
                        			<a class="nav-link">${requestScope.nick_name}님, 환영합니다.</a>
                   				</li>
 						    </c:if>
           <!-- =================================================로그인을  했을 때============================================ --> 
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- --------------------------------------------------------------------------------------------------------------- -->
    <!-- 여기까지가 헤더 -->
    
    
    <section class="slice slice-lg bg-section-gray pt-10 pt-lg-5 pb-lg-5 pb-10">
        <div class="container" >
            <div class="col-md-20">
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
           <!-- =================================================로그인을 안 했을 때============================================ -->
                      <c:if test = "${sessionScope.memId eq null}">
                        <div class="carousel-item active">
                            <a href="football.html">
                                <img src="/YasMan/Images/m-foot.png" alt="First slide" width="100%" height="550px">
                            </a>
                        </div>
                        <div class="carousel-item">
                            <a href="bascketball.html">
                                <img src="/YasMan/Images/m-basck.png" alt="Second slide" width="100%" height="550px">
                            </a>
                        </div>
                      </c:if>
           <!-- =================================================로그인을 안 했을 때============================================ -->
           <!-- =================================================로그인을  했을 때============================================ --> 
           			<c:if test = "${sessionScope.memId ne null}">
                        <div class="carousel-item active">
                            <a href="footballStardiBoard.do">
                                <img src="/YasMan/Images/m-foot.png" alt="First slide" width="100%" height="550px">
                            </a>
                        </div>
                        <div class="carousel-item">
                            <a href="bascketballStardiBoard.do">
                                <img src="/YasMan/Images/m-basck.png" alt="Second slide" width="100%" height="550px">
                            </a>
                        </div>
                    </c:if>
           <!-- =================================================로그인을  했을 때============================================ --> 
                        <div class="carousel-item">
                            <img src="/YasMan/Images/m-1.png" alt="Second slide" width="100%" height="550px">
                        </div>
                        <div class="carousel-item">
                            <img src="/YasMan/Images/m-2.png" alt="Second slide" width="100%" height="550px">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button"
                        data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button"
                        data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <div class="col">
                <div class="row justify-content-left">
                    <div class="col-md-12 text-center">
                        <div class="mt-4 mb-6">
                            <h2 class=" mt-4"><span class="yellow underline"><a href="login.html">너도 참가해 볼래?</a></span></h2><br>
                            <h4 class="text-black mt-3">신청 버튼 하나로 상대팀을 바로 구한다!</h4>
                            <!--Play button -->
                           <c:if test = "${sessionScope.memId eq null}">
                            <a href="loginForm.do" class="btn btn-custom btn-icon mt-4">더 알아보기</a>
                           </c:if>
                           <c:if test = "${sessionScope.memId ne null}">
                            <a href="main.do" class="btn btn-custom btn-icon mt-4">더 알아보기</a>
                           </c:if>
                        </div>
                    </div>             
                </div>
            </div> 
        </div>
    </section>
           <!-- =================================================로그인을 안 했을 때============================================ -->
   <c:if test = "${sessionScope.memId eq null}">
	 <%@ include file="/YasManView/footer.jsp"%>
    </c:if>
    <c:if test = "${sessionScope.memId ne null}">
	 <%@ include file="/YasManView/loginFooter.jsp"%>
    </c:if>

    <!--  Core JS  -->
 	<!-- script -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!-- 맨 위로 올리는 script -->
    <script src="/YasMan/YasManView/assets/js/topUp.js"></script>


    <!-- Core JS  -->
    <script src="/YasMan/YasManwView/assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/svg-injector/dist/svg-injector.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/feather-icons/dist/feather.min.js"></script>
    <!-- Quick JS -->
    <script src="/YasMan/YasManView/assets/js/quick-website.js"></script>

    <!-- 챗봇 -->
    <a href="#" id="TopButton"><img src="/YasMan/YasManView/assets/img/icon/topbutton.jpg" style="width: 45px; cursor:pointer;"></a>
    <div id="chatbot" onclick="chatbot()"><img src="/YasMan/YasManView/assets/img/icon/chatbot.png" style="width: 45px; cursor:pointer;"></div>
      
</body>

</html> 