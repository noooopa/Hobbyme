<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
  <div class="container">
    <a class="navbar-brand" href="#"><img src="images/HobbyMe logo.png" alt="로고" height="40"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarMenu">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarMenu">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item"><a class="nav-link text-dark" href="#">게시판</a></li>
        <li class="nav-item"><a class="nav-link text-dark" href="#">공지사항</a></li>
      </ul>
      <form class="d-flex me-3">
        <input class="form-control me-2 rounded-pill" type="search" placeholder="클래스 검색">
        <button class="btn btn-outline-success" type="submit"><i class="fa fa-search"></i></button>
      </form>
      <div class="d-flex align-items-center gap-2">
        <button class="btn btn-outline-secondary rounded-pill px-3">로그인</button>
        <button class="btn btn-success rounded-pill px-3">회원가입</button>
      </div>
    </div>
  </div>
</header>
