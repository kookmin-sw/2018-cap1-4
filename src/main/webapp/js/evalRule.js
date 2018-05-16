/**
 * 평가 테이블 검색
 */
$(document).ready(function() {
			// bind("이벤트명", 이벤트발생시함수);
			$("#search").bind("keyup",function(){
				//$("#search").serialize() : 해당 폼에 있는 모든 데이터 => querystring으로 변환처리해줌
				var sendData = $("#evalRuleForm").serialize();
				
				$.ajax({
					type: "GET",
					url: "searchEvalRule",
					data: sendData,
					dataType: "json",
					success:function(resultData){
						var list = resultData 
						var show ="";
						
						$.each(list,function(index,item){
							var sendItem = item;
                            show+="<tr><td>"+item.patientNum+
                            	"</td><td>"+item.patientName+
                            	"</td><td>"+item.date+
                            	"</td><td>"+item.score+
                            	//"</td><td><a href='patientDiagnosis_view?pNumber=${item.patientNum}'>"+item.comment+
                            	//"</td><td><a href='#' onclick='patientHistory('item')'>"+item.comment+
                            	"</td><td>"+item.comment+
                            	"</td></tr>";
						})
						$("#evalRuleTable").empty();
						$("#evalRuleTable").append(show);
					}
			});
		});
});


// 룰 평가 후 저장 버튼을 눌렀을때
$(document).ready(function() {
	$("#evalSaveButton").click(function() {
		
		var checkedScore = $('input:radio[name="star-input"]:checked').val();
		var resultComment = $("#commentArea").val();
		if(checkedScore == null) checkedScore =0;
		if(resultComment == null) resultComment = "";
		
		$.ajax({
			method:"GET",	
			url:"saveEvalRule",
			dataType: "json",
			data : {"comment":resultComment,"score":checkedScore},
			success:function(resultData) {
				//var diagnosis = JSON.stringify(resultData);
				alert("저장 완료!");
			}
		});
	});
});

