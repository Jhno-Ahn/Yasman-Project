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
    <title>경기장 작성 폼</title>

    <!-- CSS -->
    <!-- Favicon -->
    <link rel="stylesheet" href="/YasMan/YasManView/assets/libs/@fortawesome/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="/YasMan/YasManView/assets/css/quick-website.css" id="stylesheet">
    <link rel="stylesheet" href="/YasMan/YasManView/assets/css/index.css">
    <link rel="icon" href="/YasMan/YasManView/assets/img/yasman/YasmanLogoBlack.png" type="image/png">
    <!-- 형광펜 css -->
    <link href="/YasMan/YasManView/assets/css/neon.css">
    <!-- Preloader -->
    <link href="/YasMan/YasManView/assets/css/preloader.css" rel="stylesheet">
</head>

<body>
    <!-- Preloader -->
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
 						
    <!--------------------------------------카테고리 및 로그인----------------------------------------------------------------------->
                </ul>
            </div>
        </div>
    </nav>
    <!-- Main content -->
    <section class="slice slice-lg" id="sct-form-contact">
        <div class="container position-relative zindex-100">
            <div class="row justify-content-center mb-5">
                <div class="col-lg-6 text-center">
                    <h3>경기장 정보 입력</h3>
                    <p class="lh-190">경기장 정보를 입력해 주세요! </p>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-6">
                    <!-- Form -->
                    <form method = "post" action = "basketBallStardiInputPro.do?id=${requestScope.id}">
                        <div class="form-group">
                            <h5>종목 선택</h5>
                            <select class="form-control" id="menu" name="stardi_kind" required>
                                <option value="" disabled selected>종목</option>
                                <option value="basketBall">농구</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <h5>구장 이름</h5>
                            <input class="form-control" name="stardi_name" required>
                        </div>
		        			<h6>주소 찾기</h6>
	                        <div class="form-group">
		        			<input class="form-control" type="text" id="postcode" name = "postcode" placeholder="우편번호">
							<input class="form-control" type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
							<input class="form-control" type="text" id="roadAddress" name = "roadAddress"  placeholder="도로명주소">
							<input class="form-control" type="text" id="jibunAddress" name = "jibunAddress"  placeholder="지번주소">
							<span id="guide" style="color:#999;display:none"></span>
							<input class="form-control" type="text" id="detailAddress" name = "detailAddress"  placeholder="상세주소">
							<input class="form-control" type="text" id="extraAddress" name = "extraAddress"  placeholder="참고항목">
                          <!--   <h5>주소</h5>
                            <button class="form-control" name="stardi_addr" style="margin-bottom: 10px;" required>
                                <h6>주소 찾기</h6>
                            </button>
                            <input class="form-control"  name="stardi_addr_A" style="margin-bottom: 10px;" readonly>
                            <input class="form-control"  name="stardi_addr_B" placeholder="나머지 주소를 입력해주세요" style="margin-bottom: 10px;"> -->
                        </div>
                        <div class="form-group">
                            <h5>경기장 연락처</h5>
                            <input class="form-control" name="stardi_tel" required>
                        </div>
                        <div class="form-group">
                            <h5>경기장 대관료</h5>
                            <input class="form-control" name="stardi_price" required>
                        </div>
                        <div class="form-group">
                            <h5>경기장 이용 시작</h5>
                            <input type="datetime-local" class="form-control" name="stardi_time_start" required>
                        </div>
                         <div class="form-group">
                            <h5>경기장 이용 종료</h5>
                            <input type="datetime-local" class="form-control" name="stardi_time_end" required>
                        </div>
                        <div>
                            <button type="submit" class="btn btn-block btn-lg btn-primary mt-4" style="background-color:  grey; border-style: none;">
                                <a href= "Board.do"></a>글 작성 완료
                            </button>
                        </div>
                        <div>
                            <button type="reset" class="btn btn-block btn-lg btn-primary mt-4" style="background-color:  grey; border-style: none;">
                                <a style="color: white;" href="stadiumList.html">돌아가기</a>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    
     <!-- Footer -->
    <c:if test = "${sessionScope.memId eq null}">
	 <%@ include file="/YasManView/footer.jsp"%>
    </c:if>
    <c:if test = "${sessionScope.memId ne null}">
	 <%@ include file="/YasManView/loginFooter.jsp"%>
    </c:if>
     <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
	    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	    function sample4_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수
	
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('postcode').value = data.zonecode;
	                document.getElementById("roadAddress").value = roadAddr;
	                document.getElementById("jibunAddress").value = data.jibunAddress;
	                
	                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	                if(roadAddr !== ''){
	                    document.getElementById("extraAddress").value = extraRoadAddr;
	                } else {
	                    document.getElementById("extraAddress").value = '';
	                }
	
	                var guideTextBox = document.getElementById("guide");
	                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';
	
	                } else if(data.autoJibunAddress) {
	                    var expJibunAddr = data.autoJibunAddress;
	                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                    guideTextBox.style.display = 'block';
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                }
	            }
	        }).open();
	    }
	</script>
               
    
   <!-- script -->
   <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
   <!-- 맨 위로 올리는 script -->
   <script src="/YasMan/YasManView/assets/js/topUp.js"></script>   
    <!-- Core JS  -->
    <script src="/YasMan/YasManView/assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/svg-injector/dist/svg-injector.min.js"></script>
    <script src="/YasMan/YasManView/assets/libs/feather-icons/dist/feather.min.js"></script>
    <!-- Page JS -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC1oALsXLX-XEh2iYbE8tOjxsdFNHE39WM"></script>
    <!-- Quick JS -->
    <script src="/YasMan/YasManView/assets/js/quick-website.js"></script>
</body>

</html>