<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<main class="container mt-4">


  <div id="mainSlider" class="carousel slide mb-5" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="images/cook.jpg" class="d-block w-100" style="height: 400px; object-fit: cover;" alt="요리">
      </div>
      <div class="carousel-item">
        <img src="images/bat.jpg" class="d-block w-100" style="height: 400px; object-fit: cover;" alt="배드민턴">
      </div>
      <div class="carousel-item">
        <img src="images/flower.jpg" class="d-block w-100" style="height: 400px; object-fit: cover;" alt="플라워">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#mainSlider" data-bs-slide="prev">
      <span class="carousel-control-prev-icon"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#mainSlider" data-bs-slide="next">
      <span class="carousel-control-next-icon"></span>
    </button>
  </div>


  <div class="category-section mb-3">
    <a href="#" class="category-item" data-icon="candle"><span>도예</span></a>
    <a href="#" class="category-item" data-icon="flower"><span>플라워</span></a>
    <a href="#" class="category-item" data-icon="yoga"><span>운동</span></a>
    <a href="#" class="category-item" data-icon="run"><span>향수</span></a>
    <a href="#" class="category-item" data-icon="pilates"><span>필라테스</span></a>
    <a href="#" class="category-item" data-icon="craft"><span>러닝</span></a>
    <a href="#" class="category-item" data-icon="music"><span>요가</span></a>
    <a href="#" class="category-item" data-icon="sports"><span>라이딩</span></a>
  </div>

  <div class="mb-4">
            <h4 class="section-title text-center border-top pt-4">🆕 최근 등록 클래스</h4>
        </div>
        <div class="row g-4">
            <div class="col-md-4">
                <div class="card h-100 d-flex flex-column">
                    <img src="images/cook.jpg" class="card-img-top" alt="요리">
                    <div class="card-body d-flex flex-column">
                        <h5 class="card-title">요리 클래스</h5>
                        <p class="card-text">건강한 집밥 만들기</p>
                        <div class="mt-auto text-muted"><i class="fa fa-calendar"></i> 2025.05.06</div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card h-100 d-flex flex-column">
                    <img src="images/flower.jpg" class="card-img-top" alt="플라워">
                    <div class="card-body d-flex flex-column">
                        <h5 class="card-title">플라워 클래스</h5>
                        <p class="card-text">감성 꽃꽂이 체험</p>
                        <div class="mt-auto text-muted"><i class="fa fa-calendar"></i> 2025.05.05</div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card h-100 d-flex flex-column">
                    <img src="images/bat.jpg" class="card-img-top" alt="운동">
                    <div class="card-body d-flex flex-column">
                        <h5 class="card-title">배드민턴 교실</h5>
                        <p class="card-text">가볍게 땀 흘리는 취미</p>
                        <div class="mt-auto text-muted"><i class="fa fa-calendar"></i> 2025.05.03</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="mb-4 mt-5">
            <h4 class="section-title text-center border-top pt-4">🔥 인기 클래스</h4>
        </div>

        <div class="row g-4">
            <div class="col-md-4">
                <div class="card h-100 d-flex flex-column">
                    <img src="images/candle.jpg" class="card-img-top" alt="캔들">
                    <div class="card-body d-flex flex-column">
                        <h5 class="card-title">캔들 클래스</h5>
                        <p class="card-text">향기로운 캔들을 만들어요</p>
                        <div class="mt-auto text-muted"><i class="fa fa-eye"></i> 1,234회</div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card h-100 d-flex flex-column">
                    <img src="images/flower.jpg" class="card-img-top" alt="플라워">
                    <div class="card-body d-flex flex-column">
                        <h5 class="card-title">플라워 클래스</h5>
                        <p class="card-text">감성 꽃꽂이 체험</p>
                        <div class="mt-auto text-muted"><i class="fa fa-eye"></i> 2,321회</div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card h-100 d-flex flex-column">
                    <img src="images/bat.jpg" class="card-img-top" alt="배드민턴">
                    <div class="card-body d-flex flex-column">
                        <h5 class="card-title">배드민턴 교실</h5>
                        <p class="card-text">가볍게 땀 흘리는 취미</p>
                        <div class="mt-auto text-muted"><i class="fa fa-eye"></i> 987회</div>
                    </div>
                </div>
            </div>
        </div>

</main>
