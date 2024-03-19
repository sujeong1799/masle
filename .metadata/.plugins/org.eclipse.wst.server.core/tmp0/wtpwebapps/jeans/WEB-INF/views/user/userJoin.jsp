<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/member/signUp" method="post">

<input type="text" name="id" id="id" placeholder="아이디를 입력해주세요."><br>
<!-- 컨트롤러로 값 보낼때는 name -->
<input type="password" name = "pw" id = "pw" placeholder="비밀번호를 입력해주세요."><br>
<input type="text" name = "name" id = "name" placeholder="이름을 입력해주세요."><br>
<input type="text" name = "email" id = "email" placeholder="이메일을 입력해주세요."><br>
<input type="text" name ="birth" name="birth" placeholder="생년월일을 입력해주세요."><br>
<!-- regDate는 자동으로 만들어지니까 보낼필요 없읍니다. -->

<button type="submit">등록</button>

</form>

</body>
</html>