<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String name = (String) request.getAttribute("name");
%>
<html>
<head>
  <link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
  <title>게시글 작성</title>
  <script type="text/javascript">
    function checkForm() {
      if (!document.newWrite.user_id.value) {
        alert("작성자 ID를 입력하세요.");
        return false;
      }
      if (!document.newWrite.title.value) {
        alert("제목을 입력하세요.");
        return false;
      }
      if (!document.newWrite.content.value) {
        alert("내용을 입력하세요.");
        return false;
      }
      return true;
    }
  </script>
</head>
<body>
  <div class="container py-4">
    <jsp:include page="../main.jsp" />

    <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">게시판 글쓰기</h1>
      </div>
    </div>

    <form name="newWrite" action="BoardWriteAction.do" method="post" onsubmit="return checkForm()">
      <!-- 사용자 ID 직접 입력 -->
      <div class="mb-3 row">
        <label class="col-sm-2 control-label">작성자 ID</label>
        <div class="col-sm-3">
          <input name="user_id" type="text" class="form-control" placeholder="작성자 ID를 입력하세요" required>
        </div>
      </div>

      <!-- 제목 -->
      <div class="mb-3 row">
        <label class="col-sm-2 control-label">제목</label>
        <div class="col-sm-5">
          <input name="title" type="text" class="form-control" placeholder="제목을 입력하세요">
        </div>
      </div>

      <!-- 내용 -->
      <div class="mb-3 row">
        <label class="col-sm-2 control-label">내용</label>
        <div class="col-sm-8">
          <textarea name="content" class="form-control" rows="5" placeholder="내용을 입력하세요"></textarea>
        </div>
      </div>

      <!-- 카테고리 -->
      <div class="mb-3 row">
        <label class="col-sm-2 control-label">카테고리</label>
        <div class="col-sm-3">
          <input name="category" class="form-control" placeholder="예: 모임, 스터디 등">
        </div>
      </div>

      <!-- 태그 -->
      <div class="mb-3 row">
        <label class="col-sm-2 control-label">태그</label>
        <div class="col-sm-5">
          <input name="tag" class="form-control" placeholder="#태그">
        </div>
      </div>

      <!-- 예약일 -->
      <div class="mb-3 row">
        <label class="col-sm-2 control-label">예약일</label>
        <div class="col-sm-4">
          <input type="date" name="reservation_date" class="form-control">
        </div>
      </div>

      <!-- 모임종료일 -->
      <div class="mb-3 row">
        <label class="col-sm-2 control-label">모임종료일</label>
        <div class="col-sm-4">
          <input type="date" name="end_date" class="form-control">
        </div>
      </div>

      <!-- 위치 -->
      <div class="mb-3 row">
        <label class="col-sm-2 control-label">위치</label>
        <div class="col-sm-6">
          <input name="location" class="form-control">
        </div>
      </div>

      <!-- 인원 -->
      <div class="mb-3 row">
        <label class="col-sm-2 control-label">인원</label>
        <div class="col-sm-2">
          <input name="people" type="number" class="form-control">
        </div>
      </div>

      <!-- 가격 -->
      <div class="mb-3 row">
        <label class="col-sm-2 control-label">가격</label>
        <div class="col-sm-3">
          <input name="price" type="number" class="form-control">
        </div>
      </div>

      <!-- 썸네일 -->
      <div class="mb-3 row">
        <label class="col-sm-2 control-label">썸네일</label>
        <div class="col-sm-5">
          <input name="thumbnail" class="form-control" placeholder="썸네일 이미지 URL">
        </div>
      </div>

      <!-- 이미지 -->
      <div class="mb-3 row">
        <label class="col-sm-2 control-label">이미지</label>
        <div class="col-sm-8">
          <input name="images" class="form-control" placeholder="이미지 URL (쉼표로 구분)">
        </div>
      </div>

      <!-- 버튼 -->
      <div class="mb-3 row">
        <div class="col-sm-offset-2 col-sm-10">
          <input type="submit" class="btn btn-success" value="등록">
          <input type="reset" class="btn btn-secondary" value="취소">
        </div>
      </div>
    </form>

    <jsp:include page="../footer.jsp" />
  </div>
</body>
</html>
