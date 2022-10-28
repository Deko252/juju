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
.info-title {
	position: absolute;
	top: 5rem;
}
.facts-overlay h1 {
    font-size: 40px;
    color: transparent;
    -webkit-text-stroke: 2px var(--primary);
}
.facts-overlay h4 {
	font-size: 30px;
}
.info-icon {
	width: 50px;
	height: 50px;
	position: absolute;
	bottom: 1rem;
	right: 1rem;
	background-color: #8FC1D4;
}

</style>

</head>

<div class="container-fluid my-5 p-0">
      <div class="row g-0">
        <div class="col-xl-3 col-sm-6 wow fadeIn" data-wow-delay="0.1s">
          <div class="position-relative">
            <img class="img-fluid w-100" src="./resources/img/fact-1.jpg" alt="" />
            <div class="facts-overlay">
              <h1 class="display-1">I</h1>
              <h4 class="text-white mb-3 info-title">공지사항</h4>
              <div class="text-white">
                공지 첫번째
              </div>
              <div class="text-white">
                공지 두번째
              </div>
              <div class="text-white">
                공지 세번째
              </div>
              <a class="text-white small info-icon" href="">
            	+ 아이콘 넣기
              </a>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 wow fadeIn" data-wow-delay="0.3s">
          <div class="position-relative">
            <img class="img-fluid w-100" src="./resources/img/fact-2.jpg" alt="" />
            <div class="facts-overlay">
              <h1 class="display-1">II</h1>
              <h4 class="text-white mb-3">펫정보</h4>
              <p class="text-white">
                Aliqu diam amet diam et eos erat ipsum lorem stet lorem sit
                clita duo justo erat amet
              </p>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 wow fadeIn" data-wow-delay="0.5s">
          <div class="position-relative">
            <img class="img-fluid w-100" src="./resources/img/fact-3.jpg" alt="" />
            <div class="facts-overlay">
              <h1 class="display-1">III</h1>
              <h4 class="text-white mb-3">펫호텔</h4>
              <p class="text-white">
                Aliqu diam amet diam et eos erat ipsum lorem stet lorem sit
                clita duo justo erat amet
              </p>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 wow fadeIn" data-wow-delay="0.7s">
          <div class="position-relative">
            <img class="img-fluid w-100" src="./resources/img/fact-4.jpg" alt="" />
            <div class="facts-overlay">
              <h1 class="display-1">IV</h1>
              <h4 class="text-white mb-3">CONTACT US</h4>
              <p class="text-white">
                DogSpa
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>