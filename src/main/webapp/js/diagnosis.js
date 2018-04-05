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