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
    <link href='http://fonts.googleapis.com/css?family=Bevan' rel='stylesheet' type='text/css'>

</head>

<body>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!--<a class="navbar-brand" href="index.html">Straight Talk</a>-->
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li><a href="about.html">About Us</a>
                    </li>
                    <li><a href="contact.html">Contact Us</a>
                    </li>
                    <li><a href="topic.jsp">Topic</a>
                    <li class="active"><a href="chart.html">Pie Chart</a>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <div class="container">

        <div class="page-header" id="site-header">
            <h1>Straight Talk.. <small>because every opinion matters</small></h1>
        </div>

        <div class="row">

            <div class="col-md-9">
                <h1 style="margin-top: 0">University Library hours need to be extended to late night??</h1>
                <div class="clearfix" style="text-align: justify; padding: 20px; background: #eee; border: 2px solid #bbb; border-radius: 10px;">
                <div id="chartcontainer" style="width:100%; height:400px;"></div>

                    <a class="btn btn-block btn-primary" href="topic.html" style="margin-top: 20px;">&leftarrow; Go Back</a>
                </div>
            </div>

            <!-- End main content -->

            <div class="col-md-3">
                <p class="lead">Side Bar Links</p>
                <div class="list-group">
                    <a href="#" class="list-group-item active">
                        <h4 class="list-group-item-heading">Side Bar Link 1</h4>
                        <p class="list-group-item-text">This is content you can add your text here</p>
                      </a>
                    <a href="#" class="list-group-item">Side Bar Link 2</a>
                    <a href="#" class="list-group-item">Side Bar Link 3</a>
                    <a href="#" class="list-group-item">Side Bar Link 4</a>
                    <a href="#" class="list-group-item">Side Bar Link 5</a>
                    <a href="#" class="list-group-item active">Side Bar Link 6</a>
                </div>

                <button class="btn btn-danger btn-block btn-lg">Button</button>
            </div>

        </div>

    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p class="text-right">Copyright &copy; Company 2014 - Hardik Shah
                    </p>
                </div>
            </div>
        </footer>

    </div>
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

<script>
        $(function () {
        $('#chartcontainer').highcharts({
            title: {
                text: 'Monthly Activity On Blog Posts',
                x: -20 //center
            },
            subtitle: {
                text: 'Source: BlogAnalysis.com',
                x: -20
            },
            xAxis: {
                categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
            },
            yAxis:  {min:0,
                title: {
                    text: 'Total Number Of Comments'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                valueSuffix: '°C'
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'middle',
                borderWidth: 0
            },
            series: [{
                name: 'Post1',
                data: [7, 6, 9, 14, 18, 21, 25, 26, 23, 18, 13, 9]
            }, {
                name: 'Post2',
                data: [0, 0, 5, 11, 17, 22, 24, 21, 20, 14, 8, 2]
            }, {
                name: 'Post3',
                data: [1, 0, 3, 8, 13, 17, 18, 17, 14, 9, 3, 1]
            }, {
                name: 'Post4',
                data: [3, 4, 5, 8, 11, 15, 17, 16, 14, 10, 6, 4]
            },

                {
                name: 'Post5',
                data: [2, 4, 5, 8, 11, 15, 17, 16, 10, 15, 6, 4]
                },

                    {
                name: 'Post6',
                data: [2, 4, 5, 20, 11, 12, 17, 16, 10, 15,6, 4]


            }]
        });
    });
    </script>

</body>

</html>
