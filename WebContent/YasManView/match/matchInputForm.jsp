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
 	<%@ include file="/YasManView/headerFooter/footer.jsp"%>

</body>

</html>