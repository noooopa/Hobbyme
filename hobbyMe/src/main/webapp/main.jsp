<main class="container mt-4">
    <div id="mainSlider" class="carousel slide mb-3" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/slider_1.png" class="d-block w-100" style="height: 400px; object-fit: cover;" alt="요리">
            </div>
            <div class="carousel-item">
                <img src="images/slider_2.png" class="d-block w-100" style="height: 400px; object-fit: cover;" alt="배드민턴">
            </div>
            <div class="carousel-item">
                <img src="images/slider_3.png" class="d-block w-100" style="height: 400px; object-fit: cover;" alt="플라워">
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
        <a href="#" class="category-item" data-icon="outdoor"><span>아웃도어</span></a>
        <a href="#" class="category-item" data-icon="fitness"><span>피트니스</span></a>
        <a href="#" class="category-item" data-icon="sports"><span>스포츠</span></a>
        <a href="#" class="category-item" data-icon="cooking"><span>요리</span></a>
        <a href="#" class="category-item" data-icon="culture"><span>문화예술</span></a>
        <a href="#" class="category-item" data-icon="meeting"><span>모임</span></a>
        <a href="#" class="category-item" data-icon="self"><span>자기계발</span></a>
        <a href="#" class="category-item" data-icon="etc"><span>기타</span></a>
    </div>

    <div class="mb-4">
        <h4 class="section-title text-center border-top pt-4">요즘 인기 클래스</h4>
    </div>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
        <div class="col">
            <div class="card h-100" data-bs-toggle="modal" data-bs-target="#modalCandle">
                <img src="images/card_can.jpg" class="card-img-top" alt="캔들 클래스">
                <div class="card-body d-flex flex-column">
                    <h5 class="card-title">캔들 클래스</h5>
                    <p class="card-text">향기로운 캔들을 만들어요</p>
                    <div class="mt-auto text-muted"><i class="fa fa-eye"></i> 1,234회</div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100" data-bs-toggle="modal" data-bs-target="#modalCook">
                <img src="images/card_cook.jpg" class="card-img-top" alt="요리 클래스">
                <div class="card-body d-flex flex-column">
                    <h5 class="card-title">요리 클래스</h5>
                    <p class="card-text">건강한 집밥 만들기</p>
                    <div class="mt-auto text-muted"><i class="fa fa-eye"></i> 2,840회</div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100" data-bs-toggle="modal" data-bs-target="#modalBat">
                <img src="images/card_min.jpg" class="card-img-top" alt="배드민턴 교실">
                <div class="card-body d-flex flex-column">
                    <h5 class="card-title">배드민턴 교실</h5>
                    <p class="card-text">가볍게 땀 흘리는 취미</p>
                    <div class="mt-auto text-muted"><i class="fa fa-eye"></i> 3,020회</div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100" data-bs-toggle="modal" data-bs-target="#modalRun">
                <img src="images/card_run.jpg" class="card-img-top" alt="러닝 클래스">
                <div class="card-body d-flex flex-column">
                    <h5 class="card-title">러닝 클래스</h5>
                    <p class="card-text">도심 속 함께 달리기</p>
                    <div class="mt-auto text-muted"><i class="fa fa-eye"></i> 1,912회</div>
                </div>
            </div>
        </div>
    </div>

    <div class="mb-4">
        <h4 class="section-title text-center border-top pt-4">최근 등록 클래스</h4>
    </div>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
        <div class="col">
            <div class="card h-100" data-bs-toggle="modal" data-bs-target="#modalPilates">
                <img src="images/card_pil.jpg" class="card-img-top" alt="필라테스 클래스">
                <div class="card-body d-flex flex-column">
                    <h5 class="card-title">필라테스 클래스</h5>
                    <p class="card-text">유연하고 건강한 몸 만들기</p>
                    <div class="mt-auto text-muted"><i class="fa fa-eye"></i> 2,100회</div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100" data-bs-toggle="modal" data-bs-target="#modalDo">
                <img src="images/card_do.jpg" class="card-img-top" alt="도예 클래스">
                <div class="card-body d-flex flex-column">
                    <h5 class="card-title">도예 클래스</h5>
                    <p class="card-text">손으로 빚는 감성 도자기</p>
                    <div class="mt-auto text-muted"><i class="fa fa-eye"></i> 1,100회</div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100" data-bs-toggle="modal" data-bs-target="#modalTravel">
                <img src="images/card_tr.jpg" class="card-img-top" alt="여행 토크살롱">
                <div class="card-body d-flex flex-column">
                    <h5 class="card-title">여행 토크살롱</h5>
                    <p class="card-text">혼자보다 함께 떠나는 이야기</p>
                    <div class="mt-auto text-muted"><i class="fa fa-eye"></i> 1,458회</div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card h-100" data-bs-toggle="modal" data-bs-target="#modalBike">
                <img src="images/card_moto.jpg" class="card-img-top" alt="바이크 클래스">
                <div class="card-body d-flex flex-column">
                    <h5 class="card-title">바이크 클래스</h5>
                    <p class="card-text">바람을 가르는 자유</p>
                    <div class="mt-auto text-muted"><i class="fa fa-eye"></i> 980회</div>
                </div>
            </div>
        </div>
    </div>

    <div class="w-100">
        <img src="images/banner_1.jpg" alt="공지 배너" class="img-fluid" style="max-height: 180px; margin-top: 15px; object-fit: cover;">
    </div>

<!-- 캔들 클래스 모달 -->
    <div class="modal fade" id="modalCandle" tabindex="-1" aria-labelledby="modalCandleLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalCandleLabel">캔들 클래스</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <img src="images/card_can.jpg" class="img-fluid rounded mb-3" alt="캔들 클래스">
                    <p><strong>설명:</strong> 소이왁스를 활용해 나만의 감성 캔들을 제작하는 힐링 클래스입니다.</p>
                    <p><strong>일정:</strong> 매주 토요일 14:00~16:00</p>
                    <p><strong>장소:</strong> 서울 마포구</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-outline-success">신청하기</button>
                    <button class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
<!-- 요리 클래스 모달 -->
    <div class="modal fade" id="modalCook" tabindex="-1" aria-labelledby="modalCookLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalCookLabel">요리 클래스</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <img src="images/card_cook.jpg" class="img-fluid rounded mb-3" alt="요리 클래스">
                    <p><strong>설명:</strong> 한식과 양식을 아우르는 집밥 클래스! 식단 관리까지 고려한 레시피를 배워봐요.</p>
                    <p><strong>일정:</strong> 매주 수요일 11:00~13:00</p>
                    <p><strong>장소:</strong> 서울 강남구</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-outline-success">신청하기</button>
                    <button class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
<!-- 배드민턴 교실 모달 -->
    <div class="modal fade" id="modalBat" tabindex="-1" aria-labelledby="modalBatLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalBatLabel">배드민턴 교실</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <img src="images/card_min.jpg" class="img-fluid rounded mb-3" alt="배드민턴 교실">
                    <p><strong>설명:</strong> 초보자도 OK! 라켓 잡는 법부터 실전 스매싱까지 단계별로 배워보는 클래스.</p>
                    <p><strong>일정:</strong> 매주 화요일 19:00~21:00</p>
                    <p><strong>장소:</strong> 서울 노원구 체육관</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-outline-success">신청하기</button>
                    <button class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
<!-- 러닝 클래스 모달 -->
    <div class="modal fade" id="modalRun" tabindex="-1" aria-labelledby="modalRunLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalRunLabel">러닝 클래스</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <img src="images/card_run.jpg" class="img-fluid rounded mb-3" alt="러닝 클래스">
                    <p><strong>설명:</strong> 혼자 뛰기 지루한 사람 모여라! 야경 러닝부터 조깅 테크닉까지 함께합니다.</p>
                    <p><strong>일정:</strong> 매주 목요일 20:00~21:30</p>
                    <p><strong>장소:</strong> 서울 반포 한강공원</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-outline-success">신청하기</button>
                    <button class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
<!-- 필라테스 클래스 모달 -->
    <div class="modal fade" id="modalPilates" tabindex="-1" aria-labelledby="modalPilatesLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalPilatesLabel">필라테스 클래스</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <img src="images/card_pil.jpg" class="img-fluid rounded mb-3" alt="필라테스 클래스">
                    <p><strong>설명:</strong> 체형 교정과 코어 강화에 초점을 맞춘 기초 필라테스 그룹 클래스입니다.</p>
                    <p><strong>일정:</strong> 월/수 오전 10:00</p>
                    <p><strong>장소:</strong> 서울 송파구</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-outline-success">신청하기</button>
                    <button class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
<!-- 도예 클래스 모달 -->
    <div class="modal fade" id="modalDo" tabindex="-1" aria-labelledby="modalDoLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalDoLabel">도예 클래스</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <img src="images/card_do.jpg" class="img-fluid rounded mb-3" alt="도예 클래스">
                    <p><strong>설명:</strong> 물레와 핸드빌딩으로 직접 빚어보는 나만의 그릇! 색칠까지 마무리.</p>
                    <p><strong>일정:</strong> 격주 일요일 13:00~17:00</p>
                    <p><strong>장소:</strong> 경기도 고양시</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-outline-success">신청하기</button>
                    <button class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
<!-- 여행 토크살롱 모달 -->
    <div class="modal fade" id="modalTravel" tabindex="-1" aria-labelledby="modalTravelLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalTravelLabel">여행 토크살롱</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <img src="images/card_tr.jpg" class="img-fluid rounded mb-3" alt="여행 토크살롱">
                    <p><strong>설명:</strong> 각자의 여행 경험을 나누고 소규모 테마 여행을 함께 기획해보는 모임입니다.</p>
                    <p><strong>일정:</strong> 매달 첫째주 토요일 16:00~18:00</p>
                    <p><strong>장소:</strong> 서울 연남동</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-outline-success">신청하기</button>
                    <button class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
<!-- 바이크 클래스 모달 -->
    <div class="modal fade" id="modalBike" tabindex="-1" aria-labelledby="modalBikeLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalBikeLabel">바이크 클래스</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <img src="images/card_moto.jpg" class="img-fluid rounded mb-3" alt="바이크 클래스">
                    <p><strong>설명:</strong> 입문자를 위한 바이크 안전 수칙과 코스 라이딩을 함께 배우는 클래스.</p>
                    <p><strong>일정:</strong> 격주 토요일 10:00~13:00</p>
                    <p><strong>장소:</strong> 경기 남양주</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-outline-success">신청하기</button>
                    <button class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
</main>