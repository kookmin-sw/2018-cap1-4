/*
$(document).ready(function() {
	$("#addList").click(function() {
		$.ajax({
			method:"GET",	
			url:"addList",	
			success:function(data) {
				var show ="";
				$.each(data. ,function(index,item){
	                  show += "<tr><td>"+item+"</td></tr>";
				});
				$("#diagnosisTable > tbody").empty();
				$("#diagnosisTable").append(show); 
			}
		});
	});
});
*/