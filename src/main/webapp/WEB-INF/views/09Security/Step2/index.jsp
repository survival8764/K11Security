<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/bootstrap.css" />
<script src="../resources/jquery/jquery-3.6.0.js"></script>
<title>Insert title here</title>
</head>
<body> 
	<div clas="container">
	
		<h2>스프링 시큐리티 Step2</h2>
		
		<h3>로그인 화면 커스텀으로 구현하기</h3>
		
		<h4>필요권한 : USER or ADMIN 중 하나가 필요</h4>
		
		<h4>
			사용자 아이디 : ${user_id }
		</h4>
		
		<form:form method="post"
			action="${pageContext.request.contextPath }/
				security2/logout">
			<input type="submit" value="로그아웃" />
		</form:form> 
		
		<jsp:include page="/resources/common_link.jsp"/>
	</div>
</body>
</html>