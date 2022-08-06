<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    

<%-- <%@ include file="setting.jsp"%> --%>

    <!DOCTYPE html>
<html lang="en">

<%-- <head>
   <title>Match Form</title>
   <%@ include file="/YasManView/head.jsp"%>
</head> --%>

<%@ include file="/YasManView/header2.jsp"%>

<body>

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
                    <form method = "post" action = "basketMatchInputPro.do?id=${id}">
                        <div class="form-group">
                            <h5>종목 선택</h5>
                            <select class="form-control" id="menu" name="match_kind" required>
                                <option value="" disabled selected>종목</option>
                                <option value="농구">농구</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <h5>구장 선택</h5>
                            <select class="form-control" id="menu" name="match_stardi_name" required>
                                <option value="" disabled selected>구장</option>
                                <option value="서경대 풋살파크">서경대 풋살파크</option>
                                <option value="도봉산 구민 운동장">도봉산 구민운동장</option>
                                <option value="양주 풋살파크">양주 풋살파크</option>
                                <option value="강북 생활 농구 센터">강북 생활 농구센터</option>
                            </select>
                        </div>
                        <div class="form-group">
                        <!-- 
                            <h5>팀 수 선택</h5>
                            <select class="form-control" id="menu" name="match_personnel" required>
                                <option value="" disabled selected>팀</option>
                                <option value= 2 >2 팀</option>
                            </select>
                            <h5>현재 등록된 팀 수 선택</h5>
                            <select class="form-control" id="menu" name="match_personnel" required>
                                <option value="" disabled selected>팀</option>
                                <option value= 0 >0 팀</option>
                            </select>
                             -->
                        </div>
                        <div class="form-group">
                            <h5>날짜 선택</h5>
                            <input class="form-control form-control-lg" type="date" name = "match_day">
                        </div>
                         <div class="form-group">
                            <h5>사용 시간 선택</h5>
                            <select class="form-control" id="menu" name="match_time" required>
                                <option value="" disabled selected>사용 시간 선택</option>
                                <option value="18:00 ~ 19:50">18:00 ~ 19:50</option>
                                <option value="20:00 ~ 21:50">20:00 ~ 21:50</option>
                            </select>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-block btn-lg btn-primary mt-4"
                                style="background-color:  sky-blue; border-style: none;">글 작성 완료
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
    
	 <%@ include file="/YasManView/footer2.jsp"%>

</body>
</html>
