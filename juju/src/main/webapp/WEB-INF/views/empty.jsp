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
.wow > .py-5 {
	margin-top: 3.5rem;
}
.empty-title {
	text-align: center;
}
.empty-title > .border-start {
	margin-bottom: 1rem !important;
}
.border-start > .text-uppercase {
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
	height: 500px;
}
.empty-title {
	text-align: center;
}
}
</style>

</head>
<body>

<div
      class="container-fluid appointment my-5 py-5 wow fadeIn"
      data-wow-delay="0.1s"
    >
      <div class="container py-5">
        <div class="row g-5">
          <div class="col-lg-5 col-md-6 wow fadeIn empty-title" data-wow-delay="0.3s">
            <div class="border-start border-5 border-primary ps-4 mb-5 empty-border">
              <h6 class="text-white text-uppercase mb-2">JUJU Animal Hospital</h6>
              <h3 class="display-6 text-white mb-0">
                특별함이 가득한 곳 여기는 주주동물병원 입니다
              </h3>
            </div>
            <p class="text-white mb-0">
              고품격 진료와 고객감동 서비스로 모든 반려동물과 보호자의 행복을 함께하는 주주동물병원<br>
              앞으로도 대한민국 반려동물 의료문화의 선두에 서서 최선을 다해 헌신하겠습니다.
            </p>
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


</body>
</html>