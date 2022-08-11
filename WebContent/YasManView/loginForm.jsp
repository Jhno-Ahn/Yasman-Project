<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/YasManView/header2.jsp"%>
<body>
<script>
history.pushState(null, null, location.href);
window.onpopstate = function(event) {
   history.go(1);
};
</script>
  <section class="ftco-section">
    <div class="container">
      <div class="row justify-content-center align-items-center">
        <div class="col-md-7 col-lg-5">
          <div class="wrap">
          <div>
            <a class="navbar-brand" href="loginForm.do">
                <img alt="Image placeholder" src="${pageContext.request.contextPath}/YasManView/assets/img/yasman/YasmanLogoBlack.png"
                 style="margin-left:22%;">
            </a>
          </div>
            <div class="login-wrap p-4 p-md-5">
              <div class="d-flex">
                <div class="w-100">
                  <h3 class="mb-3" style="font-family: inherit; color: gray; font-weight: bold;">로그인</h3>
                </div>
              </div>
              <form action="loginPro.do" class="signin-form">
                <div class="form-group mt-3">
                  <input type="text" class="form-control" name = "id" required>
                  <label class="form-control-placeholder" style="color: gray;">아이디</label>
                </div>
                <div class="form-group">
                  <input id="password-field" type="password" name = "passwd" class="form-control" required>
                  <label class="form-control-placeholder"style="color: gray;">비밀번호</label>
                  <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                </div>
                <div class="form-group" >
                  <button type="submit" class="form-control btn btn-primary rounded submit px-3">로그인</button>
                </div>
              </form>
              <p class="text-center"><a href="memberInputForm.do" style="color: var(--blue);">회원 가입</a></p>
              <p class="text-center">&copy; 2022 <a href="main.do" class="font-weight-bold" target="_blank"
                  style="color:var(--blue)">Yas-Man</a>. All rights reserved</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>