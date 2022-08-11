<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html lang="en">

<%@ include file="/YasManView/header2.jsp"%>

<body>
     <!-- Main Content -->
    <section class="slice slice-lg" style="padding-top: 5%; padding-bottom: 0;">
        <div class="container">
           <h1 style="text-align: center;">경기 이용 안내</h1>
           <p style="text-align: center;">당신의 매너 플레이가 좋은 경기를 만듭니다.🌱🐰</p>
           <br>
            <div class="row">
                <div class="col-lg-5">
                    <div class="card text-center hover-translate-y-n10 hover-shadow-lg">
                        <div class="px-5 pb-5 pt-5">
                            <br>
                            <h3>경기장 이용</h3>
                            <br>
                            <hr style="border: solid 1px; margin: 0;">
                            <br>
                            <div class="py-4">
                                <ul style="list-style: none; padding-left: 0;">
                                    <li class="info-list">
                                        <div>
                                        <img src="${pageContext.request.contextPath}/YasManView/assets/img/yasman/cal.jpg" width="40px" height="40px">
                                            <h6> ${dto.match_day} </h6>
                                        </div>
                                    </li>
                                    <li class="info-list">
                                        <div>
                                        <img src="${pageContext.request.contextPath}/YasManView/assets/img/yasman/time.png" width="30px" height="30px">
                                            <h6>${dto.match_time}</h6>
                                        </div>
                                    </li>
                                    <li class="info-list">
                                        <div>
                                        <img src="${pageContext.request.contextPath}/YasManView/assets/img/yasman/sta.png" width="30px" height="30px">
                                            <h6>신청 팀 정원 : ${dto.match_personnel}</h6>
                                        </div>
                                    </li>
                                    <li class="info-list">
                                        <img src="${pageContext.request.contextPath}/YasManView/assets/img/yasman/in.png" width="30px" height="30px">
                                        <div>
                                            <h6>현재 신청 팀 ${dto.match_personnel_now}</h6>
                                        </div>
                                    </li>
                                    <br>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="card text-center hover-translate-y-n10 hover-shadow-lg">
                        <div class="px-5 pb-5 pt-5">
                            <h2>${dto.match_stardi_name}</h2>
                            <br>
                            <hr style="border: solid 1px;">
                            <div class="py-4">
                                <ul style="list-style: none; padding-left: 0;">
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
	                                <c:if test = "${dto.match_stardi_name eq '서울 은평 롯데몰'}">
	                                <div style="margin-bottom: 20px;">
	                                    <h6>경기장 주소 </h6>
	                                    <h2>서울 은평구 진관동 통일로 1050</h2>
	                                </div>
	                                <hr>
	                                <div style="margin-bottom: 20px;">
	                                    <h6>경기장 연락처 </h6>
	                                    <h2>02-2673-0000</h2>
	                                </div>
	                                </c:if>
	                                <c:if test = "${dto.match_stardi_name eq '서울 용산 아이파크몰'}">
	                                <div style="margin-bottom: 20px;">
	                                    <h6>경기장 주소 </h6>
	                                    <h2>서울 도봉구 도봉동 138 단지 </h2>
	                                </div>
	                                <hr>
	                                <div style="margin-bottom: 20px;">
	                                    <h6>경기장 연락처 </h6>
	                                    <h2>02-8471-6744</h2>
	                                </div>
	                                </c:if>
	                                <c:if test = "${dto.match_stardi_name eq '도봉 루다 풋살장'}">
	                                <div style="margin-bottom: 20px;">
	                                    <h6>경기장 주소 </h6>
	                                    <h2>서울 도봉구 방학로 223 신동아프라자</h2>
	                                </div>
	                                <hr>
	                                <div style="margin-bottom: 20px;">
	                                    <h6>경기장 연락처 </h6>
	                                    <h2>0507-3028-8911</h2>
	                                </div>
	                                </c:if>
	                                <c:if test = "${dto.match_stardi_name eq '노원 하라 풋살장'}">
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
									<br>
                                    <li class="info-list">
                                        <div>
                                            <h4>10,000원 / 2시간</h4>
                                        </div>
                                    </li>
                                    <li class="info-list">
                                        <div>
                                            <h6 style="color:rgb(163, 163, 163);">신청 버튼 클릭시 결제 페이지로 이동합니다.</h6>
                                        </div>
                                    </li>
			                        <c:if test = "${id ne 'rhksflwk123' }">
			                        	<div>
				                            <button type="submit" class="btn btn-block btn-lg btn-primary mt-4" style="background-color:  rgb(231, 120, 120); border-style: none;"
				                            onclick = "applyMatch_A('${id}', '${match_num}')">
				                            	    경기 신청하기
				                            </button>
			                       		</div>
			                        </c:if>                 
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>              
            
            </div>
        </div>
    </section>

    <!--googleMap-->
    <div id="map_a">
        <div id="map"></div>
    </div>
   <%--                      <c:if test = "${id eq 'rhksflwk123' }">
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
 --%>
	 <%@ include file="/YasManView/footer2.jsp"%>
   
</body>
</html>