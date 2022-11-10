<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
	

<!DOCTYPE html>
<html lang="ko">
<head>
<title>로그인</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

 <script type="text/javascript">
$(function(){
		var check = 0;
		<c:if test="${sessionScope.id ne null}">check = 1;</c:if>
		if(check == 1){
			alert("정상적인 경로를 이용해 주세요.");
			location.href="./index.do";
		}
		<c:if test="${param.error ne null }">
			alert("아이디 또는 비밀번호가 일치하지 않습니다.");
      	</c:if>
      	window.onkeydown = function() {
      	   var kcode = event.keyCode;
      	   if(kcode == 116) {
      	   history.replaceState({}, null, location.pathname);
      	   }
      	   }
      	
});
</script>  

<!-- Core theme CSS (includes Bootstrap)-->
<link href="./resources/assets/css/board.css" rel="stylesheet" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<style>
h2{
	text-align: center;
}
body {
  min-height: 100vh;
  background-color: #F4AE34;
}

.input-form {
  max-width: 680px;

  margin-top: 20%;
  padding: 32px;

  background: #fff;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  border-radius: 10px;
  -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
  box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
.input-form > h2 {
	font-family: 'Jua', sans-serif;
    font-size: 50px;
	font-weight: 400;
} 
.custom-control{
	text-align: center;
}
.btn-primary{
	background-color: #EB2524; 
	border-color: #EB2524;
}
.btn-primary:hover{
	background-color: #1F1D1E;
	border-color: #1F1D1E;
}
.mt-4{
	margin-top: 15px !important;
}
.mb-4 > h2 {
	font-size: 20px;
}

</style>


</head>
<body id="page-top">
	<!-- content -->
	<div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h2 class="mb-3">로그인</h2>
        <form action="./admin_login.do" method="post" class="validation-form" novalidate >
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">아이디</label>
              <input type="text" class="form-control" id="name" name="id" placeholder="" value="" required>
              <div class="invalid-feedback">
                아이디를 입력해주세요.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="nickname">비밀번호</label>
              <input type="password" class="form-control" id="nickname" name="pw" placeholder="" value="" required >
              <div class="invalid-feedback">
                비밀번호를 입력해주세요.
              </div>
            </div>
          </div>
          <div class="mb-4"></div>       
          <button id="login" class="btn btn-primary btn-lg btn-block" type="submit">로그인</button>
          <%-- <c:if test="${param.error ne null }">
          	<h2 style="color: red; font-size: 22px; margin-top: 10px;">아이디와 비밀번호가 일치하지 않습니다.</h2>
          </c:if>  --%>
        </form>
      </div>
    </div>
  </div>
  <script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
</body>
</html>