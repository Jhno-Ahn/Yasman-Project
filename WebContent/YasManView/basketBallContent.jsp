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
    <title>경기장 상세 내용</title>

    <!-- CSS -->
    <!-- Favicon -->
    <link rel="stylesheet" href="/YasMan/YasManView/assets/libs/@fortawesome/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="/YasMan/YasManView/assets/css/quick-website.css" id="stylesheet">
    <link rel="stylesheet" href="/YasMan/YasManView/assets/css/index.css">
    <link rel="icon" href="/YasManView/Images/assets/img/yasman/YasmanLogoBlack.png" type="image/png">
    <!-- 형광펜 css -->
    <link href="/YasMan/YasManView/assets/css/neon.css">
    <!-- Preloader -->
    <link href="/YasMan/YasManView/assets/css/preloader.css" rel="stylesheet">
    
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-dark-dark">
        <div class="container">
            <!-- Brand -->
            <a class="navbar-brand" href="index.html">
                <img alt="Image placeholder" src="/YasManView/Imagesassets/img/yasman/YasmanLogoBlack.png" style="height: 120px" ; id="navbar-logo">
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

    <section class="slice slice-lg" style="padding-top: 0;">
            <div class="container">
                <br>
                    <div class="col-lg-12">
                        <div class="card text-center">
                            <div class="px-5 pb-5 pt-5">
                                <div style="margin-bottom: 20px;">
                                    <h6>경기장 이름 </h6>
                                    <h2>${dto.match_stardi_name}</h2>
                                </div>
                                <hr>
                                <div style="margin-bottom: 20px;">
                                    <h6>경기장 주소 </h6>
                                    <h2>dddddddddd</h2>
                                </div>
                                <hr>
                                <div style="margin-bottom: 20px;">
                                    <h6>경기장 연락처 </h6>
                                    <h2>ssssss</h2>
                                </div>
                                <hr>
                                <div style="margin-bottom: 20px;">
                                    <h6>경기 날짜 </h6>
                                    <h2>${dto.match_day}</h2>
                                </div>
                                <hr>
                                <div style="margin-bottom: 20px;">
                                    <h6>경기시간 </h6>
                                    <h2>${dto.match_time}</h2>
                                </div>
                                <hr>
                                <div style="margin-bottom: 20px;">
                                    <h6>신청 팀 정원 </h6>
                                    <h2>${dto.match_personnel}</h2>
                                </div>
                                 <hr>
                                <div style="margin-bottom: 20px;">
                                    <h6>현재 신청 팀 </h6>
                                    <h2>${dto.match_personnel_now} </h2>
                                </div>
                                <hr>
                                <div>
                                    <h6>경기장 가격 </h6>
                                    <h2>100,000₩</h2>
                                </div>                            
                            </div>
                        </div>
                        
                        <c:if test = "${id eq 'rhksflwk123' }">
	                        <div>
	                            <button type="reset" class="btn btn-block btn-lg btn-primary mt-4" style="background-color:  rgb(231, 120, 120); border-style: none;">
	                                <a style="color: white;" href="#">글 삭제 하기</a>
	                            </button>
	                        </div>
                        </c:if>
                        <c:if test = "${id ne 'rhksflwk123' }">
                        	<div>
	                            <button type="submit" class="btn btn-block btn-lg btn-primary mt-4" style="background-color:  rgb(231, 120, 120); border-style: none;"
	                            onclick = "applyBasketMatch_A('${id}', '${dto.match_num}')">
	                            	    경기 신청하기
	                            </button>
                       		</div>
                        </c:if>
                        <div>
                            <button type="reset" class="btn btn-block btn-lg btn-primary mt-4" style="background-color:  grey; border-style: none;">
                                <a style="color: white;" href="stadiumList.html">돌아가기</a>
                            </button>
                        </div>
                    </div>
                </div>         
    </section>


	 <%@ include file="/YasManView/footer.jsp"%>


   <script src="/YasMan/YasManView/script.js"></script>
   <!-- script -->
   <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
   <!-- 맨 위로 올리는 script -->
   <script src="/YasMan/YasManView/assets/js/topUp.js"></script>   
    <!-- 챗봇 -->
    <a href="#" id="TopButton"><img src="/YasManView/Imagesassets/img/icon/topbutton.jpg" style="width: 45px; cursor:pointer;"></a>
    <div id="chatbot" onclick="chatbot()"><img src="/YasManView/Imagesassets/img/icon/chatbot.png" style="width: 45px; cursor:pointer;"></div>
    <!-- Core JS  -->
    <script src="/YasMan/YasManView/assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/svg-injector/dist/svg-injector.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/feather-icons/dist/feather.min.js"></script>
    <!-- Quick JS -->
    <script src="/YasMan/YasManView/assets/js/quick-website.js"></script>
</body>
</html>