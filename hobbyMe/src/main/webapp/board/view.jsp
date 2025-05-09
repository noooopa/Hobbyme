<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="mvc.model.BoardDTO"%>

<%
BoardDTO board = (BoardDTO) request.getAttribute("board");
if (board == null) {
	response.sendRedirect("errorPage.jsp");
	return;
}
request.setAttribute("pageNum", request.getParameter("pageNum"));
%>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Board</title>
</head>
<body>
	<div class="container py-4">

		<jsp:include page="../main.jsp" />

		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold">게시판</h1>
				<p class="col-md-8 fs-4">Board</p>
			</div>
		</div>

		<div class="row align-items-md-stretch text-center">
			<form name="newUpdate"
				action="BoardUpdateAction.do?post_num=${board.post_num}&pageNum=${pageNum}"
				method="post">

				<!-- 아이디 -->
				<div class="mb-3 row">
					<label class="col-sm-2 control-label">아이디</label>
					<div class="col-sm-3">
						<input name="user_id" class="form-control"
							value="${board.user_id}" readonly>
					</div>
				</div>

				<!-- 제목 -->
				<div class="mb-3 row">
					<label class="col-sm-2 control-label">제목</label>
					<div class="col-sm-5">
						<input name="title" class="form-control" value="${board.title}">
					</div>
				</div>

				<!-- 내용 -->
				<div class="mb-3 row">
					<label class="col-sm-2 control-label">내용</label>
					<div class="col-sm-8" style="word-break: break-all;">
						<textarea name="content" class="form-control" cols="50" rows="5">${board.content}</textarea>
					</div>
				</div>

				<!-- 카테고리 -->
				<div class="mb-3 row">
					<label class="col-sm-2 control-label">카테고리</label>
					<div class="col-sm-3">
						<input name="category" class="form-control"
							value="${board.category}">
					</div>
				</div>

				<!-- 태그 -->
				<div class="mb-3 row">
					<label class="col-sm-2 control-label">태그</label>
					<div class="col-sm-5">
						<input name="tag" class="form-control" value="${board.tag}">
					</div>
				</div>

				<!-- 예약일 -->
				<div class="mb-3 row">
					<label class="col-sm-2 control-label">예약일</label>
					<div class="col-sm-4">
						<input type="date" name="reservation_date" class="form-control"
							value="${board.reservation_date}">
					</div>
				</div>
				<!-- 모임종료일 -->
				<div class="mb-3 row">
					<label class="col-sm-2 control-label">모임종료일</label>
					<div class="col-sm-4">
						<input type="date" name="end_date" class="form-control"
							value="${board.end_date}">
					</div>
				</div>
				<!-- 위치 -->
				<div class="mb-3 row">
					<label class="col-sm-2 control-label">위치</label>
					<div class="col-sm-6">
						<input name="location" class="form-control"
							value="${board.location}">
					</div>
				</div>

				<!-- 인원 -->
				<div class="mb-3 row">
					<label class="col-sm-2 control-label">인원</label>
					<div class="col-sm-2">
						<input name="people" type="number" class="form-control"
							value="${board.people}">
					</div>
				</div>

				<!-- 가격 -->
				<div class="mb-3 row">
					<label class="col-sm-2 control-label">가격</label>
					<div class="col-sm-3">
						<input name="price" type="number" class="form-control"
							value="${board.price}">
					</div>
				</div>

				<!-- 썸네일 -->
				<div class="mb-3 row">
					<label class="col-sm-2 control-label">썸네일</label>
					<div class="col-sm-5">
						<input name="thumbnail" class="form-control"
							value="${board.thumbnail}">
					</div>
				</div>

				<!-- 이미지 -->
				<div class="mb-3 row">
					<label class="col-sm-2 control-label">이미지</label>
					<div class="col-sm-8">
						<input name="images" class="form-control" value="${board.images}">
					</div>
				</div>

				<!-- 삭제 여부 -->
				<div class="mb-3 row">
					<label class="col-sm-2 control-label">삭제 여부</label>
					<div class="col-sm-2">
						<input name="deleted" class="form-control"
							value="${board.deleted}">
					</div>
				</div>

				<!-- 버튼 영역 -->
				<div class="mb-3 row">
					<div class="col-sm-offset-2 col-sm-10">
						<a
							href="./BoardDeleteAction.do?post_num=${board.post_num}&pageNum=${pageNum}"
							class="btn btn-danger">삭제</a> <input type="submit"
							class="btn btn-success" value="수정"> <a
							href="./BoardListAction.do?pageNum=${pageNum}"
							class="btn btn-primary">목록</a>
					</div>
				</div>

			</form>
		</div>

		<jsp:include page="../footer.jsp" />
	</div>
</body>
</html>
