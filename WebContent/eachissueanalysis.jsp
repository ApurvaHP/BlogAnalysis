
<%@page import="com.mysql.*"     %>
<%@page import="cmpe.sjsu.edu.parser.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>Straight Talk..because every opinion matters</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="css/style.css" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Bevan'
	rel='stylesheet' type='text/css'>

</head>

<body>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Navigation</span> <span class="icon-bar"></span>
					<span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<!--<a class="navbar-brand" href="index.html">Straight Talk</a>-->
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="index.html">Home</a></li>
					<li><a href="about.html">About Us</a></li>
					<li><a href="contact.html">Contact Us</a></li>
					<li><a href="topic.html">Topic</a>
					<li class="active"><a href="chart.html">Pie Chart</a>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<div class="container">

		<div class="page-header" id="site-header">
			<h1>
				Straight Talk.. <small>because every opinion matters</small>
			</h1>
		</div>

		<div class="row">

			<div class="col-md-9">
				<h1 style="margin-top: 0">University Library hours need to be
					extended to late night??</h1>
				<div class="clearfix"
					style="text-align: justify; padding: 20px; background: #eee; border: 2px solid #bbb; border-radius: 10px;">
					<div id="chartcontainer" style="width: 100%; height: 400px;"></div>

					<a class="btn btn-block btn-primary" href="topic.html"
						style="margin-top: 20px;">&leftarrow; Go Back</a>
				</div>
			</div>

			<!-- End main content -->

			<div class="col-md-3">
				<p class="lead">Side Bar Links</p>
				<div class="list-group">
					<a href="#" class="list-group-item active">
						<h4 class="list-group-item-heading">Side Bar Link 1</h4>
						<p class="list-group-item-text">This is content you can add
							your text here</p>
					</a> <a href="#" class="list-group-item">Side Bar Link 2</a> <a
						href="#" class="list-group-item">Side Bar Link 3</a> <a href="#"
						class="list-group-item">Side Bar Link 4</a> <a href="#"
						class="list-group-item">Side Bar Link 5</a> <a href="#"
						class="list-group-item active">Side Bar Link 6</a>
				</div>

				<button class="btn btn-danger btn-block btn-lg" onclick="setChart();">Show</button>
			</div>

		</div>

	</div>
	<!-- /.container -->

	<div class="container">

		<hr>

		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p class="text-right">Copyright &copy; Company 2014 - Hardik
						Shah</p>
				</div>
			</div>
		</footer>

	</div>
	<%
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/sentiword", "root", "power");
		Statement st = con.createStatement();
		ResultSet rs = st
				.executeQuery("SELECT `month`, `count` FROM (SELECT YEAR(c.date) AS `year`, MONTH(c.date) AS `month`, c.TopicId AS `TopicId`, COUNT(*) AS `count` FROM blogcomments c WHERE  c.TopicId = 1 GROUP BY `year`, `month` ) AS result WHERE `year` = 2014");

			int[] count = new int[12];
			//	System.out.println("inside if");
			while (rs.next()) {
				int month = rs.getInt("month");
				count[month - 1] = rs.getInt("count");

			}

			for (int i = 0; i < count.length; i++)
				System.out.println(count[i]);
			//String data = JSON.stringify(count);
			
	%>
	<!-- /.container -->

	<!-- JavaScript -->
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script src="http://code.highcharts.com/highcharts.js"></script>
	<script src="http://code.highcharts.com/modules/exporting.js"></script>
	<script src="/js/jquery.min.js"></script>
	<script src="/js/highcharts.js"></script>

	<script type="text/javascript">

		function setChart() {
			//alert("var count::"+count);
			alert("in function");
			for(var i=0;i<count.length;i++)
			{
				
			}
			var str = "<%=count[0]%>";
			alert("str"+str);
			$('#chartcontainer')
					.highcharts(
							{
								chart : {
									type : 'column'
								},
								title : {
									text : 'Monthly Activity for the issue'
								},
								subtitle : {
									text : 'Source: BlogAnalysis.com'
								},
								xAxis : {
									categories : [ 'Jan', 'Feb', 'Mar', 'Apr',
											'May', 'Jun', 'Jul', 'Aug', 'Sep',
											'Oct', 'Nov', 'Dec' ]
								},
								yAxis : {
									min : 0,
									title : {
										text : 'Number of Comments'
									}
								},
								tooltip : {
									headerFormat : '<span style="font-size:10px">{point.key}</span><table>',
									pointFormat : '<tr><td style="color:{series.color};padding:0">{series.name}: </td>'
											+ '<td style="padding:0"><b>{point.y:.1f} activity</b></td></tr>',
									footerFormat : '</table>',
									shared : true,
									useHTML : true
								},
								plotOptions : {
									column : {
										pointPadding : 0.2,
										borderWidth : 0
									}
								},
								series : [ {
									name : 'Issue 1',
									data :[] 

								} ]
							});
		}
	</script>

</body>

</html>
