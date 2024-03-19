<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h1 align="center">글 목록 리스트</h1><br>
	
	<c:if test="${ph.pgvo.type != null && ph.pgvo.keyword != null }">
	<h3 align="center">${ph.pgvo.keyword  }에 대한 검색 결과 입니다.</h3>
	</c:if>
	<br>
	<table class="table table-striped">

		<thead>
			<tr align="center">
				<th>글번호</th>
				<th>글제목</th>
				<th>글쓴이</th>
				<th>글작성시간</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="bvo">
				<tr align="center">
					<td>${bvo.bno }</td>
					<td><a href="/board/detail?bno=${bvo.bno }">${bvo.title }</a></td>
					<td>${bvo.writer }</td>
					<td>${bvo.regDate }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<!-- 검색라인 -->
	<form action="/board/list" method="get">

		<div>
			<c:set value="${ph.pgvo.type }" var="type"></c:set>
			<select name="type">
				<!-- selected : 현재 내가 선택한 값 -->

				<option ${type == null ? 'selected' : '' }>선택</option>
				<option value="t" ${type eq 't' ? 'selected' : '' }>제목</option>
				<!-- 내가 t를 선택하면 value값이 넘어가는 거임.. ? -->
				<option value="w" ${type eq 'w' ? 'selected' : '' }>작성자</option>
				<option value="n" ${type eq 'n' ? 'selected' : '' }>글번호</option>
				<option value="c" ${type eq 'c' ? 'selected' : '' }>내용</option>
			</select>
			<input type="text" name="keyword" placeholder="search" >
			<input type="hidden" name="pageNo" value="1"> <!-- ${ph.pgvo.pageNo}이라고 썼더니 내가 보던 페이지만 보여줘서 1로 바꿈.  -->
			<input type="hidden" name="qty" value="${ph.pgvo.qty }">
			<button type="submit">Search</button>
		</div>
	</form>


	<!-- 페이징처리 -->
	<div style="display: table; margin-left: auto; margin-right: auto;">
		<nav aria-label="Page navigation example">
			<ul class="pagination">

				<c:if test="${ph.prev }">
					<li class="page-item"><a class="page-link text-white"
						style="background-color: DarkRed"
						href="/board/list?pageNo=${ph.startPage-1 }&qty=${ph.pgvo.qty}&type=${ph.pgvo.type}&keyword=${ph.pgvo.keyword}">&laquo;</a></li>
				</c:if>

				<c:forEach begin="${ph.startPage }" end="${ph.endPage }" var="i">
					<li class="page-item"><a class="page-link text-white"
						style="background-color: DarkRed"
						href="/board/list?pageNo=${i }&qty=${ph.pgvo.qty}&type=${ph.pgvo.type}&keyword=${ph.pgvo.keyword}">${i }</a></li>
				</c:forEach>

				<c:if test="${ph.next }">
					<li class="page-item"><a class="page-link text-white"
						style="background-color: DarkRed"
						href="/board/list?pageNo=${ph.endPage+1 }&qty=${ph.pgvo.qty}&type=${ph.pgvo.type}&keyword=${ph.pgvo.keyword}">&raquo;</a></li>
				</c:if>

			</ul>
		</nav>
	</div>


	<div align="center">
		<a href="/board/register"><button>게시글작성</button></a> <a href="/"><button>메인가기</button></a>
	</div>
</body>
</html>