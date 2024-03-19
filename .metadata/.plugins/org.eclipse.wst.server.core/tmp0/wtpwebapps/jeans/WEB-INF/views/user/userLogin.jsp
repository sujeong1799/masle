<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- UserController login으로 정보를 보내줌.  -->
<form action="/member/login" method="post">
	
	<input type="text" name="id" id="id" placeholder="아이디"><br>
	<input type="password" name="pw" id="pw" placeholder="비밀번호"><br>
	<button type="submit">로그인</button>
</form>

</body>
</html>