<!-- chart.jsp-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="js" value="/resources/js" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="${js}/chartBuild.js"></script>
<script type="text/javascript">
window.onload = function() {
 
var dps = [];
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2", // "light1", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: "Disbursed Salary"
	},
	data: [{
		type: "pie",
		showInLegend: "true",
		legendText: "{label}",
		yValueFormatString: "#,###\"%\"",
		indexLabelFontSize: 16,
		indexLabel: "{label} - {y}",
		dataPoints: dps
	}]
});
 
var yValue;
var label;
 
<c:forEach items="${mem}" var="dataPoints" varStatus="loop">	
		yValue = parseFloat("${dataPoints.salary}");
		label = "${dataPoints.mda}";
		dps.push({
			label : label,
			y : yValue,
		});			
</c:forEach> 
 
chart.render();
}
</script>
</head>
<body>
	<div id="chartContainer" style="height: 370px; width: 100%;"></div>
</body>
</html>  