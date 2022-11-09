<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">


<head>
<title>진료 과목</title>
<%@ include file="head.jsp"%>

<style type="text/css">

.first-title {
	color: #8FC1D4 !important;
	text-shadow: 0px 0px 10px black;
}
.wow-1{
	width: 150px !important;	
}
.wow-1 > .service-item {
}
p{
	color: #8D9297;
}
.bg-primary {
    background-color: #8FC1D4 !important;
}
.treat-title {
	color: #ffffff;
	text-shadow: 0px 0px 10px black;
}
#text{
	font-size: 17px;
}
.container2{
	height: 200px;
    width: 700px;
    padding-left: 0px;
    padding-right: 0px;
}
.w-101{
	/* height: 400px; */
}
.title-03 {
	padding-left: 0rem !important;
	padding-right: 0rem !important;
	display: flex !important;
	justify-content: center !important;
}
.small-title {
	color: #8D9297 !important;
	padding-left: 5px;
}
h3 > span {
	color: #8D9297 !important;
}
.carousel-item {
  overflow: hidden;
  height: 400px;
  width: 100%;
}
#detail-img02 {
	padding-top: 2rem !important;
	padding-left: 2rem !important;	
}
.title1{
	margin-top: 0;
}
.mm-1{
	    margin-top: 33px;
	    font-size: 24px !important;
}
#notice_box_3{
	margin: 0 auto;
	width: 1000px;
	height: 700px;
	border-top: 2px solid #207ecd;
}
.top_text_all{
	color: black;
	/* font-weight:500; */
	font-size: 17px;
}
.top_text_color{
	color: #3562B5;
	font-weight:800;
}

#top_text3_1{
    width: 80%;
    position:relative;
    padding: 12% 5px;
    height: 350px;
    /* border: 1px solid black; */
}
#top_text3_2{
  width: 80%;
  position:relative;
  padding: 6% 5px;
  height: 350px;
  /* border: 1px solid black; */
}

#thumnail_3{
    width: 40%;
    padding: 155px 24px;
    background-color: #f0f0f0;
    border-right: 1px solid #CCC;
    /* border: 1px red solid; */
  }
  
#top_content3_1{
  width: 100%;
  height:50%;
  display: flex;
  text-align: center;
  border: 1px solid #CCC;
  /* border: 1px blue solid; */
}

.wow > .py-5 {
	margin-top: 3.5rem;
}
.empty-title {
	text-align: center;
}
.empty-title > .border-start {
	margin-bottom: 1rem !important;
}
.border-start > .empty-hospital {
	letter-spacing: 1em;
}
.wow > .text-white:first-child + .text-white {
	font-size: 13px;
}
.empty-border:after {
	content: "";
    display: block;
    width: 290px;
    border-bottom: 1px solid #8FC1D4;
    margin: 20px auto;
}
.bar_1:after {
	border-width: 0 !important;
}
.bar_text{
	margin-top: 30px;
}
/* .pt-5 {
	padding-top: 0 !important;
} */
@media ( min-width : 768px) {
.col-lg-5 {
  flex: 0 0 auto;
  width: 100%;
}
}
@media (min-width: 992px) {
.col-lg-5 {
    flex: 0 0 auto;
    width: 100%;
}
.appointment {
	height: 300px;
}
.empty-title {
	text-align: center;
}
}

#imgs{
	border: 1px solid #fff;
	background-color: #f0f0f0;
	height: 400px;
	width: 100%;
	display: inline-block;
	margin-top: 30px;
	margin-bottom: 30px;
}

#imgs2{
	/* border: 1px solid blue; */
	position: relative;
    margin-top: 55px;
}

#imgs3{
	/* border: 1px solid green; */
	height: 314px;
	position: relative;
    width: 100%;
	padding: 0 24.5px 0 24.5px;
	list-style-type: disc;
	list-style: none;
	background-color: #f0f0f0;
}

#imgs4{
	list-style-type: none;
    margin: 0;
    padding: 0;    
    width: 100%;
    
}
#section1{
	display: block;
	font-size: 0px;
	width: 100%;
}
#imgs5{
	float: left;
	padding-left: 20.4px;
}
.bar1:after {
	margin-left: 0px !important;
}
.service-text::before {
    background: #8FC1D4 !important;
}
.treat-sel {
	background-color: #865439 !important;
}
.treat-sel > h5 {
	color: #ffffff !important;
}
.position-relative > h5 {
	margin: 20px 0 !important;	
}
.btn-primary {
	background-color: #C68B59;
	border-color: #C68B59;
	border-radius: 5px !important;
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

</style>



</head>

<body>
	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
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
	<%@ include file="header.jsp"%>
	<!-- -->
	<div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
		<div id="header-carousel" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="w-100 w-101" src="./resources/img/treat-back03.jpg" alt="Image" />
					<div class="carousel-caption">
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-12 col-lg-10">
									<div class="container-xxl py-5">
										<div class="container container2">
											<div class="row g-5 align-items-end mb-5">
												<div class="col-lg-6 wow fadeInUp treat_title title1"
													data-wow-delay="0.1s">
													<div class="border-start border-5 border-primary ps-4">
														<h6 class="text-body text-uppercase mb-2 first-title">Treatment
															Subject</h6>
														<h1 class="display-6 mb-0 treat-title">진료과목 안내</h1>
													</div>
												</div>
												<!-- <div class="col-lg-6 text-lg-end wow fadeInUp" data-wow-delay="0.3s">
            <a class="btn btn-primary py-3 px-5" href="">More Services</a>
          </div> -->
											</div>
											<div class="row g-4 justify-content-center">
												<div class="col-lg-4 col-md-6 wow fadeInUp wow-1"
													data-wow-delay="0.1s">
													<div class="service-item bg-light overflow-hidden h-100 h-101 treat-box">
														<!-- <img class="img-fluid" src="./resources/img/back01.jpg" 
															alt="">-->
														<a href="./treat_detail_1.do">
														<div
															class="service-text position-relative text-center h-100 p-4">
															<h5 class="mb-3 mm-1">내과</h5>
															<!-- <a class="btn btn-primary small"
																href="./treat_detail_1.do">자세히 보기</a> -->
														</div>
														</a>
													</div>
												</div>
												<div class="col-lg-4 col-md-6 wow fadeInUp wow-1"
													data-wow-delay="0.3s">
													<div class="service-item bg-light overflow-hidden h-100 h-101 treat-box">
														<!-- <img class="img-fluid" src="./resources/img/back02.jpg"
															alt="" /> -->
														<a href="./treat_detail_2.do">
														<div
															class="service-text position-relative text-center h-100 p-4">
															 <h5 class="mb-3 mm-1">외과</h5>
															<!-- <p>골관절질환, 신경계등</p>
															<a class="btn btn-primary small"
																href="./treat_detail_2.do">자세히 보기</a> -->
														</div>
														</a>
													</div>
												</div>
												<div class="col-lg-4 col-md-6 wow fadeInUp wow-1" data-wow-delay="0.5s">
													<div class="service-item bg-light overflow-hidden h-100 h-101 treat-box">
														<!-- <img class="img-fluid" src="./resources/img/back03.jpg"
															alt="" /> -->
														<div class="position-relative text-center h-100 p-4  treat-sel">
															 <h5 class="mb-3 mm-1">피부과</h5>
															<!-- <p>귀질환, 피부질환 등</p>
															<a class="btn btn-primary small"
																href="./treat_detail_3.do">자세히 보기</a> -->
														</div>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Carousel End -->

	<!-- 진료과목 소개 시작 -->

	<!-- -->
	<div class="container-xxl py-5">
      <div class="container">
        <div class="row g-5">
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="border-start border-5 border-primary ps-4 mb-5 bar1">
              <h6 class="text-body text-uppercase mb-2 small-title">dermatology</h6>
              <h1 class="display-6 mb-0">
                피부과
              </h1>
            </div>
            
            <p class="mb-5">
              피부과를 독립된 진료과로 개설하고 환자를 진료하고 있습니다.
				피부과에서 중점적으로 제공하는 의료 서비스는 다음과 같습니다.
            </p>
            <div class="row gy-5 gx-4">
              <div class="col-sm-6 wow fadeIn" data-wow-delay="0.1s">
                <div class="d-flex align-items-center mb-3 title-03">
                  <h4 class="mb-0">감염성 피부질환 진단</h4>
                </div>
                <span
                  >피부 감염 세균 및 피부사상균 감염의 신속 진단을 위한 PCR 검사를 실시하고 있으며 피부 세균 감염 시세 균동정 및 항생제 감수성 검사를 바탕으로 한 항생제 요법을 실시하고 있습니다.</span
                >
              </div>
              <div class="col-sm-6 wow fadeIn" data-wow-delay="0.2s">
                <div class="d-flex align-items-center mb-3 title-03">
                  <h4 class="mb-0">외이염 및 중이염 관리</h4>
                </div>
                <span
                  >외이도를 평가하는 디지털검이경을 구비해 외이도와 고막의 상태를 정확히 평가하고 있으며 만성의 난치 성 외이염 및 중이염의 내과적 관리에 역점을 두고 있습니다</span
                >
              </div>
              
            </div>
                                 
          </div>
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
            <div
            	id="detail-img02" 
              class="position-relative overflow-hidden ps-5 pt-5 h-100"
              style="min-height: 400px"
            >
              <img
                class="position-absolute w-100 h-100"
                src="./resources/img/treat_detail_2.jpg"
                alt=""
                style="object-fit: cover"
              />
              <div
                class="position-absolute top-0 start-0 bg-white pe-3 pb-3"
                style="width: 200px; height: 200px"
              >
                <div
                  class="d-flex flex-column justify-content-center text-center bg-primary h-100 p-3"
                >
                  <h1 class="text-white">피부과</h1>
                  <h2 class="text-white"></h2>
                  <h5 class="text-white mb-0"></h5>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <br>
      <br>
      <div><h3>피부과<span>(Dermatology)</span>는-</h3>
      <div id="text">
     동물의 피부(귀, 발톱, 항문낭, 눈꺼풀 포함)에 발생하는 질병에 대한 진단 및 치료를 담당하고 있습니다.
      	</div>
      	<div id="imgs">
     		<div id="imgs2">
     			<div id="imgs3">
     				<section id="section1">
	     				<ul id="imgs4">
	     					<li id="imgs5">
	     						<span>
	     							<img src="http://www.chungdamah.co.kr/theme/hp001/img/pbg01.jpg" width="100%">
	     						</span>
	     					</li>
	     					<li id="imgs5">
	     						<span>
	     							<img src="http://www.chungdamah.co.kr/theme/hp001/img/pbg02.jpg" width="100%">
	     						</span>
	     					</li>
	     					<li id="imgs5">
	     						<span>
	     							<img src="http://www.chungdamah.co.kr/theme/hp001/img/pbg03.jpg" width="100%">
	     						</span>
	     					</li>
	     					<li id="imgs5">
	     						<span>
	     							<img src="http://www.chungdamah.co.kr/theme/hp001/img/pbg04.jpg" width="100%">
	     						</span>
	     					</li>
	     				</ul>
     				</section>
     			</div>
     		</div>
      </div>
     </div> 	
      
      <br>
      <div><h3>피부과 진료과목 안내</h3>
      <div id="text">
      청담우리동물병원은 특화진료과목 이외에도 각 진료과목별 전문 클리닉을 운영하고 있습니다.
      	</div><br>
      <div id="notice_box_3">
        	<table>
            		<div id="top_content3_1">
		          		<div id="thumnail_3"><h2>귀질환</h2></div>
		          			<div id="top_text3_1" class="top_text_all">
		          			귀에 발생하는 질병들은 보호자들의 세심한 보호가 있다면 예방하거나 발병을 줄일수 있음을 인지하고 병원내원시 마다 정기적으로 검진하여야 합니다. 귀속에서 불괘한 냄새가 나거나, 고개를 좌우로 흔들거나, 귀를 만지면 아파하는 것들은 귓병을 의심해 볼수 있는 증상들입니다. <font class="top_text_color">귀의 해부학적 구조에 의해서 외이도염, 중이염, 내이염으로 구분</font>을 합니다.
              				</div>
            		</div>	
        	</table>
        	<table>
            		<div id="top_content3_1">
		          		<div id="thumnail_3"><h2>피부질환</h2></div>
		          			<div id="top_text3_2" class="top_text_all">
		          			반려동물의 피부는 사람과 다르게 피모(털)로서 피부를 덥고 있습니다. 이러한 털과 피부는 여려가지 환경, 영양, 호르몬등에 의해 영향을 받게됩니다. 또한 이러한 피모나 피부에 영향을 주는 질환은 광범위합니다.
							<font class="top_text_color">곰팡이나 외부기생충</font>이 직접 피부에 감염되는 병이 있는가 하면 <font class="top_text_color">내분비 질환에 의한 호르몬 영향</font>으로 피부에 탈모나 병변을 나타내는 경우나 과민반응의 일종인 음식 알러지, 흡입된 알러지 발생 물질에 의해 피부병을 발생하는 아토피에 이르기 까지 매우 많습니다.
							우리가 흔히볼 수 있고 치료를 필요로 하는 질병에 대해서만 간단히 분류를 한다면 세균성 피부질환, 곰팡이성 피부질환, 기생충성 피부질환, 내분비성 피부질환, 면역매계성 피부질환, 종양이나 신생물 그리고 음식알러지, 아토피, 접촉성 피부염과 같은 과민성 피부질환들이 있습니다.
              				</div>
            		</div>	
        	</table>
        	
		    </div>
      </div>
    </div>
      <!-- 그럴싸한 문구 -->
    <div
      class="container-fluid appointment my-5 py-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container py-5">
        <div class="row g-5">
          <div class="col-lg-5 col-md-6 wow fadeIn empty-title bar_text" data-wow-delay="0.3s">
            <div class="border-start border-5 border-primary ps-4 mb-5 empty-border bar_1">
              <h3 class="text-white text-uppercase mb-2 empty-hospital">
                JUJU Animal Hospital
              </h3>
            </div>
          </div>
          
          <!-- 예약폼 -->
          <!-- <div class="col-lg-7 col-md-6 wow fadeIn" data-wow-delay="0.5s">
            <form>
              <div class="row g-3">
                <div class="col-sm-6">
                  <div class="form-floating">
                    <input
                      type="text"
                      class="form-control bg-dark border-0"
                      id="gname"
                      placeholder="Gurdian Name"
                    />
                    <label for="gname">Your Name</label>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-floating">
                    <input
                      type="email"
                      class="form-control bg-dark border-0"
                      id="gmail"
                      placeholder="Gurdian Email"
                    />
                    <label for="gmail">Your Email</label>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-floating">
                    <input
                      type="text"
                      class="form-control bg-dark border-0"
                      id="cname"
                      placeholder="Child Name"
                    />
                    <label for="cname">Your Mobile</label>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-floating">
                    <input
                      type="text"
                      class="form-control bg-dark border-0"
                      id="cage"
                      placeholder="Child Age"
                    />
                    <label for="cage">Service Type</label>
                  </div>
                </div>
                <div class="col-12">
                  <div class="form-floating">
                    <textarea
                      class="form-control bg-dark border-0"
                      placeholder="Leave a message here"
                      id="message"
                      style="height: 100px"
                    ></textarea>
                    <label for="message">Message</label>
                  </div>
                </div>
                <div class="col-12">
                  <button class="btn btn-primary w-100 py-3" type="submit">
                    Get Appointment
                  </button>
                </div>
              </div>
            </form>
          </div> -->
        </div>
      </div>
    </div>
    
	<!--  -->




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

	<!-- Footer Start -->
	<%@ include file="footer.jsp"%>
	<!-- Footer End -->

	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
		class="bi bi-arrow-up"></i></a>

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