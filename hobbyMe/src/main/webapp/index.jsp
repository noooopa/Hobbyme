<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>hobbyMe</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <%@ include file="header.jsp"%>
  
  <%@ include file="mainSlider.jsp"%>

  <div class="container mb-5">
    <h2 class="mb-4 fw-bold text-dark">인기 콘텐츠</h2>
    <div class="row g-4">

      <div class="col-md-4">
        <div class="h-100 p-4 border shadow-sm">
          <h5 class="text-dark" style="font-size: 18px; font-weight: bold;">DIY 공예</h5>
          <p>손으로 만드는 재미가 있는 취미</p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="h-100 p-4 border shadow-sm">
          <h5 class="text-dark" style="font-size: 18px; font-weight: bold;">요리 클래스</h5>
          <p>집에서 셰프처럼 요리하기</p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="h-100 p-4 border shadow-sm">
          <h5 class="text-dark" style="font-size: 18px; font-weight: bold;">사진 촬영</h5>
          <p>사진으로 일상을 예술로</p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="h-100 p-4 border shadow-sm">
          <h5 class="text-dark" style="font-size: 18px; font-weight: bold;">플라워 클래스</h5>
          <p>향기로운 꽃과 함께하는 힐링 시간</p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="h-100 p-4 border shadow-sm">
          <h5 class="text-dark" style="font-size: 18px; font-weight: bold">캘리그래피</h5>
          <p>감성을 담은 글씨 연습</p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="h-100 p-4 border shadow-sm">
          <h5 class="text-dark" style="font-size: 18px; font-weight: bold;">드로잉 클래스</h5>
          <p>기초부터 일러스트까지</p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="h-100 p-4 border shadow-sm">
          <h5 class="text-dark" style="font-size: 18px; font-weight: bold;">패션 디자인</h5>
          <p>나만의 스타일을 만들어 보세요</p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="h-100 p-4 border shadow-sm">
          <h5 class="text-dark" style="font-size: 18px; font-weight: bold;">피트니스</h5>
          <p>건강을 위한 운동 클래스</p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="h-100 p-4 border shadow-sm">
          <h5 class="text-dark" style="font-size: 18px; font-weight: bold;">영상 편집</h5>
          <p>크리에이티브한 영상 만들기</p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="h-100 p-4 border shadow-sm">
          <h5 class="text-dark" style="font-size: 18px; font-weight: bold;">요가 클래스</h5>
          <p>마음과 몸의 균형을 맞추기 위한 요가</p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="h-100 p-4 border shadow-sm">
          <h5 class="text-dark" style="font-size: 18px; font-weight: bold;">모델링</h5>
          <p>3D 모델링의 세계로</p>
        </div>
      </div>

      <div class="col-md-4">
        <div class="h-100 p-4 border shadow-sm">
          <h5 class="text-dark" style="font-size: 18px; font-weight: bold;">가드닝</h5>
          <p>자연과 함께하는 정원 가꾸기</p>
        </div>
      </div>

    </div>
  </div>
  <%@ include file="footer.jsp"%>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
