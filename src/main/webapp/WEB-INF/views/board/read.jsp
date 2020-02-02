<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script>
$(function(){
	
	//목록으로
	$("#btn_list").click(function(){
		location.href = "listAll";
	});
	
	//수정하기
	$("#btn_update").click(function(){
		$("input[name=board_title]").prop("readonly", false);
		$("textarea[name=board_content]").prop("readonly", false);
		$(this).hide();
		$("#btn_submit").show();
	});
	
	//삭제하기
	$("#btn_delete").click(function(){
		location.href = "deletePro?board_num=${boardVo.board_num}";
	});
	
});

</script>

<head>
<title>read</title>
</head>
<body>
	<h1>read</h1>

	<form method="post" action="updatePro">
	<input type="hidden" name="board_num" value="${boardVo.board_num}"/>
	<table border="1">
		<tr>
			<th>제목</th>
			<td><input type="text" name="board_title" required="required" readonly="readonly"
				style="width:100%;" value="${boardVo.board_title}"/></td>
		</tr>
		<tr>
			<th>등록일</th>
			<td><input type="text" name="board_regdate" readonly="readonly" 
				style="width:100%;" value="${boardVo.board_regdate}"/></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="5" cols="80" name="board_content" readonly="readonly">${boardVo.board_content}</textarea></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" name="board_writer" readonly="readonly" 
				style="width:100%;" value="${boardVo.board_writer}"/></td>
		</tr>
	</table>
	
	<br/>
	<input type="submit" value="완료" id="btn_submit" style="display:none;"/>
	<input type="button" value="수정" id="btn_update"/>
	<input type="button" value="삭제" id="btn_delete"/>
	<input type="button" value="목록으로" id="btn_list"/>

	</form>
</body>
