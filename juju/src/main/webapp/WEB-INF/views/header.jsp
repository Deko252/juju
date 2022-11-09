<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

h1, .h1, h2, .h2, h3, .h3, h4, .h4, h5, .h5, h6, .h6 {
	font-family: 'Noto Sans KR', sans-serif !important;
}
.navbar .navbar-nav .nav-link {
	font-family: 'Noto Sans KR', sans-serif !important;
	font-weight: 100 !important;
	font-size: 18px !important;
	cursor: pointer;
}
.dropdown-item {
	font-size: 18px;
	font-family: 'Noto Sans KR', sans-serif !important;
	font-weight: 100 !important;
	color: #8D9297 !important;
	transition: all 0.2s ease-in-out;
}
.logo-img {
	width: 65px;
	margin-right: 10px;
}

.m-0 {
	font-size: 50px;
}
.navbar .navbar-nav .nav-link {
	color: #8D9297 !important;
}

.dropdown-item {
	color: #8D9297 !important;
}

.dorpdown-font:hover{
	color: #fff !important;
}

.dropdown-menu {
	font-size: 17px;
}
.collapse {
	font-size: 17px;
}

.navbar .navbar-nav .nav-link:hover, .navbar .navbar-nav .nav-link.active
	{
	color: #8FC1D4 !important;
}

.navbar-nav>.nav-item:last-child {
	color: #dee2e6;
}

.dropdown-item:hover, .dropdown-item:focus {
	color: #1e2125;
	background-color: #8FC1D4 !important;
}

.carousel-caption {
	background: rgba(0, 0, 0, .20);
}

.btn-primary {
	background-color: #C68B59;
	border-color: #C68B59;
}

.treat_title {
	text-align: center;
}

.service-item:hover a.btn {
	background-color: #fff;
	color: #C68B59 !important;
}

.service-text::before {
	background: #C68B59;
}

.service-text h5 {
	font-size: 28px;
}

.service-text p {
	font-size: 16px;
}

.small {
	font-size: 17px;
	background-color: #C68B59;
	border-color: #C68B59;
	border-radius: 5px;
}

.border-start {
	border-left: none !important;
}

.border-start:after { 
	content: "";
	display: block;
	width: 250px;
	border-bottom: 1px solid #865439;
	border-width: 5px;
	margin: 20px auto;
}
@media ( min-width : 992px) {
	.treat_title {
		flex: 0 0 auto;
		width: 100%;
	}
	.navbar .nav-item .dropdown-menu {
		right: none !important;
	}
}


</style>

</head>
<body>
	<nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5 py-lg-0 header-color">
      <a href="./index.do" class="navbar-brand d-flex align-items-center">
          <img class="logo-img" src="./resources/img/logo.png" alt="JUJU">
        <h1 class="m-0">
        JUJU
        </h1>
      </a>
      <button
        type="button"
        class="navbar-toggler"
        data-bs-toggle="collapse"
        data-bs-target="#navbarCollapse"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto py-3 py-lg-0">
          <a href="./index.do" class="nav-item nav-link active">홈으로</a>
          <a href="./intro.do" class="nav-item nav-link">병원소개</a>
          <div class="nav-item dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="true">
            	진료과목
           	</a>
            <div class="dropdown-menu bg-light m-0" data-bs-popper="none">
              <a href="./treat_detail_1.do" class="dropdown-item dorpdown-font">내과</a>
              <a href="./treat_detail_2.do" class="dropdown-item dorpdown-font">외과</a>
              <a href="./treat_detail_3.do" class="dropdown-item dorpdown-font">피부과</a>
            </div>
          </div> 
          <a href="./appo_detail.do" class="nav-item nav-link" data-bs-toggle="modal" data-bs-target="#appoModal">진료예약</a>
          <a href="./petinfo.do?cate=1" class="nav-item nav-link">반려동물정보</a>
          <a href="./notice.do" class="nav-item nav-link">공지사항</a>
          <c:if test="${sessionScope.id eq null }">
	          <li><a class="nav-item nav-link loginModal" data-bs-toggle="modal" data-bs-target="#loginModal">로그인</a></li>
          </c:if>
		  <c:if test="${sessionScope.id ne null }">
		  <div class="nav-item dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="true">
           	관리자</a>
		  <div class="dropdown-menu bg-light m-0" data-bs-popper="none">
		  	<a href="./admin/admin_appo.do" class="dropdown-item dorpdown-font">관리자 페이지</a>
		  	<a href="./logout.do" class="dropdown-item dorpdown-font">로그아웃</a>
		  	</div>
		  	</div>
		  </c:if>
          
          <!-- <a href="contact.html" class="nav-item nav-link">Contact Us</a> -->
        </div>
      </div>
    </nav>
    
    <!-- Modal : appo -->       
	<%@ include file="appo_detail.jsp" %>
    
    <!-- Modal : login -->       
	<%@ include file="test_login.jsp" %>
    
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