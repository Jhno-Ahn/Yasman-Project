<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Webpixels">
    <%@ include file="/YasManView/setting.jsp"%>
    <script src="/YasMan/YasManView/script.js"></script>
    <title>BascketBall</title>

    <link rel="stylesheet" href="/YasMan/YasManView/assets/libs/@fortawesome/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="/YasMan/YasManView/assets/css/quick-website.css" id="stylesheet">
    <link rel="stylesheet" href="/YasMan/YasManView/assets/css/index.css">
    <!-- 형광펜 css -->
    <link href="/YasMan/YasManView/assets/css/neon.css">
    <!-- Preloader -->
    
    <script src="/YasMan/YasManView/script.js"></script>

    <!-- CSS -->
    <!-- Favicon -->
    <link rel="stylesheet" href="/YasMan/YasManView/memberInputForm.css">
    <link href="/YasMan/YasManView/assets/css/preloader.css" rel="stylesheet">
    
    <style>
    	#table {
    		align:center;
    		width:800px;
    	}
    </style>
    
    <!-- script -->
    
    <!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
    <!-- 맨 위로 올리는 script -->
    <!-- <script src="/YasMan/YasManView/assets/js/topUp.js"></script> -->
    
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
</head>

     <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <div class="container">
             <!-- Brand -->
            <a class="navbar-brand" href="main.do?id=${id}">
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
                        <a class="nav-link" href="#" role="button" data-toggle="dropdown"
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
		                            <a href="footBallBoard.do?id=${id}" class="dropdown-item">FootBall</a>
		                            <a href="basketBallBoard.do?id=${id}" class="dropdown-item">BasketBall</a>
		                            <a href="storyList.do?id=${id}" class="dropdown-item">Yasman Story</a>
		                            <a href="myPage.do?id=${id}" class="dropdown-item">MyPage</a>
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