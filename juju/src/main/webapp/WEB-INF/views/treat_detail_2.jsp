<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">


<head>
<%@ include file="head.jsp"%>

<style type="text/css">

.text-body {
	color: #ffffff !important;
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
	height: 400px;
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
#detail-img02 {
	padding-top: 3rem !important;
}
.title1{
	margin-top: 0;
}
.mm-1{
	    margin-top: 33px;
	    font-size: 24px !important;
}
#notice_box_2{
	margin: 0 auto;
	width: 1000px;
	height: 650px;
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

 #top_text2_1{
     width: 80%;
     position:relative;
     padding-top: 70px;
      padding-bottom: 30px;
      height: 325px;
     /* border: 1px solid black; */
  }
  #top_text2_2{
     width: 80%;
     position:relative;
     padding-bottom: 20px;
      padding-top: 100px;
      height: 325px;
     /* border: 1px solid black; */
  }

#thumnail_2{
     width: 40%;
     padding: 145px 24px;
     background-color: #f0f0f0;
     border-right: 1px solid #CCC;
     /* border: 1px red solid; */
  }
  
#top_content2_1{
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
					<img class="w-100 w-101" src="./resources/img/treat-back.jpg" alt="Image" />
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
														<h6 class="text-body text-uppercase mb-2">Treatment
															Subject</h6>
														<h1 class="display-6 mb-0">진료과목 안내</h1>
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
														<div
															class="position-relative text-center h-100 p-4 treat-sel">
															 <h5 class="mb-3 mm-1">외과</h5>
															<!-- <p>골관절질환, 신경계등</p>
															<a class="btn btn-primary small"
																href="./treat_detail_2.do">자세히 보기</a> -->
														</div>
														</a>
													</div>
												</div>
												<div class="col-lg-4 col-md-6 wow fadeInUp wow-1"
													data-wow-delay="0.5s">
													<div class="service-item bg-light overflow-hidden h-100 h-101 treat-box">
														<!-- <img class="img-fluid" src="./resources/img/back03.jpg"
															alt="" /> -->
														<a href="./treat_detail_3.do">
														<div
															class="service-text position-relative text-center h-100 p-4">
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
              <h6 class="text-body text-uppercase mb-2 small-title">surgery</h6>
              <h1 class="display-6 mb-0">
                외과
              </h1>
            </div>
            
            <div class="row gy-5 gx-4">
              <div class="col-sm-6 wow fadeIn" data-wow-delay="0.1s">
                <div class="d-flex align-items-center mb-3 title-03">
                  <h4 class="mb-0">일반외과</h4>
                </div>
                <span
                  >일반 외과에서는 소화기계(위 장관 수술, 간엽 절제술, 담낭 절제술, 위 염전 교정술, 췌장 부분 절제술, 비장 부분/전 절제술, 항문성형술 등)와 비뇨기계 질환(신장 절제술, 요관 절개술, 음경 부분/전 절제술 등)에 대한 수술적인 치료를 담당하고 있으며, 이외에도 만성적인 이염의 치료를 위한 외이도 적출 술과 이도 전적 출술 등의 다양한 수술을 실시합니다.
또한, 광범위한 피부 결손이 발생한 경우, 심한 외부 창상에 의한 허니아 수술 등을 실시하고 있습니다.</span>
              </div>
              <div class="col-sm-6 wow fadeIn" data-wow-delay="0.2s">
                <div class="d-flex align-items-center mb-3 title-03">
                  <h4 class="mb-0">흉부외과</h4>
                </div>
                <span
                  >본원에 준비된 심장용 C-arm을 이용하여 고도의 세밀한 심장 및 흉부 수술이 이루어지고 있습니다. 심장 기형의 확진을 위한 다양한 심장 카테터법이 이용되고 있으며 Sick Sinus Syndrome이나 Atrioventricular Block등의 심장 질환시에 일시적 또는 영구적인 형태의 체외 심박동기(Pacemaker, 페이스 메이커] 시술이 이루어 집니다. 이는 또한 동맥관 개존증(PDA)이나 우대동맥궁 잔존증(PRAA), 좌측 쇄골하동맥 잔존증(ASCA)등의 수술중에 페이스 메이커를 장착하고 수술함으로써 술중 사망 확률이 현저히 개선되었습니다.</span
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
                src="./resources/img/treat_detail_3.jpg"
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
                  <h1 class="text-white">외과</h1>
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
      <div><h3>외과<span>(Surgery)</span>는-</h3>
      <div id="text">
    점차 반려동물에 대한 인식개선과 노령화로 종양의 치료/관리에 대한 필요성이 증가하여 여러 장기에 여러 형태로 발생하는 종양의 외과적 관리 또한 증가하고 있는 추세입니다. 종양의 침습성과 전이, 인접 장기의 기능부전 여부 등을 알기 위해 세포학검사, 방사선, 초음파, CT/ MRI, 혈액검사 등 다각적인 접근이 필 요한 경우가 많습니다.
      	</div>
      	<div id="imgs">
     		<div id="imgs2">
     			<div id="imgs3">
     				<section id="section1">
	     				<ul id="imgs4">
	     					<li id="imgs5">
	     						<span>
	     							<img src="./resources/img/a01.jpg" width="100%">
	     						</span>
	     					</li>
	     					<li id="imgs5">
	     						<span>
	     							<img src="./resources/img/a02.jpg" width="100%">
	     						</span>
	     					</li>
	     					<li id="imgs5">
	     						<span>
	     							<img src="./resources/img/a03.jpg" width="100%">
	     						</span>
	     					</li>
	     					<li id="imgs5">
	     						<span>
	     							<img src="./resources/img/a04.jpg" width="100%">
	     						</span>
	     					</li>
	     				</ul>
     				</section>
     			</div>
     		</div>
      </div>
     </div> 	
      
      <br>
      <div><h3>외과 진료과목 안내</h3>
      <div id="text">
      주주는 특화진료과목 이외에도 각 진료과목별 전문 클리닉을 운영하고 있습니다.
      	</div><br>
      <div id="notice_box_2">
        	<table>
            		<div id="top_content2_1">
		          		<div id="thumnail_2"><h2>일반외과</h2></div>
		          			<div id="top_text2_1" class="top_text_all">
		          			경우에 따라 복강경을 이용하여 개복 또는 개흉을 하지 않고, <font class="top_text_color">최소한의 절개로 수술적 교정을 실시하기도 합니다. 절개 부위가 작아 흉터가 작으며, 수술 후 통증, 회복이 비교적 빠른 장점</font>이 있습니다. 생검, 영양관 (feeding tube) 장착, 암컷의 중성화수술, 위 고정술, 방광결석 제거 등에 이용될 수 있습니다. 일반적으로 선천성 혹은 후천성의 질환들로 인해 생명이 위험하거나, 수술적 교정 / 마취과정에 위험성이 있는 경우, 원인이 밝혀지지 않거나 여러 원인이 있는 경우, <font class="top_text_color">수술 후 합병증의 교정이 필요한 경우에 본원에 의뢰되어 내원</font>하시게 됩니다. 따라서 경우에 따라 위험하고 응급을 요하는 수술이 많이 행해지게 됩니다.
              				</div>
            		</div>	
        	</table>
        	<table>
            		<div id="top_content2_1">
		          		<div id="thumnail_2"><h2>흉부외과</h2></div>
		          			<div id="top_text2_2" class="top_text_all">
		          			Carval Syndrome을 보이는 말기 심장사상충 동물에게 수술을 통한 심장사상충 제거를 하고 있으며 횡격막 허니아, 심낭복막 횡격막 허니아등도 수술합니다. 또한 <font class="top_text_color">식도천공된 흉부 식도의 절제술등이 가능하여 흉부식도이물이 부식도를 관통하여 음식물이 흉강으로 새는 경우도 수술하여 동물의 생명을 살리게 되었습니다</font>. 그리고 폐의 부분/전적출술과 폐종양의 수술이 이루어집니다.
              				</div>
            		</div>	
        	</table>
        	
		    </div>
      </div>
    </div>
      <!-- 그럴싸한 문구 -->
    <div
      class="container-fluid appointment my-5 py-5 wow fadeIn juju01" 
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