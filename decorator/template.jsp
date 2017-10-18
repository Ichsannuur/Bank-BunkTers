<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/common/taglibs.jsp"%>
<html>
<s:if test="#session.activeUser == null">
<script>alert('Session Timeout');document.location.href='logOut';</script>
</s:if>
<head>
<%@ include file="/common/meta.jsp" %>
	<!-- CSS -->
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="assets/vendor/datatables/css/dataTables.bootstrap.min.css" rel="stylesheet">
	<link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="assets/css/main.css" rel="stylesheet" type="text/css">
	<link href="assets/css/my-custom-styles.css" rel="stylesheet" type="text/css">
	<link href="assets/css/dcalendar/dcalendar.picker.css" rel="stylesheet" type="text/css">
	
	<!--[if lte IE 9]>
		<link href="assets/css/main-ie.css" rel="stylesheet" type="text/css"/>
		<link href="assets/css/main-ie-part2.css" rel="stylesheet" type="text/css"/>
	<![endif]-->
	
	<!-- Icon -->
	<link rel="shortcut icon" href="assets/img/logo-black.png">
	<title>Bank Bunkters</title>
</head>

<style>
	.panel-default>.panel-heading {
	    background-color: #009688 !important;
	    color: white !important;
	    font-weight: 400 !important;
	}
	.panel{
		border-color: #009688 !important;
	}
	.btn-primary{
		background-color: #009688 !important;
	    color: white !important;
	    font-weight: 400 !important;
	    border-color: #009688;
	}
	.btn-primary:hover{
		border-color: #00796B;
	}
</style>
<body class="form-layouts">
	<!-- WRAPPER -->
	<div class="wrapper">
		<jsp:include page="/common/jsp/header.jsp"/>
		<!-- BOTTOM: LEFT NAV AND RIGHT MAIN CONTENT -->
		<div class="bottom">
			<div class="container">
				<div class="row" style="background-color:white;">
					<div class="col-md-3 fixed-sidebar">
						<jsp:include page="/common/jsp/menu.jsp"/>
					</div>
					<div class="col-md-3"></div>
					<div class="col-md-9 fixed-body" style="background-color:white;">
						<div class="dashboard-wrapper" style="background-color:#f1f1f1;">
							<!-- content-wrapper -->
							<div class="content" style="background-color:white;border:none;outline:none;">
							<%-- <jsp:include page="/common/jsp/breadcrumbs.jsp"/> --%>
							<decorator:body/>
							</div>
							<!-- /content-wrapper -->
			  			</div>
					</div>
				</div><!-- /row -->
			</div><!-- /container -->
		</div>
		<!-- END BOTTOM: LEFT NAV AND RIGHT MAIN CONTENT -->
	</div><!-- /wrapper -->
	
	<!-- Footer -->
	<div class="fixed-footer">
		<jsp:include page="/common/jsp/footer.jsp"/>
	</div>
	
	<!-- Javascript -->
	<script src="assets/js/jquery/jquery-2.1.0.min.js"></script>
	<script src="assets/vendor/datatables/js/jquery.dataTables.min.js"></script>
	<script src="assets/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
	<script>
	$(document).ready(function() {
	    $('#dataTables-example').DataTable({
	        responsive: true
	    });
	});
	function getkey(e){
		if(window.event)
			return window.event.keyCode;
		else if(e)
			return e.which;
		else
			return null;
	}
	function kodeScript(e, goods, field){
		var key, keyChar;
		key = getkey(e);
		if(key == null) return true;
		
		keychar = String.fromCharCode(key);
		keychar = keychar.toLowerCase();
		goods = goods.toLowerCase();
		
		if(goods.indexOf(keychar) != -1)
			return true;
		if(key == null || key == 0 || key == 8 || key == 9 || key == 27)
			return true;
		if(key == 13){
			var i;
			for(i=0; i < field.form.elements.length; i++)
				if(field == field.form.elements[i])
					break;
			return true;
		};
		return false;
	}
	</script>
	<script src="assets/js/bootstrap/bootstrap.js"></script>
	<script src="assets/js/plugins/modernizr/modernizr.js"></script>
	
	<script src="assets/js/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	
	<script src="assets/js/king-common.js"></script>
	<script src="assets/js/plugins/bootstrap-multiselect/bootstrap-multiselect.js"></script>
	<script src="assets/js/plugins/bootstrap-progressbar/bootstrap-progressbar.js"></script>
	<script src="assets/js/king-elements.js"></script>	
	
	<script src="assets/js/dcalendar/dcalendar.picker.js"></script>
	<script>$('#calendar-demo').dcalendar();</script>
	
	<script type="text/javascript">
		$(function () {
		    // Create the chart
		    $('#basic-column').highcharts({
		        chart: {
		            type: 'column'
		        },
		        title: {
		            text: '<s:text name="form.exchangerate"/>'
		        },
		        xAxis: {
		            type: 'category'
		        },
		        yAxis: {
		            title: {
		                text: ' '
		            }

		        },
		        legend: {
		            enabled: false
		        },
		        plotOptions: {
		            series: {
		                borderWidth: 0,
		                dataLabels: {
		                    enabled: true,
		                    format: '{point.y:.1f}%'
		                }
		            }
		        },

		        tooltip: {
		            headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
		            pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> <s:text name="form.oftotal"/><br/>'
		        },

		        series: [{
		            name: '<s:text name="form.exchangerate"/>',
		            colorByPoint: true,
		            data: [{
		                name: 'IDR',
		                y: IDR,
		                drilldown: 'IDR'
		            }, {
		                name: 'USD',
		                y: USD,
		                drilldown: 'USD'
		            }, {
		                name: 'MYR',
		                y: MYR,
		                drilldown: 'MYR'
		            }]
		        }],
		        drilldown: {
		            series: [{
		                name: 'Microsoft Internet Explorer',
		                id: 'Microsoft Internet Explorer',
		                data: [
		                    [
		                        'v11.0',
		                        24.13
		                    ],
		                    [
		                        'v8.0',
		                        17.2
		                    ],
		                    [
		                        'v9.0',
		                        8.11
		                    ],
		                    [
		                        'v10.0',
		                        5.33
		                    ],
		                    [
		                        'v6.0',
		                        1.06
		                    ],
		                    [
		                        'v7.0',
		                        0.5
		                    ]
		                ]
		            }, {
		                name: 'Chrome',
		                id: 'Chrome',
		                data: [
		                    [
		                        'v40.0',
		                        5
		                    ],
		                    [
		                        'v41.0',
		                        4.32
		                    ],
		                    [
		                        'v42.0',
		                        3.68
		                    ],
		                    [
		                        'v39.0',
		                        2.96
		                    ],
		                    [
		                        'v36.0',
		                        2.53
		                    ],
		                    [
		                        'v43.0',
		                        1.45
		                    ],
		                    [
		                        'v31.0',
		                        1.24
		                    ],
		                    [
		                        'v35.0',
		                        0.85
		                    ],
		                    [
		                        'v38.0',
		                        0.6
		                    ],
		                    [
		                        'v32.0',
		                        0.55
		                    ],
		                    [
		                        'v37.0',
		                        0.38
		                    ],
		                    [
		                        'v33.0',
		                        0.19
		                    ],
		                    [
		                        'v34.0',
		                        0.14
		                    ],
		                    [
		                        'v30.0',
		                        0.14
		                    ]
		                ]
		            }, {
		                name: 'Firefox',
		                id: 'Firefox',
		                data: [
		                    [
		                        'v35',
		                        2.76
		                    ],
		                    [
		                        'v36',
		                        2.32
		                    ],
		                    [
		                        'v37',
		                        2.31
		                    ],
		                    [
		                        'v34',
		                        1.27
		                    ],
		                    [
		                        'v38',
		                        1.02
		                    ],
		                    [
		                        'v31',
		                        0.33
		                    ],
		                    [
		                        'v33',
		                        0.22
		                    ],
		                    [
		                        'v32',
		                        0.15
		                    ]
		                ]
		            }, {
		                name: 'Safari',
		                id: 'Safari',
		                data: [
		                    [
		                        'v8.0',
		                        2.56
		                    ],
		                    [
		                        'v7.1',
		                        0.77
		                    ],
		                    [
		                        'v5.1',
		                        0.42
		                    ],
		                    [
		                        'v5.0',
		                        0.3
		                    ],
		                    [
		                        'v6.1',
		                        0.29
		                    ],
		                    [
		                        'v7.0',
		                        0.26
		                    ],
		                    [
		                        'v6.2',
		                        0.17
		                    ]
		                ]
		            }, {
		                name: 'Opera',
		                id: 'Opera',
		                data: [
		                    [
		                        'v12.x',
		                        0.34
		                    ],
		                    [
		                        'v28',
		                        0.24
		                    ],
		                    [
		                        'v27',
		                        0.17
		                    ],
		                    [
		                        'v29',
		                        0.16
		                    ]
		                ]
		            }]
		        }
		    });
		});
		</script>
		<script type="text/javascript">
		$(function () {
		    $(document).ready(function () {
		        // Build the chart
		        $('#container').highcharts({
		            chart: {
		                plotBackgroundColor: null,
		                plotBorderWidth: null,
		                plotShadow: false,
		                type: 'pie'
		            },
		            title: {
		                text: ' '
		            },
		            tooltip: {
		                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
		            },
		            plotOptions: {
		                pie: {
		                    allowPointSelect: true,
		                    cursor: 'pointer',
		                    dataLabels: {
		                        enabled: false
		                    },
		                    showInLegend: true
		                }
		            },
		            series: [{
		                name: '<s:text name="form.percent"/>',
		                colorByPoint: true,
		                data: [{
		                    name: '<s:text name="form.rtgs"/>',
		                    y: pieY
		                },{
		                    name: '<s:text name="form.cashdeposit"/>',
		                    y: pieY2
		                }]
		            }]
		        });
		    });
		});
		</script>
		
		<script src="assets/js/highcharts.js"></script>
		<script src="assets/js/modules/exporting.js"></script>
		<script src="assets/js/chartsvalue/transactionChart.js"></script>
</body>

</html>