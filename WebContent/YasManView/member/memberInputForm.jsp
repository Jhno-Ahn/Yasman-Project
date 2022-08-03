<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<title>야스맨</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/YasMan/YasManView/memberInputForm.css">

<style>
	#checkButton {
		margin-top: 5px;
		font-size: 10px;
		
        border-top-right-radius: 5px;
        border-bottom-left-radius : 5px;
        border-top-left-radius: 5px;
        border-bottom-right-radius: 5px;
		
    }
	#checkButton:hover {
        color:white;
        background-color: skyblue;
    }

	
	#input {
		text-align: center;
	}

</style>

</head>

<body>

<script src="/YasMan/YasManView/script.js"></script>
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
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
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

	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center ">
				<div class="col-md-7 col-lg-5">
					<div class="wrap">
						<a href="main.do">
							<div class="img" style="background-image: url(/YasMan/Images/yasLogo.png);"></div>
						</a>
						<div class="login-wrap p-4 p-md-5 ">
							<div class="d-flex">
								<div class="w-100">
									<h3 class="mb-4" id = "input" style="font-family: inherit; color: grey ; font-weight: bold;">회원 가입</h3>
								</div>
							</div>
							<br><br>
							<form name = "inputform" action="memberInputPro.do" method = "post" class="signin-form" onsubmit = "return inputcheck()">
							<input type="hidden" name="id_check" value = "0">
							<input type="hidden" name="nick_name_check" value = "0">
								<div class="form-group mt-3" >
									<input type="text" class="form-control" name="id" pattern="\w+" required
									pattern="(?=.*\d)(?=.*[a-z]).{8,}">
									<label class="form-control-placeholder" style="color: gray;">아이디</label>
									<!-- <input type="button" value="${btn_confirm}"
										onclick="confirm()">아이디 중복 확인 -->
									<h6><button class = "button" id = "checkButton" onclick = "confirm_id()">아이디 중복확인</button></h6>
								</div>
									
								<div class="form-group">
									<input type="text" class="form-control" name="member_name" required>
									<label class="form-control-placeholder"  style="color: gray;">이름</label>
								</div>
								<div class="form-group">
									<input type="text" class="form-control"  name="nick_name" required>
									<label class="form-control-placeholder" style="color: gray;">닉네임</label>
									<h6><button class = "button" id = "checkButton" onclick = "confirm_nick_name()">닉네임 중복확인</button></h6>
								</div>

								<div class="form-group">
									<input id="password-field1" type="password" name="passwd" required name="pw1"
										pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
										title="영문 대문자, 영문 소문자, 숫자를 모두 포함한 8자리 이상의 비밀번호를 입력해주세요." onchange="this.setCustomValidity(this.validity.patternMismatch ? this.title : '' );
										if(this.checkValidity()) form.pw2.pattern=RegExp.escape(this.value);" class="form-control">
									<label class="form-control-placeholder"  style="color: gray;">비밀번호</label>
									<span toggle="#password-field1"
										class="fa fa-fw fa-eye field-icon toggle-password" ></span>
								</div>
								<div class="form-group">
									<input id="password-field2" type="password"  name="repasswd" class="form-control" name="pw2"
										onchange="this.setCustomValidity(this.validity.patternMismatch ? this.title : '');"
										title="입력하신 비밀번호와 일치하지 않습니다. 다시 입력해주세요." required>
									<label class="form-control-placeholder" style="color: gray;">비밀번호 확인</label>
									<span toggle="#password-field2"
										class="fa fa-fw fa-eye field-icon toggle-password"></span>
								</div>
								<div class="form-group">
									<input class="form-control" type="text" id="sample4_postcode" name = "woo" placeholder="우편번호" required>
									<input class="form-control" type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
									<input class="form-control" type="text" id="sample4_roadAddress" name = "doro" placeholder="도로명주소" required>
									<input class="form-control" type="text" id="sample4_jibunAddress" name = "jibun" placeholder="지번주소">
									<span id="guide" style="color:#999;display:none"></span>
									<input class="form-control" type="text" id="sample4_detailAddress" name = "sang" placeholder="상세주소" required>
									<input class="form-control" type="text" id="sample4_extraAddress" placeholder="참고항목">
									<label class="form-control-placeholder" style="color: gray;">주소 찾기</label>
								</div>
								<div class="form-group">
									<input class="form-control" type="text" name="member_tel" required >
									<label class="form-control-placeholder"style="color: gray;">연락처</label>
								</div>
								<div class="form-group">
									<input type="password" class="form-control" name="reg_num"required>
									<label class="form-control-placeholder" style="color: gray;">주민번호</label>
								</div>
								<input type="checkbox" name="agree" value="agree" required>&nbsp;개인 정보 제공 동의
								<div class="form-group">
									<input class="form-control btn btn-primary rounded submit px-3" type="submit" value="회원 등록">
								</div>
								<div class="text-center">
									<a href="loginForm.do" style="color: var(--blue);">뒤로가기</a>
									<!-- <p onclick="history.back()">뒤로가기</p> -->
									<p class="text-center">&copy; 2022 <a href="main.do" class="font-weight-bold"
											target="_blank" style="color:var(--blue)">Yas-man</a>. All rights reserved</p>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
<!-- 	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/popper.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/main.js"></script> -->
	<script type="text/javascript">
		// polyfill for RegExp.escape
		if (!RegExp.escape) {
			RegExp.escape = function (s) {
				return String(s).replace(/[\\^$*+?.()|[\]{}]/g, '\\$&');
			};
		}
	</script>
</body>

</html>