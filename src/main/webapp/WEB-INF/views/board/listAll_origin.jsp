<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script>
$(function(){
	
	//메세지 
	var msg = "${msg}";
	if (msg == "delete_success") {
		alert("delete_success");
	}
	
	//글쓰기
	$("#btn_insert").click(function(){
		location.href = "write";
	});
	
});

</script>

<head>
<title>listAll</title>
</head>
<body>
	<h1>listAll</h1>

	<table border="1">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>등록일</th>
			<th>조회수</th>
		</tr>

		<c:forEach items="${list}" var="boardVo">
			<tr>
				<td>${boardVo.board_num}</td>
				<td><a href="read?board_num=${boardVo.board_num}">${boardVo.board_title}</a></td>
				<td>${boardVo.board_writer}</td>
				<td>${boardVo.board_regdate}</td>
				<td>${boardVo.board_veiwcnt}</td>
			</tr>
		</c:forEach>
	</table>

	<br/><input type="button" value="글쓰기" id="btn_insert"/>

</body>
