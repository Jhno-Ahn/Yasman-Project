<%@page import="story.StoryDataBean" %>
<%@page import="story.StoryDBBean" %>
<%@page import="story.StoryDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   	<!-- script -->
   	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
   	<!-- 맨 위로 올리는 script -->
  	<script src="/YasMan/YasManView/assets/js/topUp.js"></script> 
    <!-- CSS -->
    <!-- Favicon -->
    <link href="/YasMan/YasManView/assets/css/chunk.css" rel="stylesheet">
    <link rel="stylesheet" href="/YasMan/YasManView/assets/libs/@fortawesome/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="/YasMan/YasManView/assets/css/quick-website.css" id="stylesheet">
    <link rel="stylesheet" href="/YasMan/YasManView/assets/css/index.css">
    <link rel="icon" href="/YasMan/YasManView/assets/img/yasman/YasmanLogoBlack.png" type="image/png">
    <!-- Preloader -->
    <link href="/YasMan/YasManView/assets/css/preloader.css" rel="stylesheet">
</head>
<body>
 	<div class="preloader">
        <div class="spinner-border text-primary" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-dark-dark">
        <div class="container">
            <!-- Brand -->
            <a class="navbar-brand" href="main.do">
                <img alt="Image placeholder" src="assets/img/yasman/YasmanLogoBlack.png" style="height: 120px" ; id="navbar-logo">
            </a>
            <!-- Toggler -->
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
                        <div class="dropdown-menu dropdown-menu-single">
                            <a href="football.html" class="dropdown-item">FootBall</a>
                            <a href="bascketball.html" class="dropdown-item">BascketBall</a>
                            <a href="story.html" class="dropdown-item">Yasman Story</a>
                            <a href="myPage.html" class="dropdown-item">MyPage</a>
                            <div class="dropdown-divider"></div>
                            <a href="login.html" class="dropdown-item"></a>
                        </div>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="login.html">LogIn</a>
                    </li>
    
                </ul>
            </div>
        </div>
    </nav>
    <!-- Main content -->
    <section class="slice slice-lg pb-5">
        <div class="container">
            <!-- Section title -->
            <div class="row mb-10 justify-content-center text-center">
                <div class="col-lg-5 col-md-10">
                    <div class="circle"></div>
                    <div class="text"><big><big>Yas - Story<br>
                    <small>당신의 스포츠를 공유하세요! 👟</small></big></big></div>
                </div>
            </div>
            
            <!-- 로그인 했을때만 보이게  -->      
            <div class="row ml-3">
            	<button type="button" class="btn btn-lg" 
                    style="background-color:  rgb(156, 218, 243); border-style: none;">
                    <a style="color: white;" href="storyInputForm.do">스토리 작성</a>
                </button>
            </div>
            <br>
            <!--  -->
            <div class="row">
            	<c:forEach items="${dtos}" var="dto">
                 <div class="col-lg-4">
                    <div class="card text-center">
                        <div class="px-5 pb-5 pt-5" style="padding: 0;">
                            <br>
                            <input type="text" name="story_num" readonly value="${dtos.story_num }">
                       		<input type="text" name="story_member_id" readonly value="${dtos.story_member_id }">
                            <h3 class="story_title">${dtos.story_title}</h3>
                            <br>
                            <hr style="border: solid 1px; margin: 0;">
                            <br>
                            <div class="py-4">
                                <ul style="list-style: none; padding-left: 0;">
                                    <li class="img">
                                        <div>
                                        <img src="assets/img/yasman/time.png" width="30px" height="30px">
                                        </div>
                                    </li>
                                   <!--  <li class="writer">
                                        <div>
                                            <h5>킬리언 음바페</h5>
                                        </div>
                                    </li>
                                    <li class="content">
                                        <div>
                                            <h5>풋살 경기 찰칵</h5>
                                        </div>
                                    </li> -->
                                   <%-- <c:if test="${story_member_id == id }">    --%> 
									<button type="button" class="btn btn-lg"
										style="background-color: rgb(156, 218, 243); border-style: none;">
										삭제
									</button>
									<%-- </c:if> --%>
									<br>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            	</c:forEach>
            </div>
    <footer class="position-relative" id="footer-main">
        <div class="footer pt-lg-7">
            <!-- SVG shape -->
            <!-- Footer -->
            <div class="container pt-4">
                <div class="row">
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <!-- Theme's logo -->
                        <a href="index.html">
                            <img alt="Image placeholder" src="assets/img/yasman/YasmanLogoBlack.png" id="footer-logo"
                                style="height: 80px;">
                        </a>
                        <!-- Webpixels' mission -->
                        <p class="mt-4 text-sm opacity-8 pr-lg-4">야외 스포츠 매니아~<br> Yasman이 도와드립니다.</p>
                        <!-- Social -->
                        <ul class="nav mt-4">
                            <li class="nav-item">
                                <a class="nav-link pl-0" href="https://dribbble.com/webpixels" target="_blank">
                                    <i class="fab fa-dribbble"></i>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="https://github.com/webpixels" target="_blank">
                                    <i class="fab fa-github"></i>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="https://www.instagram.com/webpxs" target="_blank">
                                    <i class="fab fa-instagram"></i>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="https://www.facebook.com/webpixels" target="_blank">
                                    <i class="fab fa-facebook"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-6 col-sm-4 ml-lg-auto mb-5 mb-lg-0">
                        <h6 class="heading mb-3">계정</h6>
                        <ul class="list-unstyled">
                            <li><a href="#">프로필</a></li>
                            <li><a href="#">설정</a></li>
                            <li><a href="#">구매정보</a></li>
                            <li><a href="#">알림</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-6 col-sm-4 mb-5 mb-lg-0">
                        <h6 class="heading mb-3">세부정보</h6>
                        <ul class="list-unstyled">
                            <li><a href="#">서비스</a></li>
                            <li><a href="#">가격</a></li>
                            <li><a href="#">연락처</a></li>
                            <li><a href="#">채용</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-6 col-sm-4 mb-5 mb-lg-0">
                        <h6 class="heading mb-3">Company</h6>
                        <ul class="list-unstyled">
                            <li><a href="#">커뮤니티</a></li>
                            <li><a href="#">지원센터</a></li>
                            <li><a href="#">Support</a></li>
                        </ul>
                    </div>
                </div>
                <hr class="divider divider-fade divider-dark my-4">
                <div class="row align-items-center justify-content-md-between pb-4">
                    <div class="col-md-6">
                        <div class="copyright text-sm font-weight-bold text-center text-md-left">
                            &copy; 2022 <a href="#" class="font-weight-bold" target="_blank"
                                style="color:olivedrab">Yas-man</a>. All rights reserved
                        </div>
                    </div>
                    <div class="col-md-6">
                        <ul class="nav justify-content-center justify-content-md-end mt-3 mt-md-0">
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    이용약관
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    개인정보처리방침
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    쿠키
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Core JS  -->
    <script src="/YasMan/YasManView/assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/svg-injector/dist/svg-injector.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/feather-icons/dist/feather.min.js"></script>
    <!-- Quick JS -->
    <script src="/YasMan/YasManView/assets/js/quick-website.js"></script>
    <script>
        $(".hover").mouseleave(
            function () {
                $(this).removeClass("hover");
            }
        );
    </script>
</body>
</html>