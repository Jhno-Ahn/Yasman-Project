<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>

    <!DOCTYPE html>
<html lang="en">

<head>
   <title>Yasman</title>
   <%@ include file="/YasManView/header.jsp"%>
</head>

<body>
    <section class="slice slice-lg bg-section-gray pt-10 pt-lg-5 pb-lg-5 pb-10">
        <div class="container" >
            <div class="col-md-20">
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
           <!-- =================================================로그인을 안 했을 때============================================ -->
                      <c:if test = "${sessionScope.memId eq null}">
                        <div class="carousel-item active">
                            <a href="loginForm.do">
                                <img src="./YasManView/assets/img/yasman/m-foot.png" alt="First slide" width="100%" height="550px">
                            </a>
                        </div>
                        <div class="carousel-item">
                            <a href="loginForm.do">
                                <img src="./YasManView/assets/img/yasman/m-basck.png" alt="Second slide" width="100%" height="550px">
                            </a>
                        </div>
                      </c:if>
           <!-- =================================================로그인을 안 했을 때============================================ -->
           <!-- =================================================로그인을  했을 때============================================ --> 
           			<c:if test = "${sessionScope.memId ne null}">
                        <div class="carousel-item active">
                            <a href="footBallBoard.do?id=${id}">
                                <img src="./YasManView/assets/img/yasman/m-foot.png" alt="First slide" width="100%" height="550px">
                            </a>
                        </div>
                        <div class="carousel-item">
                            <a href="basketBallBoard.do?id=${id}">
                                <img src="./YasManView/assets/img/yasman/m-basck.png" alt="Second slide" width="100%" height="550px">
                            </a>
                        </div>
                    </c:if>
           <!-- =================================================로그인을  했을 때============================================ --> 
                        <div class="carousel-item">
                            <img src="./YasManView/assets/img/yasman/m-1.png" alt="Second slide" width="100%" height="550px">
                        </div>
                        <div class="carousel-item">
                            <img src="./YasManView/assets/img/yasman/m-2.png" alt="Second slide" width="100%" height="550px">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button"
                        data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button"
                        data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <div class="col">
                <div class="row justify-content-left">
                    <div class="col-md-12 text-center">
                        <div class="mt-4 mb-6">
                            <h2 class=" mt-4"><span class="underline yellow"><a href="loginForm.do">너도 참가해 볼래?</a></span></h2><br>
                            <h4 class="text-black mt-3">신청 버튼 하나로 상대팀을 바로 구한다!</h4>
                            <!--Play button -->
                           <c:if test = "${sessionScope.memId eq null}">
                            <a href="loginForm.do" class="btn btn-custom btn-icon mt-4">더 알아보기</a>
                           </c:if>
                           <c:if test = "${sessionScope.memId ne null}">
                            <a href="QandA.do?id=${id}" class="btn btn-custom btn-icon mt-4">더 알아보기</a>
                           </c:if>
                        </div>
                    </div>             
                </div>
            </div> 
        </div>
    </section>
           <!-- =================================================로그인을 안 했을 때============================================ -->
	 <%@ include file="/YasManView/footer.jsp"%>
</body>

</html> 