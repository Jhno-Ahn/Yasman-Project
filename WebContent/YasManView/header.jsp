<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
   	<!-- script -->
   	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<!-- Core JS  -->
	<script src="${pageContext.request.contextPath}/YasManView/assets/libs/jquery/dist/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/YasManView/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/YasManView/assets/libs/svg-injector/dist/svg-injector.min.js"></script>
	<script src="${pageContext.request.contextPath}/YasManView/assets/libs/feather-icons/dist/feather.min.js"></script>
	<!-- Quick JS -->
	<script src="${pageContext.request.contextPath}/YasManView/assets/js/quick-website.js"></script>
	<script>
	        $(".hover").mouseleave(
	            function () {
	                $(this).removeClass("hover");
	            }
	        );
	</script>
    <!-- CSS -->
    <link href="${pageContext.request.contextPath}/YasManView/assets/css/chunk.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/YasManView/assets/libs/@fortawesome/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/YasManView/assets/css/quick-website.css" id="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/YasManView/assets/css/index.css">
    <link rel="icon" href="${pageContext.request.contextPath}/YasManView/assets/img/yasman/YasmanLogoBlack.png" type="image/png">

</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-dark-dark">
        <div class="container">
            <!-- Brand -->
            <a class="navbar-brand" href="main.do">
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
    </body>