<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<head>
	<meta charset="UTF-8">
	<title>Outdoor Sports Mania</title>
   	<!-- script -->
   	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<!-- Core JS  -->
	<script src="${pageContext.request.contextPath}/YasManView/assets/libs/jquery/dist/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/YasManView/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/YasManView/assets/libs/svg-injector/dist/svg-injector.min.js"></script>
	<script src="${pageContext.request.contextPath}/YasManView/assets/libs/feather-icons/dist/feather.min.js"></script>
	<script src="${pageContext.request.contextPath}/YasManView/script.js"></script>
	<!-- Quick JS -->
	<script src="${pageContext.request.contextPath}/YasManView/assets/js/quick-website.js"></script>
	<script>
	        $(".hover").mouseleave(
	            function () {
	                $(this).removeClass("hover");
	            }
	        );
	</script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" rel="stylesheet">
   
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js"></script>
	
    <!-- CSS -->
    <link href="${pageContext.request.contextPath}/YasManView/assets/css/chunk.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/YasManView/assets/libs/@fortawesome/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/YasManView/assets/css/quick-website.css" id="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/YasManView/assets/css/index.css">
    <link rel="icon" href="${pageContext.request.contextPath}/YasManView/assets/img/yasman/YasmanLogoBlack.png" type="image/png">
	<link rel="stylesheet" href="/YasMan/YasManView/memberInputForm.css">
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="${pageContext.request.contextPath}/YasManView/assets/css/neon.css">
	<style>
    	#table {
    		align:center;
    		width:800px;
    	}
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-dark-dark">
        <div class="container">
            <!-- Brand -->
            <a class="navbar-brand" href="main.do?id=${id}">
                <img alt="Image placeholder" src="${pageContext.request.contextPath}/YasManView/assets/img/yasman/YasmanLogoBlack.png" style="height: 120px" ; id="navbar-logo">
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
                        			<a class="nav-link" style="color:#50b5ff" href="loginForm.do">LogIn</a>
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
                        			<a class="nav-link"  style="color:#50b5ff">${requestScope.nick_name}님, 환영합니다.</a>
                   				</li>
 						    </c:if>
           <!-- =================================================로그인을  했을 때============================================ -->     
    
    
                </ul>
            </div>
        </div>
    </nav>
    </body>