<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<%@include file="tap.jsp"%>
<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {'packages':['bar']});
        google.charts.setOnLoadCallback(drawStuff);

        function drawStuff() {
            var data = new google.visualization.arrayToDataTable([
                ['', 'Percentage'],
                ["교양과정", 44],
                ["전공과정", 31],
                ["특별과정", 12],
                ['완료기준', 100],
            ]);

            var options = {
                width: 900,
                legend: { position: 'none' },
                bars: 'horizontal', // Required for Material Bar Charts.
                axes: {
                    x: {
                        0: { side: 'top', label: 'Percentage'} // Top x-axis.
                    }
                },
                bar: { groupWidth: "90%" },
                chartArea: {
                    backgroundColor: {
                        fill: '#092756',
                        opacity: 100
                    }
                }

            };

            var chart = new google.charts.Bar(document.getElementById('top_x_div'));
            chart.draw(data, options);
        };
    </script>
</head>

<body>


<div class="login">
    <h5>졸업 요건 현황</h5>

</div>


<div class="chart" id="top_x_div" style="width: 500px; height: 500px;"></div>


</body>
</html>
