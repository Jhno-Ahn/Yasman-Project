<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">

<head>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script>document.getElementsByTagName("html")[0].className += " js";</script>
  <link rel="stylesheet" href="/YasMan/YasManView/assets/css/style1.css">
  <title>FAQ Yasman</title>

   <!-- Favicon -->
   <link rel="icon" href="/YasMan/YasManView/assets/img/vegan/logo2.png" type="image/png"> <!-- Font Awesome -->
   <link rel="stylesheet" href="/YasMan/YasManView/assets/libs/@fortawesome/fontawesome-free/css/all.min.css">
   <!-- CSS -->
   <link rel="stylesheet" href="/YasMan/YasManView/assets/css/quick-website.css" id="stylesheet">
   <link rel="stylesheet" href="/YasMan/YasManView/assets/css/index.css">
</head>
<body>
<header class="cd-header flex flex-column flex-left" style="background-color: black; height: 220px;">
    <a class="navbar-brand" href="main.do?id=${id}" style="margin-left: 385px";>
        <img alt="Image placeholder" src="/YasMan/YasManView/assets/img/yasman/YasmanLogoBlack.png" style="height: 120px;" >
    </a>
  <div class="text-component text-center">
    <h1>FAQ YasMan</h1>
  </div>
</header>

<section class="cd-faq js-cd-faq container max-width-md margin-top-lg margin-bottom-lg">
   <ul class="cd-faq__categories">
      <li><a class="cd-faq__category cd-faq__category-selected truncate" href="#match">Match</a></li>
      <li><a class="cd-faq__category truncate" href="#cash">Cash</a></li>
      <li><a class="cd-faq__category truncate" href="#servies">Servies</a></li>
      <li><a class="cd-faq__category truncate" href="#facility">Facility</a></li>
      <li><a class="cd-faq__category truncate" href="#manner">Manner</a></li>
   </ul> <!-- cd-faq__categories -->
   
   <div class="cd-faq__items">
        <style> span {color: darkblue;} </style>
      <ul id="match" class="cd-faq__group">
         <li class="cd-faq__title"><h2 style="color: dimgray;">매치에 대하여</h2></li>
         <li class="cd-faq__item">
            <a class="cd-faq__trigger" href="#0"><span>매치 취소는 어떻게 하나요?</span></a>
            <div class="cd-faq__content">
          <div class="text-component">
            <p> 매치 취소는 마이 페이지에서 이용하실 수 있습니다. </p>
          </div>
            </div> <!-- cd-faq__content -->
         </li>

         <li class="cd-faq__item">
            <a class="cd-faq__trigger" href="#0"><span>경기중 비가 온다면 어떻게 하나요?</span></a>
            <div class="cd-faq__content">
          <div class="text-component">
            <p> 강수량에 따라 경기 방침이 바뀔 수 있습니다. </p>
          </div>
            </div> <!-- cd-faq__content -->
         </li>

         <li class="cd-faq__item">
            <a class="cd-faq__trigger" href="#0"><span>현재 인원은 어떻게 확인하나요?</span></a>
            <div class="cd-faq__content">
          <div class="text-component">
            <p> 신청 내역에 인원 현황을 보시면 됩니다. </p>
          </div>
            </div> <!-- cd-faq__content -->
         </li>

         <li class="cd-faq__item">
            <a class="cd-faq__trigger" href="#0"><span>인원이 없다면 어떻게 되는거죠?</span></a>
            <div class="cd-faq__content">
          <div class="text-component">
            <p> 인원이 없을 시 매치는 자동으로 성립되지 않게 됩니다. </p>
          </div>
            </div> <!-- cd-faq__content -->
         </li>
      </ul> <!-- cd-faq__group -->

      <ul id="cash" class="cd-faq__group">
         <li class="cd-faq__title"><h2 style="color: dimgray;">결제에 관하여</h2></li>
         <li class="cd-faq__item">
            <a class="cd-faq__trigger" href="#0"><span>입금을 했는데 충전이 안돼요!</span></a>
            <div class="cd-faq__content">
          <div class="text-component">
            <p> 일시적인 서버 장애일 수 있기 때문에 조금만 기다려주신다면 원할하게 될 것입니다. </p>
          </div>
            </div> <!-- cd-faq__content -->
         </li>

         <li class="cd-faq__item">
            <a class="cd-faq__trigger" href="#0"><span>금액을 환불 받고 싶어요</span></a>
            <div class="cd-faq__content">
          <div class="text-component">
            <p> 환불을 원하신다면 마이 페이지에서 매치 취소를 하시면 자동으로 환불 해드립니다.</p>
          </div>
            </div> <!-- cd-faq__content -->
         </li>

         <li class="cd-faq__item">
            <a class="cd-faq__trigger" href="#0"><span>금액 충전 완료 알림을 못받았어요</span></a>
            <div class="cd-faq__content">
          <div class="text-component">
            <p> 알림 수신 설정을 하지 않았거나 서버 장애일수 있습니다. 확인해보시기 바랍니다. </p>
          </div>
            </div> <!-- cd-faq__content -->
         </li>
      </ul> <!-- cd-faq__group -->

      <ul id="servies" class="cd-faq__group">
         <li class="cd-faq__title"><h2 style="color: dimgray;">서비스에 관하여</h2></li>
         <li class="cd-faq__item">
            <a class="cd-faq__trigger" href="#0"><span>회원 탈퇴를 하고 싶어요</span></a>
            <div class="cd-faq__content">
          <div class="text-component">
            <p> 회원 탈퇴 과정은 마이페이지에서 하실 수 있습니다. </p>
          </div>
            </div> <!-- cd-faq__content -->
         </li>

         <li class="cd-faq__item">
            <a class="cd-faq__trigger" href="#0"><span>매치 경기장 주차 등록이 가능한가요?</span></a>
            <div class="cd-faq__content">
          <div class="text-component">
            <p> 저희 업체와 경기장은 계약 관계이기 때문에 주차는 무료로 이용하실 수 있습니다.</p>
          </div>
            </div> <!-- cd-faq__content -->
         </li>

         <li class="cd-faq__item">
            <a class="cd-faq__trigger" href="#0"><span>부상에 대한 보험이 되나요?</span></a>
            <div class="cd-faq__content">
          <div class="text-component">
            <p> 보험 관련해서는 답변을 드리기가 애매하다는점 양해 부탁드립니다. </p>
          </div>
            </div> <!-- cd-faq__content -->
         </li>

         <li class="cd-faq__item">
            <a class="cd-faq__trigger" href="#0"><span>여러 명에서 신청이 가능한가요?</span></a>
            <div class="cd-faq__content">
          <div class="text-component">
            <p> 팀 단위로 신청이 가능합니다. </p>
          </div>
            </div> <!-- cd-faq__content -->
         </li>
      </ul> <!-- cd-faq__group -->

      <ul id="facility" class="cd-faq__group">
         <li class="cd-faq__title"><h2 style="color: dimgray;">시설에 관하여</h2></li>
         <li class="cd-faq__item">
            <a class="cd-faq__trigger" href="#0"><span>주차가 가능한가요?</span></a>
            <div class="cd-faq__content">
          <div class="text-component">
            <p> 주차가 가능한 경기장은 따로 상세 페이지에 적어놓습니다. </p>
          </div>
            </div> <!-- cd-faq__content -->
         </li>

         <li class="cd-faq__item">
            <a class="cd-faq__trigger" href="#0"><span>풋살화나 농구화가 대여가 가능한가요?</span></a>
            <div class="cd-faq__content">
          <div class="text-component">
            <p> 풋살화나 농구화 대여는 어렵다는 점 양해 부탁드립니다. </p>
            </div> <!-- cd-faq__content -->
         </li>

         <li class="cd-faq__item">
            <a class="cd-faq__trigger" href="#0"><span>샤워 시설이 있나요?</span></a>
            <div class="cd-faq__content">
          <div class="text-component">
            <p> 대체로 경기장이 야외 경기장이기 때문에 샤워 시설은 없을 가능성이 많습니다. 있다면 상세페이지에 적어놓겠습니다.</p>
          </div>
            </div> <!-- cd-faq__content -->
         </li>
      </ul> <!-- cd-faq__group -->

      <ul id="manner" class="cd-faq__group">
         <li class="cd-faq__title"><h2 style="color: dimgray;">매너에 관하여</h2></li>
         <li class="cd-faq__item">
            <a class="cd-faq__trigger" href="#0"><span>블랙 리스트가 되면 어떻게 되나요?</span></a>
            <div class="cd-faq__content">
          <div class="text-component">
            <p> 블랙리스트가 되었을 시 관리자에 의해 계정이 삭제되며 사이트를 이용할 수 없습니다. </p>
          </div>
            </div> <!-- cd-faq__content -->
         </li>

         <li class="cd-faq__item">
            <a class="cd-faq__trigger" href="#0"><span>경고 문자 전송이 왔는데 문제가 생기나요?</span></a>
            <div class="cd-faq__content">
          <div class="text-component">
            <p> 한 두번은 괜찮으나 여러번 경고 문자 중복 시 블랙 리스트가 될 수 있으니 주의하여 주시기 바랍니다. </p>
          </div>
            </div> <!-- cd-faq__content -->
         </li>
         
      </ul> <!-- cd-faq__group -->

   </div> <!-- cd-faq__items -->

   <a href="#0" class="cd-faq__close-panel text-replace">Close</a>
  
  <div class="cd-faq__overlay" aria-hidden="true"></div>

</section> <!-- cd-faq -->
<script src="/YasMan/YasManView/assets/js/util1.js"></script> <!-- util functions included in the CodyHouse framework -->
<script src="/YasMan/YasManView/assets/js/dex.js"></script>

<!-- footer 옮겨온거임여 -->
<%@ include file="/YasManView/footer2.jsp"%>

</body>
</html>