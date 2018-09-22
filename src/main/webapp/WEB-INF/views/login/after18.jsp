<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<%@include file="tap.jsp"%>
<html>
<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {packages:["orgchart"]});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Name');
            data.addColumn('string', 'Manager');
            data.addColumn('string', 'ToolTip');

            // For each orgchart box, provide the name, manager, and tooltip to show.
            data.addRows([
                [{v:'졸업요건', f:'졸업요건'},
                    '', '졸업요건'],
                [{v:'교양과정', f:'교양과정<div style="color:red; font-style:italic">34학점 이상</div>'},
                    '졸업요건', '교양과정'],
                ['교양과정', '졸업요건', ''],
                [{v:'전공과정',f:'전공과정<div style="color:red; font-style:italic">60학점 이상</div> '},
                    '졸업요건',  '전공과정'],
                [{v:'특별과정', f:'특별과정<div style="color:red; font-style:italic">15학점 이상</div> '},
                    '졸업요건', ''],
                [{v:'전공탐색과정', f:'전공탐색과정<div style="color:red; font-style:italic">19학점 이상</div> '},
                    '졸업요건', ''],

                ['학교가 정한 교과목 이수', '교양과정', ''],

                ['소속학과 정의한 필수과목 이수', '전공과정', ''],

                ['전공탐색 세미나 포함', '전공탐색과정', ''],
                ['타학부 3학점 이상 이수', '전공탐색과정', ''],

                ['전공기초', '특별과정', ''],
                ['전공심화', '특별과정', ''],
                ['복수전공', '특별과정', ''],
                ['부전공', '특별과정', ''],
                ['연계전공', '특별과정', ''],
                ['해외창', '특별과정', ''],
                ['평생교육사교육', '특별과정', ''],
                ['교직', '특별과정', ''],
                ['자기설계', '특별과정', ''],
                ['승인 얻은경우', '특별과정', '']
            ]);

            var options =
                {
                    size : 'midium' ,
                    allowHtml : true
                }
            // Create the chart.
            var chart = new google.visualization.OrgChart(document.getElementById('chart_div'));

            chart.draw(data, options);
            chart.collapse(2,false);
        }
    </script>
    <style>
        .log
        {
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -150px 0 0 -150px;
            width:300px;
            height:300px;
        }

        .log h5
        {
            color: #fff;
            letter-spacing: 1px;
            text-align: center;
            padding-right: 130;
        }
        .ch
        {
            position: absolute;
            top: 20%;
            right: 90%;
            width: 300px;
            height: 300px;

        }

    </style>
</head>
<body>

<div class="log">
    <h5>18학번 이후의 졸업요건 </h5>
    <div class="ch" id="chart_div"></div>
</div>

</body>
</html>
