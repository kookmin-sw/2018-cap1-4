/**
 * hospital Survey
 * 설문을 작성 완료하고 저장 버튼을 눌렀을 때 
 */
$(document).ready(function() {
	$("#H_SurveySaveButton").click(function() {
		
		var url = location.href;
		var param = url.substring(url.indexOf('?')+1,url.length);
		var pNum = param.split("="); // fetch patient number
		
		var table = document.getElementById("surveyTable");
		var rowLen = table.rows.length; // surveyTable 의 row 전체 길이를 가져옴 (빈도와 정도 테이블)
		var fre = "_fre";
		var deg = "_deg";
		
		var frequency = ""; // 빈도
		var degree = ""; // 정도
		var arr = new Array(); // Object를 배열로 저장할 Array
		
		for(var i=0; i<rowLen; i++) // row 길이만큼 (빈도와 정도 테이블)
		{
			if($(table.rows[i]).attr("id") == undefined) continue; // id가 정의되어 있지 않다면 continue;
			var id = $(table.rows[i]).attr("id"); // row 별로 id 가져오기
			if(!$('[name=" '+id +' "]')) continue; 
			
			var checkFre = id.concat(fre);
			var checkDeg = id.concat(deg);
		
			frequency = $('input:radio[name="'+checkFre+'"]:checked').val(); // 체크된 값 가져오기
			degree = $('input:radio[name="'+ checkDeg +'"]:checked').val();
			
			//if($('[name=" '+checkDeg +' "]')) // 존재하면
			
			var obj = new Object(); // key, value 형태로 저장할 Object
			obj.symptom = id;
			obj.sum = Number(frequency) + Number(degree);
			arr.push(obj);
		}
		
		var form = {surveyMap:arr, pNum:pNum[1]}; // 설문지 데이터와 환자 번호 전송
		
		$.ajax({
			method:"POST",
			url:"saveHospitalSurvey",
			dataType: "json",
			contentType: "application/json",
			data : JSON.stringify(form), // Array 를 JSON string 형태로 변환
			complete:function() {
				alert("설문 작성 완료! ");
			}
		});
	});
});


/**
 * general Survey
 * 설문을 작성 완료하고 저장 버튼을 눌렀을 때 
 */
$(document).ready(function() {
	$("#G_SurveySaveButton").click(function() {
		var notChecked =[];
		var sum=0;
		var	resultArr = [];
		var flag =0;
		var name = $("#gName").val();
		if(!$("#gName").val())
		{
			flag = 1;
		}
		for(var i=0 ; i<22; i++){
			var num = Number(i) + Number(1);
			var curNum = "aq"+num;
			if(!$('input:radio[name="'+curNum+'"]:checked').val()) {
				notChecked[sum++] = num;
			}
			resultArr[i] = $('input:radio[name="'+curNum+'"]:checked').val(); // put arr in a value of checked radio button
		}
		var form = {name: name ,generalSurvey : resultArr};
		if(sum == 0 && flag ==0 ) {
			$.ajax({
				method:"POST",
				url:"saveGeneralSurvey",
				dataType: "json",
				contentType: "application/json",
				data : JSON.stringify(form), // Array 를 JSON string 형태로 변환
				complete:function(response) {
					var temp = response.responseText.charAt(response.responseText.length-1);
					if(temp == 'B') {
						alert("음인이시네요! 다음설문을 계속 진행해 주세요!");
					}
					else {
						alert("양인이시네요! 다음설문을 계속 진행해 주세요!");
					}
					window.location.href = response.responseText; //
				}
			});
		}else {
			var str ="";
			for(var i=0; i<notChecked.length; i++)
			{
				str += notChecked[i]+" ";
			}
			alert(str + "\n해당 번호 설문 작성을 완료해 주세요!");
			if(flag == 1) alert("이름을 작성해주세요!");
		}
	});
});

/**
 * general Survey_B
 * 설문을 작성 완료하고 저장 버튼을 눌렀을 때 
 */
$(document).ready(function() {
	$("#G_SurveyBsaveButton").click(function() {
		var notChecked =[];
		var sum=0;
		var	resultArr = [];
		for(var i=0 ; i<18; i++){
			var num = Number(i) + Number(1);
			var curNum = "bq"+num;
			if(!$('input:radio[name="'+curNum+'"]:checked').val()) {
				notChecked[sum++] = num;
			}
			resultArr[i] = $('input:radio[name="'+curNum+'"]:checked').val(); // put arr in a value of checked radio button
		}
		var form = {generalSurvey_B : resultArr};
		if(sum ==0 ) {
			$.ajax({
				method:"POST",
				url:"saveGeneralSurvey_B",
				dataType: "json",
				contentType: "application/json",
				data : JSON.stringify(form), // Array 를 JSON string 형태로 변환
				complete:function(response) {
					
					alert(response.responseText);
					window.location.href = response.responseText; //
				}
			});
		} else {
			var str ="";
			for(var i=0; i<notChecked.length; i++)
			{
				str += notChecked[i]+" ";
			}
			alert(str + "\n해당 번호 설문 작성을 완료해 주세요!");
		}
	});
});

/**
 * general Survey_C
 * 설문을 작성 완료하고 저장 버튼을 눌렀을 때 
 */
$(document).ready(function() {
	$("#G_SurveyCsaveButton").click(function() {
		var notChecked =[];
		var sum=0;
		var	resultArr = [];
		for(var i=0 ; i<10; i++){
			var num = Number(i) + Number(1);
			var curNum = "cq"+num;
			if(!$('input:radio[name="'+curNum+'"]:checked').val()) {
				notChecked[sum++] = num;
			}
			resultArr[i] = $('input:radio[name="'+curNum+'"]:checked').val(); // put arr in a value of checked radio button
		}
		var form = {generalSurvey_C : resultArr};
		if(sum == 0 ) {
			$.ajax({
				method:"POST",
				url:"saveGeneralSurvey_C",
				dataType: "json",
				contentType: "application/json",
				data : JSON.stringify(form), // Array 를 JSON string 형태로 변환
				complete:function(response) {
					
					alert(response.responseText);
					window.location.href = response.responseText; //
				}
			});
		} else {
			var str ="";
			for(var i=0; i<notChecked.length; i++)
			{
				str += notChecked[i]+" ";
			}
			alert(str + "\n해당 번호 설문 작성을 완료해 주세요!");
		}
	});
});



/**
 *  G survey 뒤로 가기 버튼 클릭
 */
$(document).ready(function() {
	$("#backG_SurveyButton").click(function() {
		
		$.ajax({
			method:"GET",
			url:"generalSurveyAajx",
			complete:function(response) {
				window.location.href = response.responseText;
			}
		});
	});
});
