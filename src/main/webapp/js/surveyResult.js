function getSurveyResult(){
	
	var freValue="";
	var degValue="";
	var symptomList="";
	var degree;
	
	var checked_radio = $('input:radio[name=head_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=head_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "두통터질듯함";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=head_2_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=head_2_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "두통압박감";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=head_4_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=head_4_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "두통지끈거림";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=whirl_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=whirl_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "어지러움핑돈다";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=whirl_4_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=whirl_4_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "어지러움저혈압";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=whirl_5_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=whirl_5_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "어지러움빈혈성";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=mouth_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=mouth_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "구취항상";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=mouth_2_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=mouth_2_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "구취아침";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=mouth_5_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=mouth_5_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "구취식후";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=indigestion_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=indigestion_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "소화불량";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=frustrated_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=frustrared_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "명치답답항상";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=frustrated_3_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=frustrared_3_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "명치답답공복";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=ache_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=ache_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "명치통증뻐근";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=ache_2_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=ache_2_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "명치통증콕콕지름";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=ache_3_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=ache_3_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "명치통증쥐어짠다";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=impact_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=impact_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "체함";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=gas_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=gas_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "가스상복부";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=gas_2_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=gas_2_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "가스하복부";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=burb_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=burb_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "트림항상";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=burb_2_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=burb_2_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "트림공복";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=burb_3_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=burb_3_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "트림식후";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=burb_4_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=burb_4_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "트림과식";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=burb_5_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=burb_5_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "트림급식";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=brash_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=brash_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "속쓰림항상";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=brash_2_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=brash_2_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "속쓰림공복";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=brash_3_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=brash_3_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "속쓰림식후";
		degree += freValue + degValue;
	}

	var checked_radio = $('input:radio[name=brash_4_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=brash_4_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "속쓰림수면중/새벽";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=brash_5_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=brash_5_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "속쓰림아침기상시";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=brash_6_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=brash_6_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "속쓰림가슴";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=backflow_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=backflow_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "역류";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=colic_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=colic_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "복통상복부";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=colic_2_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=colic_2_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "복통하복부";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=colic_3_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=colic_3_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "복통사르르";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=colic_4_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=colic_4_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "복통옆구리";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=colic_5_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=colic_5_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "복통뻐근";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=colic_6_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=colic_6_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "복통쥐어짠다";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=tired_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=tired_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "피로감";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=forget_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=forget_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "건망증";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=eyepain_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=eyepain_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "안구통증";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=dryeye_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=dryeye_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "안구건조";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=anxiety_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=anxiety_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "불안감";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=pounding_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=pounding_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "가슴이두근거림";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=chest_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=chest_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "가슴답답";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=back_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=back_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "등뻐근";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=upside_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=upside_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "상열감";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=skin_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=skin_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "피부이상두드러기";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=skin_2_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=skin_2_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "피부이상가려움";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=stiff_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=stiff_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "담결림";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=neck_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=neck_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "뒷목결림";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=shoulder_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=shoulder_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "어깨결림";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=pooh_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=pooh_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "변딱딱";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=pooh_2_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=pooh_2_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "변비";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=pooh_3_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=pooh_3_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "변무른변";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=pooh_4_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=pooh_4_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "변설사";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=pooh_5_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=pooh_5_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "변굳은변";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=pooh_6_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=pooh_6_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "변잔변감";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=mouth_1_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=mouth_1_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "구건";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=mouth_2_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=mouth_2_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "인건";
		degree += freValue + degValue;
	}
	
	var checked_radio = $('input:radio[name=mouth_3_fre]:checked').val();
	freValue=checked_radio;
	var checked_radio = $('input:radio[name=mouth_3_deg]:checked').val();
	degValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "구고";
		degree += freValue + degValue;
	}
	
	
	var checked_radio = $('input:radio[name=speedy_fre]:checked').val();
	freValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "급식";
		degree += freValue + degValue;
	}
	var checked_radio = $('input:radio[name=voracity_fre]:checked').val();
	freValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "폭식";
		degree += freValue + degValue;
	}
	var checked_radio = $('input:radio[name=surfeit_fre]:checked').val();
	freValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "과식";
		degree += freValue + degValue;
	}
	var checked_radio = $('input:radio[name=irregular_fre]:checked').val();
	freValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "불규칙";
		degree += freValue + degValue;
	}
	var checked_radio = $('input:radio[name=flour_fre]:checked').val();
	freValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "밀가루";
		degree += freValue + degValue;
	}
	var checked_radio = $('input:radio[name=meat_fre]:checked').val();
	freValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "육류";
		degree += freValue + degValue;
	}
	var checked_radio = $('input:radio[name=instant_fre]:checked').val();
	freValue=checked_radio;
	if(freValue + degValue > 4){
		symptomList += "인스턴트";
		degree += freValue + degValue;
	}
	
	
}