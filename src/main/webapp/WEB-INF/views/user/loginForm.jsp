<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script>
$(function(){
	$("#btn_list").click(function(){
		location.href = "/test/board/listAll";
	});
	
	$("#btn_register").click(function(){
		location.href = "registerForm";
	});
});

</script>

<head>
<title>LOGIN</title>
</head>
<body>
	<h1>LOGIN</h1>

	<form method="post" action="">
	<table border="1">
		<tr>
			<th>이메일</th>
			<td><input type="text" name="user_id" required="required" 
				style="width:100%;" placeholder="이메일"/></td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td><input type="text" name="user_pw" required="required" 
				style="width:100%;" placeholder="비밀번호"/></td>
		</tr>
	</table>
	
	<br/>
	<input type="submit" value="완료" id="btn_submit"/>
	<input type="button" value="회원가입" id="btn_register"/>
	<input type="button" value="목록으로" id="btn_list"/>

	</form>
</body>
