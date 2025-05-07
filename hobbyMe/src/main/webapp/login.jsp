<%@ page language="java"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" href="./css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
<title>Login</title>
</head>
<style>
html, body {
  height: 100%;
  margin: 0;
}

body {
  display: flex;
  flex-direction: column;
}

.main-container {
  flex: 1;
}

</style>
<body>
   <%@ include file="/WEB-INF/view/common/header.jsp" %>
   <div class="main-container container py-4">
      <div class="row align-items-md-stretch   text-center">
      	 <h1 class="display-5 fw-bold">로그인</h1>
         <div class="row justify-content-center align-items-center ">
            <div class="h-100 p-5 col-md-6">
               <%
               String error = request.getParameter("error");
               if (error != null) {
                  out.println("<div class='alert alert-danger'>");
                  out.println("아이디와 비밀번호를 확인해 주세요");
                  out.println("</div>");
               }
               %>
               <form class="form-signin" action="./login.do" method="post">
				<!-- Tomcat 컨테이너가 처리하는 로그인 서블릿 -->
                  <div class="form-floating  mb-3 row">
                     <input type="text" class="form-control" name='id' id="floatingInput"
                        required autofocus> <label for="floatingInput">ID</label>
                  </div>
                  <div class="form-floating  mb-3 row">
                     <input type="password" class="form-control" name='password'>
                     <label for="floatingPassword">Password</label>
                  </div>

				  <div class="d-flex justify-content-between">
				     <a href="<%=request.getContextPath()%>/findId.jsp" class="btn btn-link px-0">아이디 찾기</a>
				     <a href="<%=request.getContextPath()%>/signup.jsp" class="btn btn-link px-0">회원가입</a>
				  </div>
                  <button class="btn btn-lg btn-success" type="submit">로그인</button>
               </form>
            </div>
         </div>
      </div>
   </div>
   <%@ include file="/WEB-INF/view/common/footer.jsp" %>
</body>

</html>