<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
  #mainCarousel img {
    height: 400px;
    object-fit: cover;
  }
</style>
<body>
	<div class="container mb-5 mt-4">
	  	<h2 class="mb-4 fw-bold text-dark">추천 콘텐츠</h2>
		<!-- Carousel 슬라이드 -->
		<div id="mainCarousel" class="carousel slide mb-5" data-bs-ride="carousel">
			<!-- 인디케이터 -->
			<div class="carousel-indicators">
			  <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
			  <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
			  <button type="button" data-bs-target="#mainCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			
			<!-- 이미지 항목 -->
			<div class="carousel-inner">
			  <div class="carousel-item active">
			    <img src="./resources/img/dog1.png" class="d-block w-100" alt="Slide 1">
			  </div>
			  <div class="carousel-item">
			    <img src="./resources/img/dog2.png" class="d-block w-100" alt="Slide 2">
			  </div>
			  <div class="carousel-item">
			    <img src="./resources/img/dog3.jpg" class="d-block w-100" alt="Slide 3">
			  </div>
			</div>
			
			<!-- 버튼 -->
			<button class="carousel-control-prev" type="button" data-bs-target="#mainCarousel" data-bs-slide="prev">
			  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			  <span class="visually-hidden">이전</span>
			</button>
			<button class="carousel-control-next" type="button" data-bs-target="#mainCarousel" data-bs-slide="next">
			  <span class="carousel-control-next-icon" aria-hidden="true"></span>
			  <span class="visually-hidden">다음</span>
			</button>
		</div>
	</div>
</body>
</html>