<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script>
$(function(){
	$("#btn_list").click(function(){
		location.href = "listAll";
	});
});

</script>

<head>
<title>write</title>
</head>
<body>
	<h1>write</h1>

	<form method="post" action="writePro">
	<table border="1">
		<tr>
			<th>제목</th>
			<td><input type="text" name="board_title" required="required" 
				style="width:100%;" placeholder="제목"/></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="5" cols="80" name="board_content" placeholder="내용"></textarea></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" name="board_writer" required="required" style="width:100%;" placeholder="작성자"/></td>
		</tr>
	</table>
	
	<br/>
	<input type="submit" value="완료" id="btn_submit"/>
	<input type="button" value="목록으로" id="btn_list"/>

	</form>
</body>
