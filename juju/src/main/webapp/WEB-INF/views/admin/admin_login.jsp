	<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<title>로그인</title>

<%@ include file = "../head.jsp" %>

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

<style>
h3{
	text-align: center;
}
body {
  min-height: 100vh;
  background-color: #8FC1D4;
}
.goBack {
	width: 100%;
	display: flex;
	justify-content: center;
}
.goBack > h2 {
	width: 200px;
	margin-top: 10% !important;
	text-align: center;
	font-size: 60px;
	color: #fff;
	text-shadow: 0 0 8px rgba(0, 0, 0, 0.3)
}

.mx-auto {
	text-align: center;
}
.validation-form {
}
.input-form {
  max-width: 500px;
  margin-top: 50px;
  padding: 32px;
  background: #fff;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  border-radius: 10px;
  -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
  -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
  box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
.input-form > h3 {
    font-size: 40px;
	font-weight: 400;
} 
.custom-control{
	text-align: center;
}
.btn-primary{
	font-weight: bold;
	background-color: #C68B59; 
	border-color: #C68B59;
	border-radius: 5px;
}
#goIndex {
	margin-left:5px;
	background-color: #CDCDCD;
	border-color: #CDCDCD;
}
.btn-block {
	margin: 0 auto;
	width: 130px;
}
.btn-primary:hover,
#goIndex:hover {
	font-weight: bold;
	background-color: #8FC1D4;
	border-color: #8FC1D4;
}
.mt-4{
	margin-top: 15px !important;
}

</style>


</head>

<body id="page-top">
 
	<!-- content -->
	<div class="container">
    <div class="input-form-backgroud row">
    <a class="goBack" href="./index.do">
		<h2>JUJU</h2>
    </a>
      <div class="input-form col-md-12 mx-auto">
        <h3 class="mb-3">로그인</h3>
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
          <a id="goIndex" class="btn btn-primary btn-lg btn-block" href="./index.do">돌아가기</a>
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
  
  <!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="./resources/lib/wow/wow.min.js"></script>
	<script src="./resources/lib/easing/easing.min.js"></script>
	<script src="./resources/lib/waypoints/waypoints.min.js"></script>
	<script src="./resources/lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="./resources/js/main.js"></script>
   
</body>
</html>