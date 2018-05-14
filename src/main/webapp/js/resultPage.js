/**
 *  
 */

var data = [5,10,5,7,2,1,9,15];
var w = 250, h=250;
d3.select(".graph")
	.append("svg")
	.attr("width",w)
	.attr("height",h)
	.attr("id","graphWrap");
var graphWrap = d3.select("#graphWrap");

// 그래프 데이터 // 합쳐서 100이 아니더라도 원이 생성됨
var graphData =[15,25,60];
// pie 생성
var pie = d3.pie();

var arc = d3.arc().innerRadius(0).outerRadius(100);

var oneGraph = graphWrap.selectAll("path").data(pie(graphData));

oneGraph.enter()
	.append("paht")
	.attr("class","pie")
	.attr("d",arc)
	.attr("fill","yellow")
	.attr("stroke","black")
	.attr("transform","translate("+(w/2)+","+(h/2)+")");