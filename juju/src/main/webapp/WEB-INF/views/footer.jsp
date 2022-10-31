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

.footer {
	color: #865439 !important;
}
.footer-wrap {
	padding-top: 40px !important;
	height: 250px;
}
.footer-content {
	display: flex;
	justify-content: space-between;
}
.footer-logo{
	width: 120px;
}
.footer-logo-img {
	width: 100%;
}
.text-white h1 {
	text-align: center;
	color: #ffffff;
}
.col-lg-3 .footer-title01 {
	font-size: 35px !important;
	padding-left: 10px;
}
.col-lg-3 .footer-title02 {
	text-align: right;
	font-size: 50px;
}
.d-flex {
	display: flex;
	justify-content: space-between;
	padding-left: 5rem;
	padding-right: 2rem;
}
.bg-dark {
	background-color: #8FC1D4 !important;
}
.footer-add {
	margin-left: 200px;
}
.footer-end {
	padding: 15px 0 !important;
	border-top: 1px solid rgba(255, 255, 255, 0.3) !important;
}
.footer-social {
	width: 50px;
	height: 50px;
	font-size: 20px;
	color: #865439;
	border-color: #865439;
}
.btn.btn-outline-primary:hover {
	color: #ffffff !important;
	background-color: #865439;
	border-color: #ffffff;
}
@media (min-width: 992px) {
	.footer-logo {
		flex: 0 0 auto;
	    width: 15% !important;
	}
	.footer-add {
	    flex: 0 0 auto;
	    width: 35% !important;
	}
	.footer-phone {
		flex: 0 0 auto;
	    width: 30% !important;
	}
}
</style>	
</head>

<div class="container-fluid bg-dark footer mt-5 pt-5 wow fadeIn" data-wow-delay="0.1s">
      <div class="container py-5 footer-wrap">
        <div class="row g-5 footer-content">
          <div class="col-lg-3 col-md-6 footer-logo">
            <div class="text-white mb-4">
              <img class="footer-logo-img" alt="" src="./resources/img/logo.png">
              <h1>JUJU</h1>
            </div>
            
          </div>
          <div class="col-lg-3 col-md-6 footer-add">
            <h3 class="text-light mb-4 footer-title01">Address</h3>
            <p>
              <i class="fa fa-map-marker-alt me-3"></i>서울특별시 OO구 OO로 OOO
            </p>
            <p><i class="fa fa-phone-alt me-3"></i>02 - 000 - 0000</p>
            <p><i class="fa fa-envelope me-3"></i>info@example.com</p>
          </div>
          <!-- <div class="col-lg-3 col-md-6">
            <h4 class="text-light mb-4">Quick Links</h4>
            <a class="btn btn-link" href="">About Us</a>
            <a class="btn btn-link" href="">Contact Us</a>
            <a class="btn btn-link" href="">Our Services</a>
            <a class="btn btn-link" href="">Terms & Condition</a>
            <a class="btn btn-link" href="">Support</a>
          </div>
          <div class="col-lg-3 col-md-6">
            <h4 class="text-light mb-4">Newsletter</h4>
            <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
            <div class="position-relative mx-auto" style="max-width: 400px">
              <input
                class="form-control bg-transparent w-100 py-3 ps-4 pe-5"
                type="text"
                placeholder="Your email"
              />
              <button
                type="button"
                class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2"
              >
                SignUp
              </button>
            </div> -->
          <div class="col-lg-3 col-md-6 footer-phone">
			<h2 class="text-light mb-4 footer-title02">02-123-4567</h2>
			
			<div class="d-flex pt-2">
              <a class="btn btn-square btn-outline-primary me-1 footer-social" href="">
              	<i class="fab fa-twitter"></i>
              </a>
              <a class="btn btn-square btn-outline-primary me-1 footer-social" href="">
              	<i class="fab fa-facebook-f"></i>
              </a>
              <a class="btn btn-square btn-outline-primary me-1 footer-social" href="">
              	<i class="fab fa-youtube"></i>
              </a>
              <a class="btn btn-square btn-outline-primary me-0 footer-social" href="">
              	<i class="fab fa-linkedin-in"></i>
              </a>
            </div>
          
     
        </div>
          </div> 
          
      </div>
      <div class="container-fluid copyright footer-end">
        <div class="container">
          <div class="row">
            <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
              &copy; <a href="#">JUJU</a>, All Right Reserved.
            </div>
            <div class="col-md-6 text-center text-md-end">
              <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
              Designed By <a href="https://htmlcodex.com">HTML Codex</a>
              <br />Distributed By:
              <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
            </div>
          </div>
        </div>
      </div>
    </div>
