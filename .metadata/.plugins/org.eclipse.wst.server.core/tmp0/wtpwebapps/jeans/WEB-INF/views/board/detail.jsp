<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

	<input type="text" name="bno" readonly="readonly" value="${bvo.bno }"><br>
	<input type="text" name="writer" readonly="readonly" value="${bvo.writer }"><br>
	<input type="text" name="title" readonly="readonly" value="${bvo.title }"><br>
	<input type="text" name="regDate" readonly="readonly" value="${bvo.regDate }"><br>
	<textarea rows="30" cols="10" name="content" readonly="readonly">${bvo.content }</textarea><br>
	
	<c:if test="${ses != null && ses.id == bvo.writer }">
	<a href="/board/modify?bno=${bvo.bno }"><button type="button">수정</button></a>
	<a href="/board/delete?bno=${bvo.bno }"><button type="button">삭제</button></a>
	</c:if>
	<a href="/"><button type="button">목록</button></a>
	
	<!-- 댓글 작성 라인 -->
				<div>
				<span id="cmtWriter"> ${bvo.writer }</span> <input type="text"
					id="cmtText" placeholder="댓글을 적어주세요.">
				<button type="button" id="cmtPostBtn" class="btn text-white" style="background-color: DarkRed">등록</button>
			</div>

		<div style="width: 600px;">
	<br>
			<!-- 댓글 표시 라인 -->
			<div>
				<!-- li 하나가 하나의 댓글 객체 -->
				<ul id="cmtListArea" style="list-style: none; margin: 0">
					<li>
						<div>
							<div>Writer</div>
							Content for Comment
						</div>
						<span>mod_date</span>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	
	<script type="text/javascript">
		const bnoVal = '<c:out value="${bvo.bno}" />';
		console.log("bno > " + bnoVal);
	</script>
	<script type="text/javascript" src="/resources/js/boardComment.js"></script>
	<script type="text/javascript">
		getCommentList(bnoVal);
	</script>
</body>
</html>