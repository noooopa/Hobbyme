<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
  String msg = request.getParameter("msg");
  if ("1".equals(msg)) {
%>
    <h3>회원가입이 완료되었습니다.</h3>
    <a href="login.jsp">로그인하러 가기</a>
<%
  } else if ("2".equals(msg)) {
%>
    <h3>로그인에 성공했습니다.</h3>
<%
  }
%>
