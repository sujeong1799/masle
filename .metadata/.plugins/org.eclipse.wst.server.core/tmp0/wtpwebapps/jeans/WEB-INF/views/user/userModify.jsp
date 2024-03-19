<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/member/userModify" method="post">
아이디 : <input type="text" name="id" id="id" value=${ses.id } readonly="readonly"><br>
비밀번호 : <input type="text" name="pw" id="pw" placeholder="수정 할 비밀번호를 입력해주세요." >
이메일 : <input type="text" name="email" id="email" value=${ses.email } placeholder="이메일 입력">
이름 : <input type="text" name="name" id="name" value=${ses.name } readonly="readonly">
생일 : <input type="text" name="birth" id="birth" value=${ses.birth } readonly="readonly">
가입날짜 : <input type="text" name="regDate" id="regDate" value=${ses.regDate } readonly="readonly">

<button type="submit">수정하기</button>
</form>

</body>
</html>