/**
 * Reception Page 에서 
 * 저장 버튼을 클릭했을때 patient table에 저장 또는 기존 데이터가 있을때는 수정기능 제공 
 */
$(document).ready(function() {
	$("#savePatientButton").click(function() {
		var pNumber = $("#pNumber").val();
		var pName = $("#pName").val();
		var age = $("#age").val();
		var sex = $("#sex").val();
		var form = { pNumber:pNumber, pName:pName, age: age ,sex:sex};
		$.ajax({
			method:"POST",
			type: "json",
			contentType: "application/json",
			url:"savePatientInfo",
			data : JSON.stringify(form),
			complete:function(response) {
				alert("환자 세부사항 저장 완료");
				//window.location.href = response.responseText;
			}
		});
	});
});


/**
 * [ receptionPage ]
	검색란에 입력했을때 이전에 등록된 환자가 있다면 세부사항을 보여주고 수정 가능하도록 함
 */
$(document).ready(function() {
	$("#searchPatientReception").autocomplete({
		source : function(request, response) {
			$.ajax({
				type:"GET",
				url: "searchReceptionInfo",
				dataType :"json",
				data: { pName : request.term}, //request.term => text박스내에 입력된 값
				success: function(resultData) {
					response(
						$.map(resultData, function(item){
							return{
								label: item.pName +" /"+item.pNumber, //화면에 보여지는 텍스트
								value: item.pName // 실제 TEXT태그에 들어갈 값 => 똑같이 표기
							}
						})
					);
				}
			});
		},
	//조회를 위한 최소 글자수
	minLength: 1,
	select: function(event, ui) { //만약 검색리스트에서 선택하였을때 선택한 데이터에 의한 이벤트 발생
		var temp = ui.item.label;
		var getPatientNum = temp.split('/');
		callbackPatientReception(getPatientNum[1]); // 환자 번호로 검색하기 위함
	}
});
});
function callbackPatientReception(getPatientNum){ // 환자 번호로 증상과 환자 정보들을 불러오는 함수
	var sendPatientNum = getPatientNum;
	$.ajax({
		type:"GET",
		dataType: "json",
		url: "getPatientSymptoms",
		data : {"pNumber" : sendPatientNum},
		success:function(resultData){
			
			var patientTable ="";
			patientTable += "<tr><td>환자번호</td><td><input class=\"form-control\" type=\"text\" value="+resultData.pNumber+" id='pNumber' ></td></tr>"+
							"<tr><td>이름</td><td><input class=\"form-control\" type=\"text\" value="+resultData.pName+" id='pName'></td></tr>"+
							"<tr><td>나이</td><td><input class=\"form-control\" type=\"text\" value="+resultData.age+" id='age' ></td></tr>"+
							"<tr><td>성별</td><td><input class=\"form-control\" type=\"text\" value="+resultData.sex+" id='sex' ></td></tr>"+
							"<tr><td>몸무게</td><td><input class=\"form-control\" type=\"text\" value="+"준비중"+"></td></tr>"+
							"<tr><td>주소</td><td><input class=\"form-control\" type=\"text\" value="+"준비중"+"></td></tr>"+
							"<tr><td>과거력</td><td><input class=\"form-control\" type=\"text\" value="+"준비중"+"></td></tr>";
			
			$("#showWaitingPatient > tbody").empty();
			$("#showWaitingPatient").append(patientTable);
		}
	});
}
//Reception Page 검색란에 입력하고 엔터눌렀을때 똑같이 검색되는 기능
$("#searchPatientReception").keypress(function(event){
    if ( event.which == 13 ) {
        $("#searchButtonrReception").click();
        return false;
    }
});


/**
 * 
 * 대기자 명단 작성하거나 기존에 데이터가 존재하는 경우 대기자 명단에 추가 버튼 클릭한 경우 대기자명단으로 추가
 */
$(document).ready(function() {
	$("#addPatientButton").click(function() {
		var pNumber = $("#pNumber").val();
		var pName = $("#pName").val();
		var age = $("#age").val();
		var sex = $("#sex").val();
		var form = { pNumber:pNumber, pName:pName, age: age ,sex:sex};
		$.ajax({
			method:"POST",
			type: "json",
			contentType: "application/json",
			url:"addWaitingList",
			data : JSON.stringify(form),
			complete:function(response) {
				alert("환자 대기자명단 추가 완료");
				window.location.href = response.responseText;
			}
		});
	});
});


/**
 *  receptionPage 에서 새로고침 버튼을 클릭했을 때 
 */
$(document).ready(function() {
	$("#refreshButton").click(function() {
		$("#pNumber").val("");
		$("#pName").val("");
		$("#age").val("");
		$("#sex").val("");
		
		$.ajax({
			method:"GET",
			type: "json",
			url:"refreshReception",
			complete:function(response) {
				alert("환자 대기자명단 새로고침 완료");
				// window.location.href = response.responseText;
			}
		});
	});
});
