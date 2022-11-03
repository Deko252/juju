<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko"> 

<script type="text/javascript">
	$(function(){
		$(".loginModal").click(function(){
			$("#exampleModal").modal("show");
		});		
	});
</script>
<head>


<%@ include file="head.jsp"%>

<style type="text/css">

h1, .h1, h2, .h2, h3, .h3, h4, .h4, h5, .h5, h6, .h6 {
	font-family: 'Noto Sans KR', sans-serif !important;
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
li .login-out {
	color: #CDCDCD !important;
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

.main-button-1 {
	font-size: 18px !important;
    background-color: #8FC1D4 !important;
    border-color: #8FC1D4 !important;
    border-radius: 5px !important;
}
.main-button-1:hover {
	background-color: rgba(0, 0, 0, 0.3) !important;
}
.text-uppercase {
	font-size: 1.3rem !important;
}
.col-12 .main-juju {
	margin-bottom: 0.1rem !important;
	margin-left: 0.5rem;
	color: #8FC1D4 !important;
	letter-spacing: 0.3rem;
	font-size: 1.5rem !important;
}
.col-12 .main-juju-02 {
	letter-spacing: 0.3rem;
}
.main-text .fs-5 {
	font-size: 1.2rem !important;
}

.main-sec {
	text-align: center;
}
.main-sec-title {
	width: 100% !important;
}
.main-button-2 {
	font-size: 17px;
    background-color: #C68B59 !important;
    border-color: #C68B59 !important;
    border-radius: 5px !important;
}
.main-button-2:hover {
	background-color: rgba(0, 0, 0, 0.3) !important;
	border-color: #865439 !important;
}
.back-to-top {
	border-radius: 5px !important;
	background-color: #C68B59 !important;
	border-color: #C68B59 !important;
}
.back-to-top:hover {
	background-color: #865439 !important;
	border-color: #865439 !important;
}

/* 미디어 */
@media (min-width: 1200px) {

.main-first {
	    width: 800px !important;	
	}
	.display-2 {
	    font-size: 5rem !important;
	}
	}
@media (min-width: 992px) {
	.col-lg-10 {
		width: 100% !important;
	}
	.col-lg-10 .main-text-2{
	  flex: 0 0 auto;
	  width: 100%;
	}
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
    <!-- Spinner Start -->
    <div
      id="spinner"
      class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center"
    >
      <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->

    <!-- Topbar Start -->
    <!-- <div class="container-fluid bg-light p-0">
      <div class="row gx-0 d-none d-lg-flex">
        <div class="col-lg-7 px-5 text-start">
          <div
            class="h-100 d-inline-flex align-items-center border-start border-end px-3"
          >
            <small class="fa fa-phone-alt me-2"></small>
            <small>+012 345 6789</small>
          </div>
          <div class="h-100 d-inline-flex align-items-center border-end px-3">
            <small class="far fa-envelope-open me-2"></small>
            <small>info@example.com</small>
          </div>
          <div class="h-100 d-inline-flex align-items-center border-end px-3">
            <small class="far fa-clock me-2"></small>
            <small>Mon - Fri : 09 AM - 09 PM</small>
          </div>
        </div>
        <div class="col-lg-5 px-5 text-end">
          <div class="h-100 d-inline-flex align-items-center">
            <a class="btn btn-square border-end border-start" href=""
              ><i class="fab fa-facebook-f"></i
            ></a>
            <a class="btn btn-square border-end" href=""
              ><i class="fab fa-twitter"></i
            ></a> 
            <a class="btn btn-square border-end" href=""
              ><i class="fab fa-linkedin-in"></i
            ></a>
            <a class="btn btn-square border-end" href=""
              ><i class="fab fa-instagram"></i
            ></a>
          </div> 
        </div>
      </div>
    </div> -->
    <!-- Topbar End -->

    <!-- 헤더 -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5 py-lg-0 header-color">
      <a href="./index.do" class="navbar-brand d-flex align-items-center">
        <img class="logo-img" src="./resources/img/logo.png" alt="JUJU">
        <h1 class="m-0">JUJU</h1>
      </a>
      <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto py-3 py-lg-0">
          <a href="#home-01" class="nav-item nav-link active">홈으로</a>
          <a href="#intro-02" class="nav-item nav-link">병원소개</a>
          <div class="nav-item dropdown">
            <a href="#treat-03" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="true">진료과목</a>
            <div class="dropdown-menu bg-light m-0" data-bs-popper="none">
              <a href="#treat-03" class="dropdown-item dorpdown-font">내과</a>
              <a href="#treat-03" class="dropdown-item dorpdown-font">외과</a>
              <a href="#treat-03" class="dropdown-item dorpdown-font">피부과</a>
            </div>
          </div> 
          <a href="#appo-04" class="nav-item nav-link">진료예약</a>
          <a href="#info-05" class="nav-item nav-link">펫정보</a>
          <a href="#info-05" class="nav-item nav-link">공지사항</a>
          <c:if test="${sessionScope.id eq null }">
	          <li><a class="nav-item nav-link loginModal" data-bs-toggle="modal" data-bs-target="#loginModal">로그인</a></li>
          </c:if>
		  <c:if test="${sessionScope.id ne null }">
		  	<a href="./logout.do" class="nav-item nav-link login-out">로그아웃</a>
		  </c:if>
          
          <!-- <a href="contact.html" class="nav-item nav-link">Contact Us</a> -->
        </div>
      </div>
    </nav>
    <!-- -->

    <!-- Carousel Start -->
    <a name="intro-02"></a>
    <div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
      <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="w-100" src="./resources/img/mainImg01.jpg" alt="Image" />
            <div class="carousel-caption">
              <div class="container">
                <div class="row justify-content-center">
                  <div class="col-12 col-lg-10">
                    <h3 class="text-light text-uppercase mb-3 animated slideInDown main-juju">
                      주주동물병원
                    </h3>
                    <h1 class="display-2 text-light mb-3 animated slideInDown main-first">
                      ONE STOP TOTAL CLINIC
                    </h1>
                    <ol class="breadcrumb mb-4 pb-2 main-text">
                      <li class="breadcrumb-item fs-5 text-light">
                        빠른 진단
                      </li>
                      <li class="breadcrumb-item fs-5 text-light">
                        정확한 치료
                      </li>
                      <li class="breadcrumb-item fs-5 text-light">
                        반려동물 안전강화
                      </li>
                    </ol>
                    <a href="./intro.do" class="btn btn-primary py-3 px-5 main-button-1">병원소개</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
          	<a name="intro02"></a> 
            <img class="w-100" src="./resources/img/mainImg03.jpg" alt="Image" />
            <div class="carousel-caption">
              <div class="container main-sec">
                <div class="row justify-content-center">
                  <div class="col-12 col-lg-10">
                    <div class="text-light text-uppercase mb-3 animated slideInDown main-juju-02">
                      주주동물병원은-
                    </div>
                    <h1 class="display-2 text-light mb-3 animated slideInDown main-sec-title">
                      반려동물 가족의 <span>행복</span>을 위해
                    </h1>
                    <ol class="breadcrumb mb-4 pb-2">
                      <li class="breadcrumb-item fs-5 text-light main-text-2">
                        조그만 소리에도 귀기울이며 항상 좋은 친구처럼, 늘 편안한 이웃처럼 여러분 곁에서 반려동물의 건강과 행복을 위해<br>최고를 지향하며 노력하겠습니다.
                      </li>
                    </ol>
                    <a href="" class="btn btn-primary py-3 px-5 main-button-2">자세히보기</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <button
          class="carousel-control-prev"
          type="button"
          data-bs-target="#header-carousel"
          data-bs-slide="prev"
        >
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button
          class="carousel-control-next"
          type="button"
          data-bs-target="#header-carousel"
          data-bs-slide="next"
        >
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </div>
    <!-- Carousel End -->

    <a name="treat-03"></a>
    <!-- 진료과목 -->
    <%@ include file="treat.jsp"%>
    <!--  -->

	<a name="appo-04"></a>
	<!-- 진료예약 -->
    <%@ include file="appo.jsp"%>
    <!-- -->
    
    <!-- 그럴싸한 문구 -->
    <%@ include file="empty.jsp"%>
	<!--  -->
	
    <!-- 유튜브 -->
    <%@ include file="tube.jsp"%> 
    <!-- -->

    <!-- 공지/펫정보/contact -->
   	<%@ include file="info.jsp"%> 
    <!-- -->

    <!-- 푸터 -->
    <!--  -->

    <!-- Appointment Start -->
    <!-- Appointment End -->

    <!-- Team Start -->
    <!-- <div class="container-xxl py-5">
      <div class="container">
        <div class="row g-5 align-items-end mb-5">
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="border-start border-5 border-primary ps-4">
              <h6 class="text-body text-uppercase mb-2">Our Team</h6>
              <h1 class="display-6 mb-0">Our Expert Worker</h1>
            </div>
          </div>
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
            <p class="mb-0">
              Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu
              diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet
              lorem sit clita duo justo magna dolore erat amet
            </p>
          </div>
        </div>
        <div class="row g-4">
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="team-item position-relative">
              <img class="img-fluid" src="./resources/img/team-1.jpg" alt="" />
              <div class="team-text bg-white p-4">
                <h5>Full Name</h5>
                <span>Engineer</span>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
            <div class="team-item position-relative">
              <img class="img-fluid" src="./resources/img/team-2.jpg" alt="" />
              <div class="team-text bg-white p-4">
                <h5>Full Name</h5>
                <span>Engineer</span>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="team-item position-relative">
              <img class="img-fluid" src="./resources/img/team-3.jpg" alt="" />
              <div class="team-text bg-white p-4">
                <h5>Full Name</h5>
                <span>Engineer</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> -->
    <!-- Team End -->

    <!-- Testimonial Start -->
    <!-- <div class="container-xxl py-5">
      <div class="container">
        <div class="row g-5">
          <div class="col-lg-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="border-start border-5 border-primary ps-4 mb-5">
              <h6 class="text-body text-uppercase mb-2">Testimonial</h6>
              <h1 class="display-6 mb-0">What Our Happy Clients Say!</h1>
            </div>
            <p class="mb-4">
              Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat
              ipsum et lorem et sit, sed stet lorem sit clita duo justo magna
              dolore erat amet
            </p>
            <div class="row g-4">
              <div class="col-sm-6">
                <div class="d-flex align-items-center mb-2">
                  <i class="fa fa-users fa-2x text-primary flex-shrink-0"></i>
                  <h1 class="ms-3 mb-0">123+</h1>
                </div>
                <h5 class="mb-0">Happy Clients</h5>
              </div>
              <div class="col-sm-6">
                <div class="d-flex align-items-center mb-2">
                  <i class="fa fa-check fa-2x text-primary flex-shrink-0"></i>
                  <h1 class="ms-3 mb-0">123+</h1>
                </div>
                <h5 class="mb-0">Projects Done</h5>
              </div>
            </div>
          </div>
          <div class="col-lg-7 wow fadeInUp" data-wow-delay="0.5s">
            <div class="owl-carousel testimonial-carousel">
              <div class="testimonial-item">
                <img
                  class="img-fluid mb-4"
                  src="./resources/img/testimonial-1.jpg"
                  alt=""
                />
                <p class="fs-5">
                  Dolores sed duo clita tempor justo dolor et stet lorem kasd
                  labore dolore lorem ipsum. At lorem lorem magna ut et, nonumy
                  et labore et tempor diam tempor erat.
                </p>
                <div
                  class="bg-primary mb-3"
                  style="width: 60px; height: 5px"
                ></div>
                <h5>Client Name</h5>
                <span>Profession</span>
              </div>
              <div class="testimonial-item">
                <img
                  class="img-fluid mb-4"
                  src="./resources/img/testimonial-2.jpg"
                  alt=""
                />
                <p class="fs-5">
                  Dolores sed duo clita tempor justo dolor et stet lorem kasd
                  labore dolore lorem ipsum. At lorem lorem magna ut et, nonumy
                  et labore et tempor diam tempor erat.
                </p>
                <div
                  class="bg-primary mb-3"
                  style="width: 60px; height: 5px"
                ></div>
                <h5>Client Name</h5>
                <span>Profession</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> -->
    <!-- Testimonial End -->
    
    <!-- Modal : login -->       
	<%@ include file="test_login.jsp" %>
	
    <!-- Footer -->
    <%@ include file="footer.jsp"%>

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"
      ><i class="bi bi-arrow-up"></i
    ></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/lib/wow/wow.min.js"></script>
    <script src="./resources/lib/easing/easing.min.js"></script>
    <script src="./resources/lib/waypoints/waypoints.min.js"></script>
    <script src="./resources/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="./resources/js/main.js"></script>
    <script>
    var appo_result = 3;
    <c:if test="${param.result eq 0}">appo_result = 0;</c:if>
    <c:if test="${param.result eq 1}">appo_result = 1;</c:if>
    if(appo_result == 1){
    	alert("예약 되었습니다.");
    	appo_result = 3;
    }
    </script>
  </body>
</html>