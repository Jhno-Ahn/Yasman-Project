<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<title>V-GOOD 비건을 위한 웹사이트</title>
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
							<form name = "inputform" action="memberInputPro.do" method = "post" class="signin-form" onsubmit="return inputcheck()">
							<input type="hidden" name="checkid" value="0">
							<input type="hidden" name="checknickname" value="0">
								<div class="form-group mt-3" >
									<input type="text" class="form-control" name="id" pattern="\w+" required>
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
									<input type="text" class="form-control"  name="nick_name" pattern="\w+" required>
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
									<input type="text" class="form-control" name="member_tel" required >
									<label class="form-control-placeholder"style="color: gray;">연락처</label>
									<h6><button class = "button" id = "checkButton">휴대폰 인증</button></h6>
								</div>
								<div class="form-group">
									<input type="password" class="form-control" name="reg_num"required>
									<label class="form-control-placeholder" style="color: gray;">주민번호</label>
								</div>
								<input type="checkbox" name="agree" value="agree">&nbsp;개인 정보 제공 동의
								<div class="form-group">
									<button type="submit" class="form-control btn btn-primary rounded submit px-3">회원
										등록</button>
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
	<script src="/YasMan/YasManView/script.js"></script>
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