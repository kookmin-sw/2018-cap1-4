/**
 * 
	환자 검색란에 검색을 했을 때 디비에서 검색해서 자동완성으로 보여주고 선택했을때는 환자가 설문에서 받은 증상들을
	자동으로 보여줌
 */
$(document).ready(function() {
	$("#searchPatient").autocomplete({
		source : function(request, response) {
			$.ajax({
				type:"GET",
				url: "searchPatientInfo",
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
		callbackPatient(getPatientNum[1]); // 환자 번호로 검색하기 위함
	}
});
});