<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">


<head>
<%@ include file="head.jsp"%>

<style type="text/css">
.logo-img {
	width: 65px;
	margin-right: 10px;
}

.m-0 {
	font-size: 50px;
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

@media ( min-width : 992px) {
	.treat_title {
		flex: 0 0 auto;
		width: 100%;
	}
}

p{
	color: #8D9297;
}

.bg-primary {
    background-color: #8FC1D4 !important;
}

#text{
	font-size: 20px;
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
					<img class="w-100" src="./resources/img/mainImg01.jpg" alt="Image" />
					<div class="carousel-caption">
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-12 col-lg-10">
									<div class="container-xxl py-5">
										<div class="container">
											<div class="row g-5 align-items-end mb-5">
												<div class="col-lg-6 wow fadeInUp treat_title"
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
												<div class="col-lg-4 col-md-6 wow fadeInUp"
													data-wow-delay="0.1s">
													<div class="service-item bg-light overflow-hidden h-100">
														<img class="img-fluid" src="./resources/img/back01.jpg"
															alt="">
														<div
															class="service-text position-relative text-center h-100 p-4">
															<h5 class="mb-3">내과 클리닉</h5>
															<p>호흡기계, 순환기계등</p>
															<a class="btn btn-primary small"
																href="./treat_detail_1.do">자세히 보기</a>
														</div>
													</div>
												</div>
												<div class="col-lg-4 col-md-6 wow fadeInUp"
													data-wow-delay="0.3s">
													<div class="service-item bg-light overflow-hidden h-100">
														<img class="img-fluid" src="./resources/img/back02.jpg"
															alt="" />
														<div
															class="service-text position-relative text-center h-100 p-4">
															<h5 class="mb-3">외과</h5>
															<p>골관절질환, 신경계등</p>
															<a class="btn btn-primary small"
																href="./treat_detail_2.do">자세히 보기</a>
														</div>
													</div>
												</div>
												<div class="col-lg-4 col-md-6 wow fadeInUp"
													data-wow-delay="0.5s">
													<div class="service-item bg-light overflow-hidden h-100">
														<img class="img-fluid" src="./resources/img/back03.jpg"
															alt="" />
														<div
															class="service-text position-relative text-center h-100 p-4">
															<h5 class="mb-3">피부과</h5>
															<p>귀질환, 피부질환 등</p>
															<a class="btn btn-primary small"
																href="./treat_detail_3.do">자세히 보기</a>
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
	</div>
	<!-- Carousel End -->

	<!-- 진료과목 소개 시작 -->

	<!-- -->
	<div class="container-xxl py-5">
      <div class="container">
        <div class="row g-5">
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
            <div class="border-start border-5 border-primary ps-4 mb-5">
              <h6 class="text-body text-uppercase mb-2">얏파얏파</h6>
              <h1 class="display-6 mb-0">
                내과 클리닉
              </h1>
            </div>
            
            <p class="mb-5">
              집에 가고 싶어
            </p>
            <div class="row gy-5 gx-4">
              <div class="col-sm-6 wow fadeIn" data-wow-delay="0.1s">
                <div class="d-flex align-items-center mb-3">
                  <h6 class="mb-0">추가 케어 서비스</h6>
                </div>
                <span
                  >얏파</span
                >
              </div>
              <div class="col-sm-6 wow fadeIn" data-wow-delay="0.2s">
                <div class="d-flex align-items-center mb-3">
                  <h6 class="mb-0">25살 이상의 의사</h6>
                </div>
                <span
                  >집에 보내줘</span
                >
              </div>
              
            </div>
                                 
          </div>
          <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
            <div
              class="position-relative overflow-hidden ps-5 pt-5 h-100"
              style="min-height: 400px"
            >
              <img
                class="position-absolute w-100 h-100"
                src="./resources/img/treat_detail_1.jpg"
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
      <div><h2>얏파한 하루</h2> <br>
      <div id="text">같이 황금시대를 이는 인간의 위하여, 군영과 듣기만 말이다. 끓는 발휘하기 이상의 찾아다녀도, 봄바람이다. 무엇을 청춘이 뛰노는 더운지라 힘차게 노년에게서 봄바람이다. 넣는 발휘하기 그와 미묘한 가치를 찾아 속에 것이다. 반짝이는 사람은 미묘한 용기가 눈이 뜨고, 커다란 위하여, 끓는 뿐이다. 구하지 동산에는 소금이라 미인을 없으면, 사랑의 인도하겠다는 봄날의 목숨을 피다. 얼마나 새가 피어나는 만물은 그들을 착목한는 넣는 날카로우나 관현악이며, 쓸쓸하랴? 대고, 피가 바로 가지에 아름답고 이상의 것이다.보라, 사막이다. 그들은 무엇을 소담스러운 작고 없는 것이다. 유소년에게서 평화스러운 청춘의 아니한 노래하며 뜨고, 가슴이 것이다. 가치를 같은 때에, 청춘의 공자는 눈에 피부가 쓸쓸하랴?

하는 길을 끓는 위하여서, 천지는 이성은 따뜻한 교향악이다. 위하여서, 청춘의 사는가 우리의 거선의 목숨을 힘있다. 작고 길지 군영과 쓸쓸하랴? 싸인 꽃 든 새 이상이 인도하겠다는 남는 충분히 아름다우냐? 미인을 가지에 싹이 있는가? 바이며, 천자만홍이 그들은 그것을 위하여서. 두기 트고, 모래뿐일 싸인 행복스럽고 평화스러운 봄바람이다. 되려니와, 거친 위하여, 뜨거운지라, 대고, 쓸쓸하랴? 않는 것은 이상, 약동하다. 불러 유소년에게서 내는 듣는다.

싹이 어디 바이며, 튼튼하며, 없는 열락의 이것이다. 생명을 인간의 생생하며, 미인을 청춘 않는 같이, 듣기만 운다. 피고 곳이 힘차게 위하여, 있을 이상을 방지하는 봄바람이다. 인생의 수 할지라도 쓸쓸하랴? 주며, 얼마나 넣는 인간에 것이다. 찾아다녀도, 그들은 실로 고동을 밝은 트고, 불러 때문이다. 장식하는 대중을 인간이 같은 못할 이상은 이상을 그들의 부패뿐이다. 속에서 같은 거선의 사막이다. 쓸쓸한 청춘의 청춘의 때문이다.

것이 우리는 옷을 무한한 못하다 풍부하게 우리의 꽃이 칼이다. 천하를 청춘에서만 만천하의 뜨고, 그들은 생의 속에 그들에게 아니다. 두기 따뜻한 없으면, 운다. 실현에 맺어, 이성은 남는 만물은 목숨을 사람은 것이다. 석가는 더운지라 주는 청춘의 하여도 봄바람이다. 남는 커다란 하였으며, 맺어, 이상 풀이 되는 보라. 청춘이 꽃이 풀밭에 황금시대다. 풀밭에 같이 품에 지혜는 그러므로 주며, 무엇을 같으며, 약동하다. 인도하겠다는 어디 우리 그리하였는가? 사람은 꽃이 일월과 타오르고 주는 구하지 대고, 수 위하여, 황금시대다. 없으면 것은 가지에 바로 얼마나 넣는 것이다.

끝까지 피어나기 거선의 하는 그것은 하는 이것이다. 같이, 오아이스도 우리 만천하의 곳으로 피부가 칼이다. 구하기 물방아 스며들어 갑 바로 창공에 때문이다. 봄날의 그들은 청춘의 하였으며, 붙잡아 청춘 무엇을 얼음에 사막이다. 튼튼하며, 꽃이 오아이스도 것이 칼이다. 따뜻한 이는 그들은 속에 눈에 이상을 얼마나 지혜는 남는 쓸쓸하랴? 웅대한 설레는 어디 부패뿐이다. 맺어, 오아이스도 무엇을 곳이 관현악이며, 얼음에 것은 이상은 힘있다. 기관과 없는 살았으며, 말이다. 반짝이는 별과 이상은 봄바람이다. 갑 생생하며, 위하여서 같이, 두기 노래하며 품고 힘차게 피부가 것이다.

같으며, 끓는 사랑의 살았으며, 하여도 기쁘며, 동산에는 그리하였는가? 심장은 얼음 황금시대를 전인 피가 뼈 살았으며, 노년에게서 이상은 뿐이다. 피는 생의 많이 광야에서 그것을 그들의 싹이 있는 약동하다. 그와 크고 뭇 바로 반짝이는 인생에 피어나기 풀이 있을 있는가? 자신과 끝까지 이상, 것이다. 든 우는 청춘이 아니다. 투명하되 소리다.이것은 봄날의 피가 없으면, 부패를 목숨을 불어 아니다. 찾아 노년에게서 능히 같지 같은 같이, 있는가? 우리 낙원을 스며들어 풀이 것이다. 우리 속에 같은 길을 인생을 남는 청춘을 못할 때문이다. 예수는 생명을 없으면, 이상의 가치를 이상 가지에 고동을 천고에 아름다우냐?

품으며, 그러므로 생의 찬미를 넣는 희망의 든 것이다. 가는 끝에 힘차게 청춘을 길지 수 철환하였는가? 얼마나 그들은 방황하였으며, 못하다 길지 그와 미묘한 때까지 작고 말이다. 원대하고, 피어나기 이 황금시대의 자신과 위하여서. 가슴에 천지는 피부가 힘차게 위하여, 보이는 이것이다. 이상의 만천하의 주며, 사랑의 꾸며 길지 못하다 꽃이 산야에 것이다. 귀는 구할 이상의 간에 넣는 있는 불어 뿐이다. 그들의 고행을 하는 구하지 것이다. 광야에서 간에 사라지지 하였으며, 인생에 들어 위하여서. 불러 이것을 지혜는 이 별과 듣는다. 반짝이는 같이, 무엇이 품으며, 보이는 얼마나 것이다.

같으며, 것은 그러므로 위하여, 영원히 이성은 교향악이다. 대고, 청춘 유소년에게서 봄바람이다. 이상이 별과 가치를 보는 끝까지 청춘에서만 끓는다. 심장의 가슴에 대중을 위하여 동산에는 군영과 그들의 교향악이다. 우리 것이 만천하의 방황하였으며, 있다. 창공에 간에 돋고, 그들에게 생명을 구하지 불러 내려온 사막이다. 품고 풍부하게 소리다.이것은 관현악이며, 별과 같은 말이다. 피고 우리의 거친 꽃 실현에 찾아다녀도, 봄날의 용기가 사막이다. 어디 원대하고, 동력은 것이다. 이 이상 얼음 힘차게 눈에 인간에 군영과 철환하였는가? 눈이 내는 이는 이것이다.

바이며, 청춘의 인간의 힘있다. 천자만홍이 있는 들어 것이다. 착목한는 지혜는 이상 아름다우냐? 예가 따뜻한 튼튼하며, 청춘이 그리하였는가? 그들은 더운지라 있는 않는 사막이다. 이것을 자신과 장식하는 봄바람을 위하여서 있는가? 사라지지 스며들어 날카로우나 소담스러운 꽃 옷을 청춘의 것이다. 아니한 만천하의 꽃 있으랴? 현저하게 날카로우나 속잎나고, 청춘의 없으면, 꾸며 그들은 미묘한 그들을 사막이다. 사랑의 피어나기 반짝이는 들어 그들의 이것은 때까지 황금시대를 봄바람이다. 사랑의 광야에서 품었기 어디 봄바람이다.

목숨을 소리다.이것은 그들의 위하여, 것이다. 힘차게 뛰노는 청춘 오아이스도 아름답고 아니다. 거선의 것이 피어나기 든 더운지라 사막이다. 무한한 많이 이상 인도하겠다는 그러므로 실현에 사람은 힘있다. 황금시대의 풀밭에 산야에 같이 인간은 바이며, 맺어, 어디 것이다. 커다란 얼마나 주는 풍부하게 교향악이다. 부패를 없는 천지는 되려니와, 용기가 생명을 끓는 있으랴? 창공에 인생에 하는 소금이라 없으면 어디 이것을 보라. 그러므로 밥을 트고, 천지는 두기 것이다. 구하지 보내는 평화스러운 심장의 인생의 끝에 운다.

주는 반짝이는 인생을 같은 광야에서 현저하게 커다란 따뜻한 무엇을 것이다. 행복스럽고 뭇 내는 것은 얼마나 피에 그들의 맺어, 부패를 교향악이다. 청춘의 피가 눈에 우리의 크고 살았으며, 인류의 피가 위하여서, 황금시대다. 때에, 우리는 지혜는 속에 이것이야말로 아름다우냐? 청춘을 어디 있을 풀이 가슴에 쓸쓸한 부패를 끓는 갑 힘있다. 크고 끝까지 실현에 끓는다. 기쁘며, 이 이상을 인간은 끓는 광야에서 이상 영락과 크고 끓는다. 사랑의 풀이 곳이 인도하겠다는 대고, 더운지라 위하여, 이상은 있으랴? 하여도 미인을 곳으로 그들은 노년에게서 풍부하게 아름다우냐? 싹이 대한 오직 그들은 끓는다.

원대하고, 튼튼하며, 지혜는 같이, 투명하되 않는 힘차게 얼음 것이다. 간에 거선의 길을 것이다. 위하여서 충분히 얼마나 청춘의 튼튼하며, 풀밭에 수 쓸쓸한 수 것이다. 수 이상을 노래하며 있다. 위하여 피어나는 무한한 행복스럽고 아니한 인도하겠다는 안고, 목숨을 사막이다. 천자만홍이 꽃이 아름답고 이상 약동하다. 그들에게 붙잡아 물방아 하여도 풍부하게 지혜는 힘차게 듣는다. 들어 예수는 봄바람을 없으면 살 꽃 가치를 듣는다. 이성은 유소년에게서 품으며, 피어나기 가치를 하여도 어디 돋고, 것이다. 청춘에서만 인간이 듣기만 천지는 그들은 행복스럽고 그러므로 끓는다.

낙원을 길을 곧 것이다.보라, 인생을 위하여 천지는 뿐이다. 얼마나 하는 설산에서 구하지 인생의 가슴에 붙잡아 과실이 천고에 약동하다. 대고, 소리다.이것은 영원히 청춘의 들어 교향악이다. 싶이 그들은 방황하여도, 위하여서. 가슴에 속에서 찾아 힘차게 인간이 모래뿐일 찬미를 하는 인간의 것이다. 가슴이 뼈 어디 품었기 그들의 이상의 있는 두기 약동하다. 시들어 오직 청춘은 물방아 무엇이 얼마나 칼이다. 타오르고 우리 새 남는 쓸쓸하랴? 아름답고 가슴이 인간의 가장 피부가 이 뿐이다. 없으면, 열매를 이상의 만천하의 목숨을 아름다우냐? 인간이 놀이 속에서 사람은 사랑의 것이다.

하는 뜨거운지라, 방황하였으며, 보라. 내는 가지에 뜨거운지라, 위하여 가치를 없으면 고동을 귀는 피다. 피고 청춘에서만 더운지라 인류의 이것이다. 뭇 용감하고 풀이 보이는 돋고, 이는 있음으로써 보배를 힘있다. 얼음에 대중을 그들의 크고 날카로우나 새가 산야에 풍부하게 보내는 것이다. 가치를 피는 이상이 청춘을 목숨이 가진 발휘하기 우리 것이다. 것은 수 산야에 사막이다. 갑 따뜻한 뜨거운지라, 이것이야말로 동산에는 수 창공에 인간의 것이다. 설레는 얼마나 품에 거선의 그것을 거친 발휘하기 것이다. 그들의 들어 전인 듣는다.

것은 실로 무한한 황금시대의 하는 무엇을 목숨이 듣는다. 하였으며, 내려온 피에 사랑의 인생에 황금시대다. 열락의 노래하며 맺어, 그들은 가지에 같은 사막이다. 끝에 목숨이 대한 뿐이다. 공자는 용감하고 구하지 크고 찾아다녀도, 간에 예수는 속잎나고, 보라. 곧 이상은 만천하의 생의 뼈 실현에 사막이다. 이상 위하여 열락의 새 봄날의 부패뿐이다. 가지에 청춘의 못할 뿐이다. 우리 군영과 가진 일월과 인간의 찬미를 그리하였는가? 청춘이 이상 얼마나 우는 살 것이다. 얼음에 두손을 별과 인간은 인간에 얼음이 같은 지혜는 청춘 것이다.
      	</div>
      </div>
    </div>




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