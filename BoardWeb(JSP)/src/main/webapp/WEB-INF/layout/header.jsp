<%@page contentType="text/html; charset=UTF-8"%>
<%@page errorPage="errors/boardError.jsp"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- lang이라는 파라미터를 통해 전달된 Locale을 추출하여 세션에 등록하고 세션에 종료될 때까지 해당 언어를 유지한다. -->
<fmt:setLocale value="${param.lang }" scope="session"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 프로그램</title>
</head>

<body>
<hr>
<a href="/">HOME</a>&nbsp;&nbsp;&nbsp;

<c:if test="${user == null }">
	<a href="insertUserView.do">회원가입</a>&nbsp;&nbsp;&nbsp;
	<a href="loginView.do">로그인</a>&nbsp;&nbsp;&nbsp;
</c:if>

<c:if test="${user != null }">
	<a href="insertBoardView.do">글등록</a>&nbsp;&nbsp;&nbsp;
	<a href="getBoardList.do">글목록</a>&nbsp;&nbsp;&nbsp;
	<a href="logout.do">로그아웃</a>&nbsp;&nbsp;&nbsp;
</c:if>
<hr>

<br><br>