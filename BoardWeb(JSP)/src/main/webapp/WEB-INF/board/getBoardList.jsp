<%@page contentType="text/html; charset=UTF-8"%>

<%@include file="../layout/header.jsp" %>

<fmt:bundle basename="messages.messageSource">

<center>
<!-- 검색 시작 -->
<form action="getBoardList.do" method="get">
<table border="1" cellpadding="0" cellspacing="0" width="800">
	<tr>
		<td align="right">
			<select name="condition">
				<option value="title"<c:if test="${condition == 'title'}">selected</c:if>><fmt:message key="board.list.condition.title"/>
				<option value="content"<c:if test="${condition == 'content'}">selected</c:if>><fmt:message key="board.list.condition.content"/>
			</select>
			<input name="keyword" type="text" value="${keyword }"/>
			<input type="submit" value="검색"/>
		</td>
	</tr>
</form>
<!-- 검색 종료 -->

<table border="1" cellpadding="0" cellspacing="0" width="800">
	<tr>
		<th bgcolor="orange" width="100"><fmt:message key="board.list.head.seq"/></th>
		<th bgcolor="orange" width="400"><fmt:message key="board.list.head.title"/></th>
		<th bgcolor="orange" width="100"><fmt:message key="board.list.head.writer"/></th>
		<th bgcolor="orange" width="100"><fmt:message key="board.list.head.regDate"/></th>
		<th bgcolor="orange" width="100"><fmt:message key="board.list.head.cnt"/></th>
	</tr>
	<c:forEach var="board" items="${boardList }">
	<tr>
		<td>${board.seq }</td>		
		<td><a href="getBoard.do?seq=${board.seq }">${board.title }</a></td>
		<td>${board.writer }</td>
		<td>${board.regDate }</td>
		<td>${board.cnt }</td>
	</tr>
	</c:forEach>
</table>
<a href="getBoardList.do?lang=en"><fmt:message key="user.login.language.en"/></a>&nbsp;&nbsp;&nbsp;
<a href="getBoardList.do?lang=ko"><fmt:message key="user.login.language.ko"/></a>
</center>
</fmt:bundle>
<%@include file="../layout/footer.jsp" %>



