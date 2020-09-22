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

<script src="${js}/chart.js"></script>
<script type="text/javascript">

window.onload = function() {
 
var dps = ${mda};
var dpss = ${salary};
var dpsss = ${staff};

var ctx = document.getElementById('pie').getContext('2d');
var chart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: dps,
        datasets: [{
            label: 'My First dataset',
            backgroundColor: 'rgb(255, 99, 132)',
            borderColor: 'rgb(255, 99, 132)',
            data: dpss
        }]          
    },
    
    data: {
        labels: dps,
        datasets: [{
            label: 'My dataset',
            backgroundColor: 'rgb(25, 9, 13)',
            borderColor: 'rgb(55, 9, 13)',
            data: dpss
        }]          
    },
    
    options: {
        scales: {
            xAxes: [{
                stacked: true
            }],
            yAxes: [{
                stacked: true
            }]
        }
    }
});


var stacked = document.getElementById("pie2").getContext('2d');
var stackedChart = new Chart(stacked, {
   type: 'bar',
   data: {
      labels: dps, 
      datasets: [{
         label: 'Total Salary',
         data: dpss,
         backgroundColor: '#22aa99'
      }, {
         label: 'Total Staff',
         data: dpsss,
         backgroundColor: '#994499'
      }]
   },
   options: {
      responsive: true,
      legend: {
         position: 'right' // place legend on the right side of chart
      },
      scales: {
         xAxes: [{
            stacked: true // this should be set to make the bars stacked
         }],
         yAxes: [{
            stacked: true // this also..
         }]
      },
       title: {
        display: true,
        text: 'Stacked Bar Chart of Ministries, Departments and Agencies in 2020'
      }    
   }
});
    
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
                    <div class="card-header ml-500 mb-500" style="background-color:white; position: relative; display:block; box-shadow: inset 5px 5px 20px #BABECC, inset 5px 5px 20px #BABECC;">
                    <p><h3 class="text-center text-primary" style="padding-top:10px;">Active Employees</h3></p>
                     <p><h2 class="text-center text-danger" style="padding-bottom:10px;"><strong>${stacked.salary}</strong></h2></p>
                   </div>
                    <canvas id="pie" style="height: 250px; width: 100%; background-color:white; position: relative; display:block; box-shadow: inset 5px 5px 20px #BABECC, inset 5px 5px 20px #BABECC;"></canvas>
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