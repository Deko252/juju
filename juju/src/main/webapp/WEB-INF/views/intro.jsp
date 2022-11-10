<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<title>병원 소개</title>
<link rel="icon" type="image/png" sizes="32x32" href="./resources/img/favicon.png">
<%@ include file="head.jsp"%>


<style type="text/css">
.ntr {
   height: 400px;;
   width: 100%;;
   position:absolute !important;
   z-index: -1;
}

#hos {
   font-size: 40px;
}

#clin {
   font-size: 30px;
}

div.pic {
   width: 900px;
}

img.famliy {
   width: 900px;
   margin-left: 500px;
}

.hop p {
   font-size: 40px;
   text-align: center;
}

.in p {
   font-size: 40px;
   text-align: center;
}

div.title2 {
   width: 703px;
   margin-left: 600px;
}

.title2 {
   background-size: 900px;
   padding-right: 50px;
   text-align: center;
   font-size: 30px;
   margin: 60px;
   background-color: green;
}

.title2 span {
   font-weight: bold;
}

img.famliy2 {
   width: 900px;
   margin-left: 500px;
}

.sr_tit2 {
   margin: 0 auto;
   padding: 100px;
   margin-left: 200px;
   margin-right: 200px;
}

.sr_tit2 p.desc {
   font-size: 18px;
   line-height: 1.7;
   margin-bottom: 30px;
   word-break: keep-all;
   text-align: left;
}

.sr_graph4 {
   position: relative;
   width: 100%;
   background: #f8f8f8;
   padding: 55px 100px;
}

.sr_graph4 ul {
   font-size: 0px;
}

ul {
   list-style-type: none;
   margin: 0;
   padding: 0;
   text-align: center;
   display: block;
   list-style-type: none;
   margin-block-start: 1em;
   margin-block-end: 1em;
   margin-inline-start: 0px;
   margin-inline-end: 0px;
   padding-inline-start: 40px;
   vertical-align: middle;
}

.sr_graph4 ul li span {
   width: 174px;
   height: 100%;
   display: block;
   margin: auto;
   font-size: 18px;
   vertical-align: middle;
   padding-top: 55px;
}

.sr_graph4 ul li span.on1 {
   width: 120px;
   font-size: 50px;
}

.sr_graph4 ul li span.on {
   background: #2355c4;
   color: #fff;
   border: solid 5px #2355c4;
   height: 150px;
   top: 5rem;
}

.sr_graph4 ul li {
   text-align: center;
   display: inline-block;
   margin: 5px;
}

.sr_graph4 ul li span.addpd {
   padding-top: 55px;
   /* padding-top: 68px; */
}

.oo {
   position: absolute;
   padding: 30px;
   width: 100%;
   height: 100%;
   top: 0;
   left: 0;
   display: flex;
   flex-direction: column;
   justify-content: center;
   background: rgba(0, 0, 0, .5);
}

.aa {
   /* position: relative; */
   /* vertical-align: middle ; */
   height: auto;
   width: 100%;
   display: flex;
}

.bb {
   margin: 0 auto;
   text-align: center;
   height: auto;
   padding-bottom: 100px;
}

.cc {
   float: left;
   width: 300px;
   margin: 0 10px;
}

.pp {
   width: 300px;
   height: 200px;
   border-radius: 30px;
}

.picci {
   font-size: 20px;
}

.picci p {
   font-weight: bold;
}

.dismb-0{
color: #ffffff;
    text-shadow: 0px 0px 10px black;
}
.mmmm{
color: #8FC1D4 !important;
    text-shadow: 0px 0px 10px black;
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

.intro_title01{
   margin-bottom: 0 !important;
}
.intro_title02{
   margin-top: 100px !important;
}



</style>



</head>



<body>
   <%@ include file="header.jsp"%>

   
                     <div class="intro">
   <img class="ntr" alt="quuu" src="./resources/img/ani01.jpg" style="background: center center no-repeat;">
               <div class="container">
                     <div class="row justify-content-center">
                        <div class="col-12 col-lg-10">
                           <div class="container-xxl py-5">
                              <div class="container container2">
                                 <div class="row g-5 align-items-end mb-5 intro_title01">
                                    <div class="col-lg-6 wow fadeInUp treat_title title1" data-wow-delay="0.1s">
                                       <div class="border-start border-5 border-primary ps-4 intro_title02">
                                          <h6 class="text-body text-uppercase mb-2 mmmm" >
                                             Hospital introduction
                                          </h6>
                                          <h1 class="dismb-0">병원 소개</h1>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="row g-4 justify-content-center">
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  </div>

   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>

   <div class="hop">
      <p>
         클리닉 절차<span id="clin"> <br>Clinic Procedure
         </span>
      </p>

   </div>
   <section class="pdb70">
      <!-- 컨텐츠타이틀 및 내용 2단 -->
      <div class="sr_tit2">
         <h1>
            <span class="bnum pt">01</span>
            <p>One Stop Total Clinic</p>
         </h1>
         <p class="desc">
            JUJU동물병원은 우수한 의료진과 전문스탭, 편리한 시설, 최신 의료장비 등을 갖춰 보호자분들께서 병원을 방문하셨을때
            필요로하시는 모든 과정을 병원 내에서 편안하게 진행하실 수 있도록 one-stop total clinic 서비스를 제공하고
            있습니다.<br>
            <br>
         </p>
      </div>
      <!-- // 컨텐츠타이틀 및 내용 2단 -->
      <!-- 컨텐츠내용 4단 그래프 -->
      <div class="sr_graph4">
         <ul>
            <li><span class="on">진료 건강검진</span></li>
            <li class="onnn"><span class="on1">→</span></li>
            <li><span class="on">미용</span></li>
            <li class="onnn"><span class="on1">→</span></li>
            <li><span class="on">놀이방 호텔</span></li>
            <li class="onnn"><span class="on1">→</span></li>
            <li><span class="on">VIP상담</span></li>
         </ul>

      </div>
      <!-- // 컨텐츠내용 4단 그래프 -->
   </section>
   <section class="pdb70">
      <!-- 컨텐츠타이틀 및 내용 2단 -->
      <div class="sr_tit2">
         <h1>
            <span class="bnum pt">02</span>
            <p>JUJU 동물병원은 필요로 하는 모든 프리미엄 서비스를 한곳에서 편하게 누리실 수 있는 맞춤형 공간입니다.</p>
         </h1>
         <p class="desc">
            <font class="f_blue f_b">1. 진료 서비스</font> : 예기치못한 질병 발병, 사고 등에 대비해
            저희 JUJU 동물병원은 365일 24시간 연중무휴로 전문의료진이 항상 함께하고있습니다.<br /> <font
               class="f_blue f_b">2. 건강검진 서비스</font> : 질병의 조기발견과 반려동물 가족들의 건강하고
            행복한 삶을 위한 맞춤형 건강검진 프로그램을 진행하고 있습니다 <br /> <font class="f_blue f_b">3.
               미용 서비스</font> : 모든 견종에 대한 목욕, 스파, 위생미용, 가위컷 등을 자격을 갖춘 미용전문선생님들께서 진행해주시고
            계십니다(미용은 예약제로 당일방문 미용이 어려울 수 있어 예약 후 방문을 권해드리고 있습니다)<br /> <font
               class="f_blue f_b">4. 놀이방 서비스</font> : 에너지와 활력이 넘치는 아이들, 친구를 너무
            좋아하는 우리 아이들에게 체계적인 시간표를 통한 놀이케어프로그램을 함께하고 있습니다.<br /> <font
               class="f_blue f_b">5. 호텔 서비스</font> : 우리 소중한 아이들이 안전하게 머무를 수 있도록
            24시간 전문의료진과 호텔케어전담 선생님들께서 아이들과 함께하고 있습니다.<br /> <font
               class="f_blue f_b">6. VIP상담실 운영</font> : 소중한 우리 아이의 맞춤 케어를 위한 전문적이고
            체계적인 프로그램을 VIP상담을 통해 제안해드리고 있습니다.<br>
            <br>
         </p>
      </div>


   </section>















   <div class="in">
      <p>반려동물들을 위한 진료, 미용, 호텔, VIP room service</p>
   </div>


   <div class="aa">
      <div class="bb">
         <div class="wow fadeInUp cc" data-wow-delay="0.1s">
            <div class="posi">
               <img class="pp" src="./resources/img/jin.png" alt="" />
               <div class="picci">
                  <p>병원 진료</p>
               </div>
               <div class="facts"></div>
            </div>
         </div>
         <div class="wow fadeInUp cc" data-wow-delay="0.3s">
            <div class="posi">
               <img class="pp" src="./resources/img/hair.jpg" alt="" />
               <div class="picci">
                  <p>애견 미용</p>
               </div>
               <div class="facts"></div>
            </div>
         </div>
         <div class="wow fadeInUp cc" data-wow-delay="0.5s">
            <div class="posi">
               <img class="pp" src="./resources/img/hotel.jpg" alt="" />
               <div class="picci">
                  <p>애견 호텔</p>
               </div>
               <div class="facts"></div>
            </div>
         </div>

         <div class="wow fadeInUp cc" data-wow-delay="0.7s">
            <div class="posi">
               <img class="pp" src="./resources/img/VIP-ROOM.jpg" alt="" />
               <div class="picci">
                  <p>VIP-LOUNGE</p>
               </div>
               <div class="facts"></div>
            </div>
         </div>

      </div>
   </div>









   <%@ include file="footer.jsp"%>

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