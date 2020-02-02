<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->

<!-- datepicker -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>
<!-- datepicker -->

<script>
//datepicker START 
$.datepicker.setDefaults({  
	 dateFormat: 'yy-mm-dd', 	 //Input Display Format 변경
	 showOtherMonths: true, 	 //빈 공간에 현재월의 앞뒤월의 날짜를 표시
	 showMonthAfterYear: true,   //년도 먼저 나오고, 뒤에 월 표시
	 
	 prevText: "이전달",
	 nextText: "다음달",
	 
	 changeYear: true, 			 //콤보박스에서 년 선택 가능
	 changeMonth: true, 		 //콤보박스에서 월 선택 가능        
	 
	 showOn: "both", 			 //both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시
	 buttonImage: "images/calendar.PNG",
	 buttonImageOnly: true, 	 //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
	 buttonText: "Select date",  //버튼에 마우스 갖다 댔을 때 표시되는 텍스트   
	 
	//달력의 년도 부분 뒤에 붙는 텍스트
	 yearSuffix: '년',  
	 
	//달력의 월 부분 Tooltip 텍스트
	 monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	//달력의 월 부분 텍스트
	 monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	 
	//달력의 요일 부분 Tooltip 텍스트
	 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],  
	//달력의 요일 부분 텍스트
	 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],  
	 
	 minDate: 0, 	 //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
     maxDate: "+2M"  //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
	 });  
//datepicker END

$(function(){
	//목록으로
	$("#btn_list").click(function(){
		location.href = "/test/board/listAll";
	});
	
	//https://m.blog.naver.com/PostView.nhn?blogId=javaking75&logNo=220546927730&proxyReferer=https%3A%2F%2Fwww.google.com%2F
	
	//오늘 날짜를 출력
    $("#today").text(new Date().toLocaleDateString());
	
	//입실, 퇴실을 위한 공간
	var startData = "";
	var endDate = "";
	
	$("#startDate").datepicker({
// 		minDate:0, //선택할수있는 최소날짜, (0 : 오늘 이전 날짜 선택 불가)
// 		startDate datepicker가 닫힐때
// 		종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
		onClose:function(selectedDate){
			$("#endDate").datepicker("option", "minDate", selectedDate);  
		}  

	});
	$("#endDate").datepicker({
// 		endDate datepicker가 닫힐때
// 		시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정
		onClose:function(selectedDate){
			$("#startDate").datepicker("option","maxDate",selectedDate);  
		}  
	});
	
	//예약버튼 클릭
	$("#btn_reservation").click(function(){
		startDate = $("#startDate").val();
		endDate = $("#endDate").val();
		console.log("startDate: " + startDate);
		console.log("endDate: " + endDate);
	});
	
});

</script>

<head>
<title>reservationForm</title>
</head>
<body>
	<h1>reservationForm</h1>
	
	오늘 날짜 : <span id="today"></span>
	<form>
	<input type="text" name="date" id="startDate" size="12" /> ~ 
	<input type="text" name="date" id="endDate" size="12" />
	
	<input type="button" value="예약" id="btn_reservation"/>
	</form>
	
	<br/><br/>
	<input type="button" value="목록으로" id="btn_list"/>

</body>
