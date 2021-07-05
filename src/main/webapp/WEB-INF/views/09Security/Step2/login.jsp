<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/bootstrap.css" />
<script src="../resources/jquery/jquery-3.6.0.js"></script>
<title>Insert title here</title>
</head>
<body> 
<div class="container">

	<h2>스프링 시큐리티 Step2</h2>
	
	<h3>로그인 화면</h3>
	
	<h4>누구나 권한없이 접근가능</h4>
	
	<c:choose>
		<c:when test="${not empty user_id }">
			${user_id }님, 하이룽
			<form:form mothod="post"
				action="${pageContext.request.contextPath }/
					security2/logout">
				<input type="submit" value="로그아웃" />
			</form:form>
		</c:when>
		<c:otherwise>
			<!-- 
				security-context.xml에서 login-processing-url을 설정한
				경우 동일한 값으로 action 속성을 설정해야 한다.
			 -->
			<c:url value="/loginAction" var="loginUrl" />
			<form:form name="loginFrm" action="${loginUrl }"
				method="post">
				<c:if test="${param.error != null }">
					<p>아이디와 패스워드가 잘못되었습니다.</p>
				</c:if>
				<c:if test="${param.login != null }">
					<p>로그아웃 되었습니다.</p>
				</c:if>
				
				<p>
					아이디 : <input type="text" name="id"
						value="kosmo_" />
				</p>
				<p>
					패스워드 : <input type="password" name="pass" />
				</p>
				<button type="submit" class="btn btn-danger">
					로그인하기
				</button>
				</form:form>
		</c:otherwise>
	</c:choose>
</div>
</body>
</html>