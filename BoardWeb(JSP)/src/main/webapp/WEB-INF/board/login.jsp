<%@page contentType="text/html; charset=UTF-8"%>

<%@include file="../layout/header.jsp" %>

<fmt:bundle basename="messages.messageSource">

<center>
<form action="login.do" method="post">
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<td bgcolor="orange"><fmt:message key="user.login.id"/></td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td bgcolor="orange"><fmt:message key="user.login.password"/></td>
			<td><input type="password" name="password"/></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="<fmt:message key="user.login.login_btn"/>"/>
			</td>
		</tr>
	</table>
</form>	
<a href="loginView.do?lang=en"><fmt:message key="user.login.language.en"/></a>&nbsp;&nbsp;&nbsp;
<a href="loginView.do?lang=ko"><fmt:message key="user.login.language.ko"/></a>
</center>
</fmt:bundle>

<%@include file="../layout/footer.jsp" %>






