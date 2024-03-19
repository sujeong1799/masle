<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

아이디 : ${ses.id }
이메일 : ${ses.email }
이름 : ${ses.name }
생일 : ${ses.birth }
가입날짜 : ${ses.regDate }

<a href="/member/userEdit"><button>정보수정</button></a>

</body>
</html>