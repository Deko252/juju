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
	color: #ffffff !important;s
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
.carousel-inner {
} 
.carousel-item {
	overflow: hidden;
	height: 400px;
	width: 100%;
}
.w-100{
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
#notice_box_1{
	margin: 0 auto;
	width: 1000px;
	height: 1000px;
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

#top_text1_1{
	width: 80%;
	position:relative;
	padding: 7% 5px;
	/* border: 1px solid black; */
}
#top_text1_2{
	width: 80%;
	position:relative;
	padding: 5% 5px;
	/* border: 1px solid black; */
}
#top_text1_3{
	width: 80%;
	position:relative;
	padding: 6% 5px;
	/* border: 1px solid black; */
}
#top_text1_4{
	width: 80%;
	position:relative;
	padding: 1% 5px;
	/* border: 1px solid black; */
}
#top_text1_5{
	width: 80%;
	position:relative;
	padding: 6% 5px;
	/* border: 1px solid black; */
}

#thumnail_1{
	width: 40%;
	padding: 75px 24px;
	background-color: #f0f0f0;
	border-right: 1px solid #CCC;
	/* border: 1px red solid; */
}

#top_content1_1{
	width: 100%;
	height:20%;
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
		<div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
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
												<div class="col-lg-6 wow fadeInUp treat_title title1" data-wow-delay="0.1s">
													<div class="border-start border-5 border-primary ps-4">
														<h6 class="text-body text-uppercase mb-2">
															Treatment Subject
														</h6>
														<h1 class="display-6 mb-0">진료과목 안내</h1>
													</div>
												</div>
												<!-- <div class="col-lg-6 text-lg-end wow fadeInUp" data-wow-delay="0.3s">
            <a class="btn btn-primary py-3 px-5" href="">More Services</a>
          </div> -->
											</div>
											<div class="row g-4 justify-content-center">
												<div class="col-lg-4 col-md-6 wow fadeInUp wow-1">
													<div class="service-item bg-light overflow-hidden h-100 h-101 treat-box">
														<!-- <img class="img-fluid" src="./resources/img/back01.jpg" 
															alt="">-->
														<div class="position-relative text-center h-100 p-4 treat-sel">
															<h5 class="mb-3 mm-1">내과</h5>
															<!-- <a class="btn btn-primary small"
																href="./treat_detail_1.do">자세히 보기</a> -->
														</div>
														</a>
													</div>
												</div>
												<div class="col-lg-4 col-md-6 wow fadeInUp wow-1" data-wow-delay="0.3s">
													<div class="service-item bg-light overflow-hidden h-100 h-101 treat-box">
														<!-- <img class="img-fluid" src="./resources/img/back02.jpg"
															alt="" /> -->
														<a href="./treat_detail_2.do">
														<div class="service-text position-relative text-center h-100 p-4">
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
              <h6 class="text-body text-uppercase mb-2 small-title">internal medicine</h6>
              <h1 class="display-6 mb-0">
                내과 클리닉
              </h1>
            </div>
            
            <p class="mb-5">
              최근 반려동물의 나이가 증가하면서 각종 내과질환이 빈발하고 있습니다. 내과질환에는 코와 비강을 포함한 호흡기계, 순환기계, 소화기계, 비뇨기계, 내분비계질환으로 나눌 수 있으며, 최근에는 종양성 질환 등이 점차 증가하는 추세입니다.
            </p>
            <div class="row gy-5 gx-4">
              <div class="col-sm-6 wow fadeIn" data-wow-delay="0.1s">
                <div class="d-flex align-items-center mb-3 title-03">
                  <h4 class="mb-0">추가 케어 서비스</h4>
                </div>
                <span
                  >최근 반려동물의 나이가 증가하면서 각종 내과질환이 빈발하고 있습니다. 내과질환에는 코와 비강을 포함한 호흡기계, 순환기계, 소화기계, 비뇨기계, 내분비계질환으로 나눌 수 있으며, 최근에는 종양성 질환 등이 점차 증가하는 추세입니다.</span
                >
              </div>
              <div class="col-sm-6 wow fadeIn" data-wow-delay="0.2s">
                <div class="d-flex align-items-center mb-3 title-03">
                  <h4 class="mb-0">25살 이상의 의사</h4>
                </div>
                <span
                  >최근 반려동물의 나이가 증가하면서 각종 내과질환이 빈발하고 있습니다. 내과질환에는 코와 비강을 포함한 호흡기계, 순환기계, 소화기계, 비뇨기계, 내분비계질환으로 나눌 수 있으며, 최근에는 종양성 질환 등이 점차 증가하는 추세입니다.</span
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
                src="./resources/img/treat-pic01.jpg"
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
                  <h1 class="text-white">내과</h1>
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
      <div><h3>내과<span>(Internal Medicine)</span>는-</h3>
      <div id="text">
      밖으로 드러나는 질환이 아니고 신체내부의 질환이기 때문에 각종 증상에 따른 방사선 검사, 임상병리 검사, 초음파 검사, 뇨검사 등이 필수적입니다.
      	</div>
      	<div id="imgs">
     		<div id="imgs2">
     			<div id="imgs3">
     				<section id="section1">
	     				<ul id="imgs4">
	     					<li id="imgs5">
	     						<span>
	     							<img src="http://www.chungdamah.co.kr/theme/hp001/img/ng01.jpg" width="100%">
	     						</span>
	     					</li>
	     					<li id="imgs5">
	     						<span>
	     							<img src="http://www.chungdamah.co.kr/theme/hp001/img/ng02.jpg" width="100%">
	     						</span>
	     					</li>
	     					<li id="imgs5">
	     						<span>
	     							<img src="http://www.chungdamah.co.kr/theme/hp001/img/ng03.jpg" width="100%">
	     						</span>
	     					</li>
	     					<li id="imgs5">
	     						<span>
	     							<img src="http://www.chungdamah.co.kr/theme/hp001/img/ng04.jpg" width="100%">
	     						</span>
	     					</li>
	     				</ul>
     				</section>
     			</div>
     		</div>
      </div>
     </div> 	
      
      <br>
      <div><h3>내과 진료과목 안내</h3>
      <div id="text">
      청담우리동물병원은 특화진료과목 이외에도 각 진료과목별 전문 클리닉을 운영하고 있습니다. 청담우리의 내과 진료에 대해 자세히 알려드립니다.
      	</div><br>
      <div id="notice_box_1">
        	<table>
            		<div id="top_content1_1">
		          		<div id="thumnail_1"><h2>호흡기계 내과</h2></div>
		          			<div id="top_text1_1" class="top_text_all">
		          			코와 비강질환 및 심장과 폐의 청진, 방사선 검사, 혈액검사 등을 통해 <font class="top_text_color">급성호흡기 감염증, 만성적 기관지와 폐질환 등에 대한 치료요법</font>을 실시합니다.
              				</div>
            		</div>	
        	</table>
        	<table>
            		<div id="top_content1_1">
		          		<div id="thumnail_1"><h2>순환기 내과</h2></div>
		          			<div id="top_text1_2" class="top_text_all">
		          			심장사상충증 등의 진단과 치료, 만성적 심장질환을 가진 노령견에 대한 최신 약물요법을 실시하고 있으며, <font class="top_text_color">특히 심장질환의 경우 점진적인 활력감소, 운동감소 외에 만성적인 기침과 호흡곤란증, 식욕저하, 전신발작 및 마비와 실신증상, 복부팽대증, 호기시와 흡기기의 잡음, 혀의 청색증 등</font>을 보이는 경우 의심할 수 있습니다.
              				</div>
            		</div>	
        	</table>
        	<table>
            		<div id="top_content1_1">
		          		<div id="thumnail_1"><h2>소화기계 내과</h2></div>
		          			<div id="top_text1_3" class="top_text_all">
		          			<font class="top_text_color">강, 식도, 위, 소장 대장질환을 포함</font>하여, 소화효소분비와 복부장기에 속하는 간과 췌장, 담도관련 질환의 검진을 위해 초음파검사, 임상병리 혈액검사, 방사선 검사가 이루어지며, 질병의 정도와 급만성의 경과에 따라 치료를 실시하고 있습니다.
              				</div>
            		</div>	
        	</table>
        	<table>
            		<div id="top_content1_1">
		          		<div id="thumnail_1"><h2>비뇨기계 내과</h2></div>
		          			<div id="top_text1_4" class="top_text_all">
		          			암수의 여부에 따라 비뇨생식기계 질환이 다양하게 나타나고 있습니다. 각종 특발성환경이나 약물, 스트레스, 감염 등에 의한 <font class="top_text_color">급만성 신장질환</font>(신부전, 사구체신염, 신결석 등)을 비롯해 <font class="top_text_color">전립선비대와 전립선염, 방광염, 방광종양, 요로결석의 질환들이 다발</font>하고 있습니다.
방사선검사, 초음파검사, 요로조영술, 신장기능조영술, 정기적인 뇨검사와 기타 검사를 통해 정확한 진단과 치료를 실시하고 있습니다. 만성신부전의 경우 정기적인 신장의 기능검사와 장기간의 관리를 위해 최신의 약물과 신장의 기능을 높여주는 한방요법을 병행치료하고 있습니다.
              				</div>
            		</div>	
        	</table>
        	<table>
            		<div id="top_content1_1">
		          		<div id="thumnail_1"><h2>기타 내과 질환</h2></div>
		          			<div id="top_text1_5" class="top_text_all">
		          			최근 증가추세인 <font class="top_text_color">유선종양</font>을 비롯해 <font class="top_text_color">피부종양 등의 특수질환</font>에 대한 적절한 치료단계와 예후판단, 보호자의 치료선택에 세포학적 진단과 임상병리검사를 진행하며, 치료에 필수적인 면역계 관련 한방치료를 병행합니다.
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