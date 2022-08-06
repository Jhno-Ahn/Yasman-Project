<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html lang="en">

<%@ include file="/YasManView/header2.jsp"%>

<%-- <head>
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
    
</head> --%>

<body>

    	<!-- header -->
    	<!-- header -->

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
                                <c:if test = "${dto.match_stardi_name eq '서경대 풋살파크'}">
                                <div style="margin-bottom: 20px;">
                                    <h6>경기장 주소 </h6>
                                    <h2>서울 성북구 서경로 118</h2>
                                </div>
                                <hr>
                                <div style="margin-bottom: 20px;">
                                    <h6>경기장 연락처 </h6>
                                    <h2>0507-1407-7734</h2>
                                </div>
                                </c:if>
                                <c:if test = "${dto.match_stardi_name eq '도봉산 구민 운동장'}">
                                <div style="margin-bottom: 20px;">
                                    <h6>경기장 주소 </h6>
                                    <h2>서울 도봉구 도봉동 181</h2>
                                </div>
                                <hr>
                                <div style="margin-bottom: 20px;">
                                    <h6>경기장 연락처 </h6>
                                    <h2>0507-1407-8911</h2>
                                </div>
                                </c:if>
                                <c:if test = "${dto.match_stardi_name eq '양주 풋살파크'}">
                                <div style="margin-bottom: 20px;">
                                    <h6>경기장 주소 </h6>
                                    <h2>서울 관악구 양주동 171로</h2>
                                </div>
                                <hr>
                                <div style="margin-bottom: 20px;">
                                    <h6>경기장 연락처 </h6>
                                    <h2>0507-3028-8911</h2>
                                </div>
                                </c:if>
                                <c:if test = "${dto.match_stardi_name eq '강북 생활 농구 센터'}">
                                <div style="margin-bottom: 20px;">
                                    <h6>경기장 주소 </h6>
                                    <h2>서울 강북구 도촌동 141로</h2>
                                </div>
                                <hr>
                                <div style="margin-bottom: 20px;">
                                    <h6>경기장 연락처 </h6>
                                    <h2>0507-7636-8219</h2>
                                </div>
                                </c:if>
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
	                            onclick = "applyBasketMatch_A('${id}', '${match_num}')">
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

	 <%@ include file="/YasManView/footer2.jsp"%>
   
</body>
</html>