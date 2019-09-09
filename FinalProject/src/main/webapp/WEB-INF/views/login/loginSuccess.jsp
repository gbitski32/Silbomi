<%@page import="com.team.silbomi.DAO.LoginDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${flag eq 0 }">
		<script>
			alert('${MSG}');
			location.href="/silbomi/main";
		</script>
	</c:when>
	<c:when test="${flag eq 1}">
		<script>
			alert('${MSG}');
			location.href="/silbomi/login/login";
		</script>
	</c:when>
	<c:when test="${flag eq 2 }">
		<script>
			alert('${MSG}');
			location.href="/silbomi/login/login";
		</script>
	</c:when>
</c:choose>
	
</body>
</html>