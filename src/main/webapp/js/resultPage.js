/**
 *  
 */


$(document).ready(function() {
	$("#printButton").click(function() {
		$.ajax({
			method:"GET",	
			url:"printClicked",	
			success:function(data) { 
			}
		});
	});
});