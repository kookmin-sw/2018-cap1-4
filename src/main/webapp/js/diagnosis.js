/**
 * 진단하기 버튼을 눌렀을때 해당 환자의 진단 클래스를 가져와서 진단명을 테이블로 보여줌
 * url:"${pageContext.request.contextPath}/checkSymptom", ==> defaultPage에서 연결할때
 */
$(document).ready(function() {
	$("#chkSymptom").click(function() {
		$.ajax({
			method:"GET",	
			url:"checkSymptom",	
			success:function(data) {
				var show ="";
				$.each(data.diagnosisArr ,function(index,item){
	                  show += "<tr><td>"+item+"</td></tr>";
				});
				$("#diagnosisTable > tbody").empty();
				$("#diagnosisTable").append(show); 
			}
		});
	});
});

//증상 검색
$(document).ready(function() {
	$("#inputSymptom").autocomplete({
		source : function(request, response) {
			$.ajax({
				type:"GET",
				url: "searchSymptom",
				dataType :"json",
				data: { symptom : request.term}, //request.term => text박스내에 입력된 값
				success: function(resultData) {
					response(
						$.map(resultData, function(item){
							return{
								label: item.symptom +" /"+item.sRegion, //화면에 보여지는 텍스트
								value: item.symptom // 실제 TEXT태그에 들어갈 값 => 똑같이 표기
							}
						})
					);
				}
			});
		},
	//조회를 위한 최소 글자수
	minLength: 1,
	select: function(event, ui) { //만약 검색리스트에서 선택하였을때 선택한 데이터에 의한 이벤트 발생
	}
});
});

$("#inputSymptom").keypress(function(event){
    if ( event.which == 13 ) {
        $("#addSymptom").click();
        return false;
    }
});

//증상 추가
$(document).ready(function() {
	$("#addSymptom").click(function() {
		
		var inputData = $("#inputSymptom").val();
		$.ajax({
			method:"POST",	
			url:"addPatientSymptom",
			dataType: "json",
			data : {"symptom":inputData},
			success:function(resultData) {
				var diagnosis = JSON.stringify(resultData);
				console.log(resultData);
				
				var show ="";
				show += "<tr><td>"+resultData.symptom+"</td><td><button onclick='deleteLine(this);' style='float: right;'>삭제</button></td></tr>";
				$("#showPsymptoms").append(show);
				$("#inputSymptom").val("");
			}
		});
	});
});

//증상 삭제
function deleteLine(obj) {
    var tr = $(obj).parent().parent();
    var symptom =  tr.children().text().slice(0,-2);
  
    $.ajax({
    	type:"POST",
		dataType: "json",
		url: "deleteSelectedSymptom",
		data : {"symptom" : symptom},
		success:function(result)
		{
			//var patientNum = result;
			//callbackPatient(patientNum);
			//라인 삭제
		    tr.remove();
		   
		}
    });
}