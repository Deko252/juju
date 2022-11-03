<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   

<head>

<style>

.display-1 {
	position: absolute;
	top: 1rem;
	-webkit-text-stroke: 2px #8FC1D4 !important;
}
.info-title-wrap {
	position: absolute;
	top: 3.5rem;
	left: 2.5rem;
}
.info-title-wrap h1 {
    font-size: 40px;
    color: transparent;
    -webkit-text-stroke: 2px var(--primary);
}
.info-title-wrap h4 {
	font-size: 35px;
}
.info-icon {
	width: 50px;
}
.info-content {
	padding-top: 70px;
}
.info-content > .info-detail {
	height: 40px;
	padding-left: 20px;
	padding-top:7px;
	background-color: rgba(0, 0, 0, 0.4);
	margin-bottom: 50px;
	color: #C68B59 !important; 
	transition: all 0.15s ease-in-out;
	
}
.facts-overlay > .info-content .info-detail:hover {
	background-color: rgba(255, 255, 255, 0.5);
}
.facts-overlay > .info-content .info-detail:hover .info-font {
	color: #000000 !important;
}
.facts-overlay > .info-content .info-font{
	color: #ffffff !important;
}
.facts-overlay > .info-content .info-font:hover {
	color: #000000 !important;
}
.info-button {
	width: 50px;
	height: 50px;
	position: absolute;
	bottom: 1rem;
	right: 1rem;
	background-color: #8FC1D4;
	font-size: 30px;
	padding-top: 0;
	padding-left: 14px;
	transition: all 0.15s ease-in-out;
}
.facts-overlay {
	padding: 40px;
}
.facts-overlay > .info-button:hover {
	background-color: rgba(255, 255, 255, 0.5);
	color: #000000 !important;	
}
.info-plus {
	width: 30px;
}
.contact-us {
}
.contact-phone {
	text-align: center;
	color: #8FC1D4;
	font-size: 60px;
	font-weight: bold;	
}
.contact-add {
	color: #ffffff;
	text-align: center;
}


</style>

</head>

<div class="container-fluid my-5 p-0">
      <div class="row g-0">
        <div class="col-xl-3 col-sm-6 wow fadeIn" data-wow-delay="0.1s">
          <div class="position-relative">
            <img class="img-fluid w-100" src="./resources/img/juju_board.jpg" alt="" />
            <div class="facts-overlay">
              <!-- <h1 class="display-1">I</h1> -->
              <div class="info-title-wrap">
	              <img class="info-icon" src="./resources/img/info-notice.png" alt="" />
	              <h4 class="text-white mb-3 info-title">공지사항</h4>
              </div>
              <div class="info-content">
              <c:forEach items="${in_no }" var="n">
              	  <div class="info-detail">
		              <a class="info-font" href="./notice_detail.do?bno=${n.board_no }">${n.board_title }</a><br>
              	  </div>
				</c:forEach>
              </div>
              <a class="text-white small info-button" href="./notice.do">+</a>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 wow fadeIn" data-wow-delay="0.3s">
          <div class="position-relative">
            <img class="img-fluid w-100" src="./resources/img/info01.jpg" alt="" />
            <div class="facts-overlay">
              <!-- <h1 class="display-1">II</h1> -->
              <div class="info-title-wrap">
	              <img class="info-icon" src="./resources/img/info-info.png" alt=""/>
	              <h4 class="text-white mb-3">펫정보</h4>
	          </div>                  
              <div class="info-content">
              	  <div class="info-detail">
		              <a class="info-font" href="./petinfo.do?cate=1">강아지</a><br>
              	  </div>
              	  <div class="info-detail">
		              <a class="info-font" href="./petinfo.do?cate=2">고양이</a><br>
              	  </div>
              	  <div class="info-detail">
		              <a class="info-font" href="./petinfo.do?cate=3">특수 동물</a><br>
              	  </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 wow fadeIn" data-wow-delay="0.5s">
          <div class="position-relative">
            <img class="img-fluid w-100" src="./resources/img/juju_hotel.png" alt="" />
            <div class="facts-overlay">
              <!-- <h1 class="display-1">III</h1> -->
			  <div class="info-title-wrap">              
	              <img class="info-icon" src="./resources/img/info-hotel.png" alt="" />
	              <h4 class="text-white mb-3">펫호텔</h4>
	          </div>    
              <div class="info-content">
              	  <div class="info-detail">
		              <a class="info-font" href="https://www.facebook.com/petgroundhbc">펫그라운드_해방촌</a><br>
              	  </div>
              	  <div class="info-detail">
		              <a class="info-font" href="https://www.barkleycleveland.com/">멍클리 펫 호텔</a><br>
              	  </div>
              	  <div class="info-detail">
		              <a class="info-font" href="https://thepethotel.fr/">더 펫 호텔</a><br>
              	  </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 wow fadeIn" data-wow-delay="0.7s">
          <div class="position-relative">
            <img class="img-fluid w-100" src="./resources/img/juju_map.png" alt="" />
            <div class="facts-overlay">
              <!-- <h1 class="display-1">IV</h1> -->
              <div class="info-title-wrap">
	              <img class="info-icon" src="./resources/img/info-contact.png" alt="" />
	              <h4 class="text-white mb-3">CONTACT US</h4>
	          </div>    
              <p class="text-white contact-us">
                <div class="contact-phone">02.123.4567</div>
	              <div class="contact-add">주주동물병원 365일 24시간 연중무휴<br>남극 사우스셰틀랜드 제도의 킹 조지 섬 바톤 반도 62.223 S, 58.787 W</div>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>