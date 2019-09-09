<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<c:choose>
			<c:when test="${flag eq 1}">
				<script>
					alert('${findId_name}님의 아이디는 [${ findId }] 입니다.');
					location.href = "./login";
				</script>
			</c:when>
			<c:when test="${flag eq -1}">
				<script>
					alert('아이디가 존재하지 않습니다. 이름과 이메일을 다시 확인해주세요.');
					location.href = "./findIdPw";
				</script>
			</c:when>
		</c:choose>
	</div>
</body>
</html>