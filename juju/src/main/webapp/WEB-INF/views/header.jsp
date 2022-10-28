<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav
      class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5 py-lg-0"
    >
      <a href="./index.do" class="navbar-brand d-flex align-items-center">
          <img class="logo-img" src="./resources/img/logo.png" alt="JUJU">
        <h1 class="m-0">
        	JUJU
        </h1>
      </a>
      <button
        type="button"
        class="navbar-toggler"
        data-bs-toggle="collapse"
        data-bs-target="#navbarCollapse"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto py-3 py-lg-0">
          <a href="./index.do" class="nav-item nav-link active">홈으로</a>
          <a href="./intro.do" class="nav-item nav-link">병원소개</a>
          <div class="nav-item dropdown">
            <a
              href="#"
              class="nav-link dropdown-toggle"
              data-bs-toggle="dropdown"
              >진료과목</a
            >
            <div class="dropdown-menu bg-light m-0">
              <a href="./treat_detail_1.do" class="dropdown-item">내과</a>
              <a href="./treat_detail_2.do" class="dropdown-item">외과</a>
              <a href="./treat_detail_3.do" class="dropdown-item">피부과</a>
            </div>
          </div> 
          <a href="./appo.do" class="nav-item nav-link">진료예약</a>
          <a href="./petinfo.do" class="nav-item nav-link">펫정보</a>
          <a href="./notice.do" class="nav-item nav-link">공지사항</a>
          <a href="./admin_login.do" class="nav-item nav-link">로그인</a>
        </div>
      </div>
    </nav>
</body>
</html>