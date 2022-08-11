<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/YasManView/header2.jsp"%>
<body>
	<!-- Main content -->
	<section class="slice slice-lg" id="sct-form-contact">
		<div class="container position-relative zindex-100">
			<div class="row justify-content-center mb-5">
				<div class="col-lg-6 text-center">
					<h3>경기 정보 입력</h3>
					<p class="lh-190">경기 정보를 입력해 글 작성을 완료하세요!</p>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<!-- Form -->
					<form method="post" action="footMatchInputPro.do?id=${id}">
						<div class="form-group">
							<h5>종목 선택</h5>
							<select class="form-control" id="menu" name="match_kind" required>
								<option value="" disabled selected>종목</option>
								<option value="축구">축구</option>
							</select>
						</div>
						<div class="form-group">
							<h5>구장 선택</h5>
							<select class="form-control" id="menu" name="match_stardi_name"
								required>
								<option value="" disabled selected>구장</option>
								<option value="서울 은평 롯데몰">서울 은평 롯데몰</option>
								<option value="서울 용산 아이파크몰">서울 용산 아이파크몰</option>
								<option value="도봉 루다 풋살장">도봉 루다 풋살장</option>
								<option value="노원 하라 풋살장">노원 하라 풋살장</option>
							</select>
						</div>
						<div class="form-group">
							<h5>날짜 선택</h5>
							<input class="form-control form-control-lg" type="date"
								name="match_day">
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
							<button type="submit"
								class="btn btn-block btn-lg btn-primary mt-4"
								style="background-color: sky-blue; border-style: none;">글
								작성 완료</button>
						</div>
						<div>
							<button type="reset"
								class="btn btn-block btn-lg btn-primary mt-4"
								style="background-color: sky-blue; border-style: none;">
								<a style="color: white;" href="footBallBoard.do?id=${id}">돌아가기</a>
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
