<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html> 
<html> 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="head.jsp"%>

<style type="text/css">

.treat-body {
	margin-top: 100px;
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
	padding-top: 0.7rem;
	height: 50px;
	width: 130px !important;
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
    width: 290px;
    border-bottom: 1px solid #865439;
    border-width: 5px;
    margin: 20px auto;
}
@media (min-width: 992px) {
.treat_title {
    flex: 0 0 auto;
    width: 100%;
}
}
</style>
</head>

<div class="container-xxl py-5 treat-body">
      <div class="container">
        <div class="row g-5 align-items-end mb-5">
          <div class="col-lg-6 wow fadeInUp treat_title" data-wow-delay="0.1s">
            <div class="border-start border-5 border-primary ps-4">
              <h6 class="text-body text-uppercase mb-2">Treatment Subject</h6>
              <h1 class="display-6 mb-0">
                진료과목 안내
              </h1>
            </div>
          </div>
          <!-- <div class="col-lg-6 text-lg-end wow fadeInUp" data-wow-delay="0.3s">
            <a class="btn btn-primary py-3 px-5" href="">More Services</a>
          </div> -->
        </div>
        <div class="row g-4 justify-content-center">
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="service-item bg-light overflow-hidden h-100">
              <img class="img-fluid" src="./resources/img/back01.jpg" alt="">
              <div class="service-text position-relative text-center h-100 p-4">
                <h5 class="mb-3">내과 클리닉</h5>
                <p>
                  호흡기계, 순환기계등
                </p>
                <a class="btn btn-primary small" href="./treat_detail_1.do">자세히 보기</a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
            <div class="service-item bg-light overflow-hidden h-100">
              <img class="img-fluid" src="./resources/img/back02.jpg" alt="" />
              <div class="service-text position-relative text-center h-100 p-4">
                <h5 class="mb-3">외과</h5>
                <p>
                  골관절질환, 신경계등
                </p>
                <a class="btn btn-primary small" href="./treat_detail_2.do">자세히 보기</a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
            <div class="service-item bg-light overflow-hidden h-100">
              <img class="img-fluid" src="./resources/img/back03.jpg" alt="" />
              <div class="service-text position-relative text-center h-100 p-4">
                <h5 class="mb-3">피부과</h5>
                <p>
                  귀질환, 피부질환 등
                </p>
                <a class="btn btn-primary small" href="./treat_detail_3.do">자세히 보기</a>
              </div>
            </div>
          </div>
          
          
        </div>
      </div>
	<a name="appo-04"></a>
    </div>