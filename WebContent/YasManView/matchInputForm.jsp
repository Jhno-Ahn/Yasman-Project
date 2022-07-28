<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
                <img alt="Image placeholder" src="/YasMan/Images/yasLogo.png" style="height: 120px" id="navbar-logo">
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
                    <form>
                        <div class="form-group">
                            <h5>종목 선택</h5>
                            <select class="form-control" id="menu" name="menu" required>
                                <option value="" disabled selected>종목</option>
                                <option value="boong">풋살</option>
                                <option value="tako">농구</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <h5>구장 선택</h5>
                            <select class="form-control" id="menu" name="menu" required>
                                <option value="" disabled selected>구장</option>
                                <option value="boong">서경대 풋살파크</option>
                                <option value="tako">도봉산 구민운동장</option>
                                <option value="ddang">양주 풋살파크</option>
                                <option value="other">강북 생활 농구센터</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <h5>성별 선택</h5>
                            <select class="form-control" id="menu" name="menu" required>
                                <option value="" disabled selected>성별</option>
                                <option value="boong">남자</option>
                                <option value="tako">여자</option>

                            </select>
                        </div>
                        <div class="form-group">
                            <h5>날짜 선택</h5>
                            <input class="form-control form-control-lg" type="datetime-local">
                        </div>

                        <div class="form-group">
                            <h5>구장 안내</h5>
                            <textarea class="form-control form-control-lg" placeholder="Message ..." rows="10"
                                required></textarea>
                        </div>


                        <div class="text-center">
                            <button type="submit" class="btn btn-block btn-lg btn-primary mt-4"
                                style="background-color:  sky-blue; border-style: none;">
                                글 작성 완료
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
    <footer class="position-relative" id="footer-main">
        <div class="footer pt-lg-7">
            <!-- SVG shape -->
            <!-- Footer -->
            <div class="container pt-4">
                <div class="row">
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <!-- Theme's logo -->
                        <a href="index.html">
                            <img alt="Image placeholder" src="/YasMan/assets/img/yasman/YasmanLogoBlack.png" id="footer-logo"
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
                        <ul class="list-unstyled" >
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
    <!-- Page JS -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC1oALsXLX-XEh2iYbE8tOjxsdFNHE39WM"></script>
    <!-- Quick JS -->
    <script src="/YasMan/YasManView/assets/js/quick-website.js"></script>
    <a href="#" id="TopButton"><img src="/YasMan/assets/img/icon/topbutton.jpg" style="width: 45px;"></a>
    <div id="chatbot" onclick="chatbot()"><img src="/YasMan/assets/img/icon/chatbot.png" style="width: 45px;"></div>

</body>

</html>