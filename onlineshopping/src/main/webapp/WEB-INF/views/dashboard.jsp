<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Readable Theme -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

<link href="${css}/myapp.css" rel="stylesheet">

<!-- jQuery -->
<script src="${js}/jquery.js"></script>

<script src="${js}/jquery.validate.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="${js}/bootstrap.min.js"></script>

<script src="${js}/chartBuild.js"></script>
<script type="text/javascript">
window.onload = function() {
 
var dps = [];
var dpss = [];

var xValue;
var yValue;
 
<c:forEach items="${mem}" var="dataPoints" varStatus="loop">	
xValue =  "${dataPoints.mda}";
yValue = parseFloat("${dataPoints.staff}");		
dps.push({
	label : xValue,
	y : yValue
});			
</c:forEach> 

<c:forEach items="${mem}" var="dataPoints" varStatus="loop">	
xValue =  "${dataPoints.mda}";
yValue = parseFloat("${dataPoints.salary}");		
dpss.push({
	label : xValue,
	y : yValue
});			
</c:forEach>

var chart = new CanvasJS.Chart("stacked", {
	animationEnabled: true,
	theme: "light2",
	title: {
		text: "Global Payments Revenue"
	},
	legend: {
		cursor:"pointer",
		itemclick: toogleDataSeries
	},
	toolTip: {
		shared: true
	},
	data: [{
		type: "stackedColumn",
		name: "No of Staff",
		showInLegend: true,
		dataPoints: dps
	},{
		type: "stackedColumn",
		name: "Salary Paid",
		showInLegend: true,
		dataPoints: dpss
	}]
});
 
function toogleDataSeries(e){
	if (typeof(e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
		e.dataSeries.visible = false;
	} else{
		e.dataSeries.visible = true;
	}
	chart.render();
}
 
chart.render();



 
var dps = [];
var dpss = [];

var xValue;
var yValue;
 
<c:forEach items="${mem}" var="dataPoints" varStatus="loop">	
xValue =  "${dataPoints.mda}";
yValue = parseFloat("${dataPoints.staff}");		
dps.push({
	label : xValue,
	y : yValue
});			
</c:forEach> 

<c:forEach items="${mem}" var="dataPoints" varStatus="loop">	
xValue =  "${dataPoints.mda}";
yValue = parseFloat("${dataPoints.salary}");		
dpss.push({
	label : xValue,
	y : yValue
});			
</c:forEach>

var chart = new CanvasJS.Chart("histogram", {
	animationEnabled: true,
	theme: "light2",
	title: {
		text: "OGSG Payments Revenue"
	},
	legend: {
		cursor:"pointer",
		itemclick: toogleDataSeries
	},
	toolTip: {
		shared: true
	},
	data: [{
		type: "column",
		name: "No of Staff",
		showInLegend: true,
		dataPoints: dps
	},{
		type: "column",
		name: "Salary Paid",
		showInLegend: true,
		dataPoints: dpss
	}]
});
 
function toogleDataSeries(e){
	if (typeof(e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
		e.dataSeries.visible = false;
	} else{
		e.dataSeries.visible = true;
	}
	chart.render();
}
 
chart.render();





 
var dps = [];
var chart = new CanvasJS.Chart("pie", {
	theme: "light2", // "light1", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: "Disbursed Salary"
	},
	data: [{
		type: "pie",
		legendText: "{label}",
		yValueFormatString: "#,###\"%\"",
		indexLabelFontSize: 16,
		indexLabel: "{label} {y}",
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



var dps = [];
var chart = new CanvasJS.Chart("pie2", {
	theme: "light1", // "light2", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: "Disbursed Salary"
	},
	data: [{
		type: "pie",
		yValueFormatString: "#,###\"%\"",
		indexLabelFontSize: 16,
		indexLabel: "{label} {y}",
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



var dps = [];

var xValue;
var yValue;
 
<c:forEach items="${mem}" var="dataPoints" varStatus="loop">	
		xValue = "${dataPoints.mda}";
		yValue = parseFloat("${dataPoints.staff}");		
		dps.push({
			label : xValue,
			y : yValue
		});			
</c:forEach> 

var chart = new CanvasJS.Chart("bar", {
	animationEnabled: true,
	exportEnabled: true,
	title: {
		text: "Total Number of Civil Servants by MDA"
	},
	axisY:{
		includeZero: true
	},
	data: [{
		type: "bar", //change type to bar, line, area, pie, etc
		//indexLabel: "{y}", //Shows y value on all Data Points
		indexLabelFontColor: "#5A5757",
		dataPoints: dps
			
	}]
});
 
chart.render();
}

</script>
</head>
<body style="background-color:#F5F5F5; position: relative;">
<div class="container" style="position: relative; display:block;">
<div class="row">
    
    <div class="col-sm-12">
        <div class="row">
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-header ml-500 mb-500" style="background-color:white; position: relative; display:block; box-shadow: 5px 5px 20px #BABECC,  5px 5px 20px #BABECC;">
                    <p><h3 class="text-center text-primary" style="padding-top:10px;">Active Employees</h3></p>
                     <p><h2 class="text-center text-danger" style="padding-bottom:10px;"><strong>${stacked.salary}</strong></h2></p>
                   </div>
                    <div id="pie" style="height: 250px; width: 100%; background-color:white; position: relative; display:block; box-shadow: 5px 5px 20px #BABECC,  5px 5px 20px #BABECC;"></div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card">
                   <div class="card-header ml-500 mb-500" style="background-color:white; position: relative; display:block; box-shadow: 5px 5px 20px #BABECC,  5px 5px 20px #BABECC;">
                    <p><h3 class="text-center text-primary" style="padding-top:10px;">Active Employees</h3></p>
                     <p><h2 class="text-center text-danger" style="padding-bottom:10px;"><strong>${stacked.salary}</strong></h2></p>
                   </div>
                    <div id="pie2" style="height: 250px; width: 100%; background-color:white; position: relative; display:block; box-shadow: 5px 5px 20px #BABECC,  5px 5px 20px #BABECC;"></div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="card">
                    <div id="bar" style="height:365px; margin-top:25px; width: 100%; background-color:white; position: relative; display:block; box-shadow: 5px 5px 20px #BABECC,  5px 5px 20px #BABECC;"></div>
                </div>
            </div>
            
        </div><!-- /.row -->
       </div>
       </div>
       </div>
       
       <div class="container">
        <div class="row">
        <div class="col-sm-12" >
         <div class="col-sm-6">
                <div class="card">
                    <div class="card-body" id="stacked" style="height:300px; margin-top:18px; width: 100%; background-color:white; position: relative; display:block; box-shadow: 5px 5px 20px #BABECC,  5px 5px 20px #BABECC;"></div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card">
           				<div class="card-body" id="histogram" style="height:300px; margin-top:18px; width: 100%; background-color:white; position: relative; display:block; box-shadow: 5px 5px 20px #BABECC,  5px 5px 20px #BABECC;"></div>
                </div>
            </div>
        </div>
           
        </div><!-- /.row -->
        </div>
   
</body>
</html>