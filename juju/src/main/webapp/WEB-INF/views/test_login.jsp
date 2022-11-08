<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    

<head>

<style type="text/css">
.modal-content {
	border-radius: 5px !important;
	text-align: center;
}
.login-modal-body {
	padding: 1rem 2rem 1.5rem !important;
}
.index-loginBtn {
	background-color: #C68B59 !important;
	border-color: #C68B59 !important;
	border-radius: 5px !important;
	padding-top: 0.5rem !important;
	padding-right: 2rem !important;
	padding-left: 2rem !important;
    height: 50px !important;
    font-size: 18px !important;
    width: auto;
}
.index-loginBtn:hover {
	background-color: #8FC1D4 !important;
	border-color: #8FC1D4 !important;
}
</style>


</head>


<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel"></h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body login-modal-body">
	        <div class="input-form col-md-12 mx-auto">
	        <h2 class="mb-3">로그인</h2>
	        <form action="./admin_login.do" method="post" class="validation-form" novalidate >
	          <div class="row">
	            <div class="col-md-6 mb-3">
	              <label for="name">아이디</label>
	              <input type="text" class="form-control" id="name" name="id" placeholder="" value="" required>
	              <div class="invalid-feedback">
	                아이디를 입력해주세요.
	              </div>
	            </div>
	            <div class="col-md-6 mb-3">
	              <label for="nickname">비밀번호</label>
	              <input type="password" class="form-control" id="nickname" name="pw" placeholder="" value="" required >
	              <div class="invalid-feedback">
	                비밀번호를 입력해주세요.
	              </div>
	            </div>
	          </div>
	          <div class="mb-4"></div>       
	          <button id="login" class="btn btn-primary btn-lg btn-block index-loginBtn" type="submit">로그인</button>
	        </form>
	      </div>
	      </div>
	    </div>
	  </div>
	</div>