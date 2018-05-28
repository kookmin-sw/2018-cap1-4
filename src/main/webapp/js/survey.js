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
				console.log("save");
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
		
		var	resultArr = [];
		var name = $("#gName").val();
		for(var i=0 ; i<22; i++){
			var num = Number(i) + Number(1);
			var curNum = "aq"+num;
			resultArr[i] = $('input:radio[name="'+curNum+'"]:checked').val(); // put arr in a value of checked radio button
		}
		var form = {name: name ,generalSurvey : resultArr};
		$.ajax({
			method:"POST",
			url:"saveGeneralSurvey",
			dataType: "json",
			contentType: "application/json",
			data : JSON.stringify(form), // Array 를 JSON string 형태로 변환
			complete:function(response) {
				alert(response.responseText);
				window.location.href = response.responseText; //
			}
		});
	});
});

/**
 * general Survey_B
 * 설문을 작성 완료하고 저장 버튼을 눌렀을 때 
 */
$(document).ready(function() {
	$("#G_SurveyBsaveButton").click(function() {
		
		var	resultArr = [];
		for(var i=0 ; i<18; i++){
			var num = Number(i) + Number(1);
			var curNum = "bq"+num;
			resultArr[i] = $('input:radio[name="'+curNum+'"]:checked').val(); // put arr in a value of checked radio button
		}
		var form = {generalSurvey_B : resultArr};
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
	});
});

/**
 * general Survey_C
 * 설문을 작성 완료하고 저장 버튼을 눌렀을 때 
 */
$(document).ready(function() {
	$("#G_SurveyCsaveButton").click(function() {
		
		var	resultArr = [];
		for(var i=0 ; i<10; i++){
			var num = Number(i) + Number(1);
			var curNum = "cq"+num;
			resultArr[i] = $('input:radio[name="'+curNum+'"]:checked').val(); // put arr in a value of checked radio button
		}
		var form = {generalSurvey_C : resultArr};
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
	});
});

