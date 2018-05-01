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
			success:function(data) {
				alert("환자 세부사항 수정 완료");
			},
			error:function(request,status,error){
        		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        	}
		});
	});
});