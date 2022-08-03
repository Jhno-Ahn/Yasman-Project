<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yasman - Stroy 게시글 작성</title>
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
 <!-- Preloader -->
    <div class="preloader">
        <div class="spinner-border text-primary" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-dark-dark">
        <div class="container">
            <!-- Brand -->
            <a class="navbar-brand" href="index.html">
                <img alt="Image placeholder" src="/Yasman/WebContent/yasman/assets/img/yasman/YasmanLogoBlack.png" style="height: 120px" ; id="navbar-logo">
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
    <div>
        <h1 style="text-align: center;">스토리 작성하기</h1>
    </div>
    <div id="root">
        <div class="form-frame">
            <div class="inputForm" style="border: 2px solid grey;padding: 30px; border-radius:1%;">
                <div id="stb_subscribe">
                <!-- ------------------------------------------------------------------------------------------------------------------- -->
                    <form method="POST" action="storyInputPro.do" accept-charset="utf-8" class="stb_form" enctype="multipart/form-data" >
                      <!--   <div class="stb_form_set">
                            <label for="stb_name" class="stb_form_set_label" style="color: black;">글 제목</label>
                            <br>
                            <textarea class="form-control form-control-lg" placeholder="글 제목을 입력해주세요" rows="1"
                                required></textarea>
                        </div> -->
                        <br><br>
                        <input type="hidden" name="story_num" readonly value="${story_num }">
                         <div class="stb_form_set">
                            <label for="stb_name" class="stb_form_set_label" style="color: black;">멤버 아이디 입력</label>
                            <br>
                            <input name="story_member_id" class="form-control form-control-lg" placeholder="아이디를 입력해주세요!" rows="3"
                                required></textarea>
                        </div>
                        <div class="stb_form_set">
                            <label for="stb_name" class="stb_form_set_label" style="color: black;">스토리 제목</label>
                            <br>
                            <input name="story_title" class="form-control form-control-lg" placeholder="스토리를 소개해주세요!" rows="10"
                                required></textarea>
                        </div>
						<div class="inputArea">
							<label for="gdsImg">이미지</label>
							 <input type="file" id="gdsImg"	name="story_img"/>
							<div class="select_img">
								<img src="" />
							</div>

							<script>
								$("#gdsImg").change(function() {
									if (this.files && this.files[0]) {
										var reader = new FileReader;
											reader.onload = function(data) {
												$(".select_img img").attr("src", data.target.result).width(500);
											} 
											reader.readAsDataURL(this.files[0]);
									}
								});
							</script>
							
							
						</div>
						<div class="stb_form_set_submit ">
                            <button type="submit" id="stb_form_submit_button" class="stb_form_submit_button "
                                style="background-color: gray; color: rgb(255, 255, 255);">스토리 작성하기!
                            </button>
                        </div>

                    </form>
         	 <!-- ------------------------------------------------------------------------------------------------------------------- -->
                    
                </div>
            </div>
        </div>
    </div>
 
   <script src="/static/js/runtime-main.472a9638.js"></script>
   <script src="/static/js/2.af3d02be.chunk.js"></script>
   <script src="/static/js/main.768226e7.chunk.js"></script>
   
   

</body>
</html>