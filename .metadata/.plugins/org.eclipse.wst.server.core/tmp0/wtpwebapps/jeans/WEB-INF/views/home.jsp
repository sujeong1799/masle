<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>

<c:choose >
<c:when test="${ses.id eq null }">
<a href="/member/userJoin"><button>회원가입</button></a>
<a href="/member/userLogin"><button>로그인</button></a>
</c:when>
<c:otherwise>
${ses.id }님 방가룽
<a href="/member/userInfo"><button>My Page</button></a>
<a href="/member/userDel"><button>탈퇴하기</button></a>
<a href="/member/logout"><button>로그아웃</button></a>
<a href="/board/register"><button>글쓰기</button></a>
<a href="/board/list"><button>글목록</button></a>
</c:otherwise>
</c:choose>
</body>
</html>
