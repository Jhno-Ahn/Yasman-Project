<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Webpixels">
    <%@ include file="/YasManView/setting.jsp"%>
    <title>BascketBall</title>


    <!-- CSS -->
    <!-- Favicon -->
    <link rel="stylesheet" href="/YasMan/YasManView/assets/libs/@fortawesome/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="/YasMan/YasManView/assets/css/quick-website.css" id="stylesheet">
    <link rel="stylesheet" href="/YasMan/YasManView/assets/css/index.css">
    <link rel="icon" href="/YasMan/Images/yasman/YasmanLogoBlack.png" type="image/png">
    <!-- Preloader -->
    <link href="/YasMan/YasManView/assets/css/preloader.css" rel="stylesheet">
</head>

<body>

    <!-- Preloader -->
    <!-- Header =========================================================================-->
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
    <section class="slice py-7" style="background-color: white;">
        <div class="container">
            <div class="row row-grid align-items-center">
                <div class="col-12 col-md-5 col-lg-6 order-md-2 text-center">
                    <!-- Image -->
                    <figure class="w-100">
                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="/YasMan/YasManView/assets/img/yasman/11.jpg" alt="First slide">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="/YasMan/YasManView/assets/img/yasman/22.jpg" alt="Second slide">
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="/YasMan/YasManView/assets/img/yasman/33.jpg" alt="Third slide">
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
                    </figure>
                </div>
                <div class="col-12 col-md-7 col-lg-6 order-md-1 pr-md-5">
                    <!-- Heading -->
                    <h1 class="display-4 text-center text-md-left mb-3">
                        <strong class="text-primary" style="color: rgb(190, 224, 243);"><span style="color: rgb(88, 110, 233);"> 농구 <br> </span></strong> 경기 일정을 한눈에
                        <br>확인해보세요.
                    </h1>
                    <!-- Text -->
                    <p class="lead text-center text-md-left text-muted">
                        스토리 게시판을 통해 <br>다른 회원들과 스포츠를  공유 해보세요.🧐
                    </p>
                    <!-- ---------------------------------------------------Buttons---------------------------------------------------------- -->
                    <!-- -------------------------------------------------회원일 때 -------------------------------------------------------------- -->
                  <c:if test = "${requestScope.id ne 'rhksflwk123'}">
                    <div class="text-center text-md-left mt-5">
                        <a href="storyList.do?id=${requestScope.id}" class="btn btn-primary btn-icon" target="_blank"
                            style="background-color: val(--blue);border: 2px solid val(--blue);">
                            <span class="btn-inner--text" style="background-color: val(--blue); ">스토리</span>
                            <span class="btn-inner--icon"><svg xmlns="http://www.w3.org/2000/svg" width="1em"
                                    height="1em" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                    stroke-linecap="round" stroke-linejoin="round"
                                    class="feather feather-chevron-right">
                                    <polyline points="9 18 15 12 9 6"></polyline>
                                </svg></span>
                        </a>
                    </div>
                  </c:if>
					<!-- -------------------------------------------------회원일 때 -------------------------------------------------------------- -->
                    <!-- -------------------------------------------------관리자일 때 -------------------------------------------------------------- -->
                  <c:if test = "${requestScope.id eq 'rhksflwk123'}">
                    <div class="text-center text-md-left mt-5">
                        <a href="storyList.do?id=${requestScope.id}" class="btn btn-primary btn-icon" target="_blank"
                            style="background-color: val(--blue);border: 2px solid val(--blue);">
                            <span class="btn-inner--text" style="background-color: val(--blue); ">스토리</span>
                            <span class="btn-inner--icon"><svg xmlns="http://www.w3.org/2000/svg" width="1em"
                                    height="1em" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                                    stroke-linecap="round" stroke-linejoin="round"
                                    class="feather feather-chevron-right">
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
        <a href="" class="btn btn-primary btn-icon" target="_blank"
            style="background-color: rgb(219, 120, 120);border: 2px solid rgb(219, 120, 120);">
            <span class="btn-inner--text" style="background-color: val(--blue); ">일</span>
        </a>
        <a href="" class="btn btn-primary btn-icon" target="_blank"
            style="background-color: green;border: 2px solid green;">
            <span class="btn-inner--text" style="background-color: val(--blue); ">월</span>
        </a>
        <a href="" class="btn btn-primary btn-icon" target="_blank"
            style="background-color: green;border: 2px solid green;">
            <span class="btn-inner--text" style="background-color: val(--blue); ">화</span>
        </a>
        <a href="" class="btn btn-primary btn-icon" target="_blank"
            style="background-color: green;border: 2px solid green;">
            <span class="btn-inner--text" style="background-color: val(--blue); ">수</span>
        </a>
        <a href="" class="btn btn-primary btn-icon" target="_blank"
            style="background-color: green;border: 2px solid green;">
            <span class="btn-inner--text" style="background-color: val(--blue); ">목</span>
        </a>
        <a href="" class="btn btn-primary btn-icon" target="_blank"
            style="background-color: green;border: 2px solid green;">
            <span class="btn-inner--text" style="background-color: val(--blue); ">금</span>
        </a>
        <a href="" class="btn btn-primary btn-icon" target="_blank"
            style="background-color: rgb(219, 120, 120);border: 2px solid rgb(219, 120, 120);">
            <span class="btn-inner--text" style="background-color: val(--blue); ">토</span>
        </a>
    </div>
	<!------------------------------------------------------------------- 요일선택 ---------------------------------------------------------------------->
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <!-- 경기신청버튼 -->
               <c:if test = "${requestScope.id eq 'rhksflwk123'}">
                <div class="d-flex justify-content-start align-items-center activity">
                    <a href="matchInputForm.do?id=${requestScope.id}" class="btn btn-neutral btn-icon d-none d-lg-inline-block"
                        style="border: 2px solid val(--blue);">경기 글 작성 &nbsp;&nbsp;<span class="btn-inner--icon">
                            <svg width="1em"
                                height="1em" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                stroke-linejoin="round" class="feather feather-chevron-right">
                                <polyline points="9 18 15 12 9 6"></polyline>
                            </svg></span>
                    </a>
                    <a href="basketBallStardiInputForm.do?id=${requestScope.id}" class="btn btn-neutral btn-icon d-none d-lg-inline-block"
                        style="border: 2px solid val(--blue);">경기장 추가 &nbsp;&nbsp;<span class="btn-inner--icon">
                            <svg width="1em"
                                height="1em" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                stroke-linejoin="round" class="feather feather-chevron-right">
                                <polyline points="9 18 15 12 9 6"></polyline>
                            </svg></span>
                    </a>
                </div>
               </c:if>
               <!-- --------------------------- 여기서부터 게시글 --------------------------------------------------------------------------------- -->
                <div class="mt-3">
                    <ul class="list list-inline">
                        <li class="d-flex justify-content-between">
                            <div class="d-flex flex-row align-items-center"></i>
                                <div class="ml-2">
                                    <h6 class="mb-0"><a href="">동탄 농구장</a></h6>
                                    <div class="d-flex flex-row mt-1 text-black-50 date-time">
                                        <div><i class="fa fa-calendar-o"></i><span class="ml-2">05.30 / 16:00 ~ 18:00</span></div>
                                        <div class="ml-3"><i class="fa fa-clock-o"></i><span class="ml-2">2h</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row align-items-center">
                                <div class="d-flex flex-column mr-2">
                                    <div class="profile-image"><img class="rounded-circle" src="https://i.imgur.com/xbxOs06.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/KIJewDa.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/wwd9uNI.jpg" width="30"></div><span class="date-time">11/4/2020 12:55</span></div>
                                <i
                                    class="fa fa-ellipsis-h"></i>
                            </div>
                        </li>
                        <li class="d-flex justify-content-between">
                            <div class="d-flex flex-row align-items-center"></i>
                                <div class="ml-2">
                                    <h6 class="mb-0"><a href="">부산 해운 농구장</a></h6>
                                    <div class="d-flex flex-row mt-1 text-black-50 date-time">
                                        <div><i class="fa fa-calendar-o"></i><span class="ml-2">05.30 / 16:00 ~ 18:00</span></div>
                                        <div class="ml-3"><i class="fa fa-clock-o"></i><span class="ml-2">2h</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row align-items-center">
                                <div class="d-flex flex-column mr-2">
                                    <div class="profile-image"><img class="rounded-circle" src="https://i.imgur.com/xbxOs06.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/KIJewDa.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/wwd9uNI.jpg" width="30"></div><span class="date-time">11/4/2020 12:55</span></div>
                                <i
                                    class="fa fa-ellipsis-h"></i>
                            </div>
                        </li>
                        <li class="d-flex justify-content-between">
                            <div class="d-flex flex-row align-items-center"></i>
                                <div class="ml-2">
                                    <h6 class="mb-0"><a href="">연세대 바스킷볼 구장</a></h6>
                                    <div class="d-flex flex-row mt-1 text-black-50 date-time">
                                        <div><i class="fa fa-calendar-o"></i><span class="ml-2">05.30 / 16:00 ~ 18:00</span></div>
                                        <div class="ml-3"><i class="fa fa-clock-o"></i><span class="ml-2">2h</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row align-items-center">
                                <div class="d-flex flex-column mr-2">
                                    <div class="profile-image"><img class="rounded-circle" src="https://i.imgur.com/xbxOs06.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/KIJewDa.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/wwd9uNI.jpg" width="30"></div><span class="date-time">11/4/2020 12:55</span></div>
                                <i
                                    class="fa fa-ellipsis-h"></i>
                            </div>
                        </li>
                        <li class="d-flex justify-content-between">
                            <div class="d-flex flex-row align-items-center"></i>
                                <div class="ml-2">
                                    <h6 class="mb-0"><a href="">고려대 바스킷볼 구장</a></h6>
                                    <div class="d-flex flex-row mt-1 text-black-50 date-time">
                                        <div><i class="fa fa-calendar-o"></i><span class="ml-2">05.30 / 16:00 ~ 18:00</span></div>
                                        <div class="ml-3"><i class="fa fa-clock-o"></i><span class="ml-2">2h</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-row align-items-center">
                                <div class="d-flex flex-column mr-2">
                                    <div class="profile-image"><img class="rounded-circle" src="https://i.imgur.com/xbxOs06.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/KIJewDa.jpg" width="30"><img class="rounded-circle" src="https://i.imgur.com/wwd9uNI.jpg" width="30"></div><span class="date-time">11/4/2020 12:55</span></div>
                                <i
                                    class="fa fa-ellipsis-h"></i>
                            </div>
                        </li>
                    </ul>
                </div>
             <!-- --------------------------- 여기까지 게시글 --------------------------------------------------------------------------------- -->
            </div>
        </div>
    </div>

  
    <!-- Footer -->
    <c:if test = "${sessionScope.memId eq null}">
	 <%@ include file="/YasManView/footer.jsp"%>
    </c:if>
    <c:if test = "${sessionScope.memId ne null}">
	 <%@ include file="/YasManView/loginFooter.jsp"%>
    </c:if>
   

    <!-- script -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!-- 맨 위로 올리는 script -->
    <script src="assets/js/topUp.js"></script>
    <!-- Core JS  -->
    <script src="/YasMan/YasManView/assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/svg-injector/dist/svg-injector.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/feather-icons/dist/feather.min.js"></script>
    <!-- Quick JS -->
    <script src="/YasMan/YasManView/assets/js/quick-website.js"></script>
    <!--아이콘-->
    <a href="#" id="TopButton"><img src="/YasMan/Images/icon/topbutton.jpg" style="width: 45px;"></a>
    <div id="chatbot" onclick="chatbot()"><img src="/YasMan/Images/icon/chatbot.png" style="width: 45px;"></div>
</body>

</html>