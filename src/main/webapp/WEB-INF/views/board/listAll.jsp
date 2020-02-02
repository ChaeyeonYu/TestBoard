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
	
	//예약하기
	$("#btn_reservation").click(function(){
		location.href = "/test/reservation/reservationForm";
	});
	
	//로그인
	$("#btn_login").click(function(){
		location.href = "/test/user/loginForm";
	});
	//회원가입
	$("#btn_register").click(function(){
		location.href = "/test/user/registerForm";
	});
	
});

</script>


<!-- 주소검색 START -->
<!-- 관련파일 : resources/api, resources/example, resources/lib -->
주소 검색하기
<div id="postcodify"></div>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
    <script type="text/javascript">
            $("#postcodify").postcodify();
    </script>
<!-- 주소검색 END -->


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
	
	<hr>
	<input type="button" value="예약하기" id="btn_reservation"/>
	
	<hr>
	<input type="button" value="로그인" id="btn_login"/>
	<input type="button" value="회원가입" id="btn_register"/>
	
</body>
