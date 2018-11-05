<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/defer/header.jsp"%>
<%@include file="/defer/tap.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet" media="screen">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${R}res/common.js"></script>
    <link rel="stylesheet" href="${R}res/common.css">

    <style type="text/css" media="screen">
        #content{
            margin-left: 30%;
            height: 800px;
        }

        * {
            margin: 0;
            padding: 0;
        }
        body {
                        font: 14px/1.4 Georgia, Serif;
                    }
        #page-wrap {
            margin: 50px;
        }
        p {
            margin: 20px 0;
        }

        /*
        Generic Styling, for Desktops/Laptops
        */
        table {
            width: 70%;
            margin:auto;
            border-collapse: collapse;
        }
        /* Zebra striping */
        tr:nth-of-type(odd) {
            background: #eee;
        }
        th {
            background: #333;
            color: white;
            font-weight: bold;
            text-align: center;
        }
        td, th {
            padding: 6px;
            border: 1px solid #ccc;
                        text-align: left;
        }

        @media
        only screen and (max-width: 760px),
        (min-device-width: 768px) and (max-device-width: 1024px)  {

            /* Force table to not be like tables anymore */
            table, thead, tbody, th, td, tr {
                display: block;
            }

            /* Hide table headers (but not display: none;, for accessibility) */
            thead tr {
                position: absolute;
                top: -9999px;
                left: -9999px;
            }

            tr { border: 1px solid #ccc; }

            td.block
            {
                border: 1px solid black;
            }
            td {
                /* Behave  like a "row" */
                border: none;
                border-bottom: 1px solid #eee;
                position: relative;
                padding-left: 50%;
            }

            td:before {
                /* Now like a table header */
                position: absolute;
                /* Top/left values mimic padding */
                top: 6px;
                left: 6px;
                width: 45%;
                padding-right: 10px;
                white-space: nowrap;
            }

            /*
            Label the data
            */
            td:nth-of-type(1):before { content: "졸업조건"; }
            td:nth-of-type(2):before { content: "기타졸업조건"; }

        }

        /* Smartphones (portrait and landscape) ----------- */
        @media only screen
        and (min-device-width : 320px)
        and (max-device-width : 480px) {
            body {
                padding: 0;
                margin: 0;
                width: 320px; }
        }

        /* iPads (portrait and landscape) ----------- */
        @media only screen and (min-device-width: 768px) and (max-device-width: 1024px) {
            body {
                width: 495px;
            }
        }

    </style>









</head>
<body>


    <div style="text-align:center">
        <br/>
        <h2 >소프트웨어공학과 전공필수</h2>
        <br/>
        <table class="전공필수">
            <thead>
            <tr>
                <th>학년</th>
                <th>학기</th>
                <th>2008~2013</th>
                <th>2014~2017</th>

            </tr>
            </thead>
            <tbody>
            <tr>
                <td rowspan="2" class="block"> 1</td>
                <td>1</td>
                <td> C프로그래밍I(3), 과정지도1(1)</td>
                <td> C프로그래밍I(3), 과정지도1(1)</td>

            </tr>

            <tr>
                <td>2</td>
                <td>
                    C프로그래밍II(3), 과정지도2(1)
                </td>
                <td>
                    웹페이지구축I(3), 과정지도2(1)
                </td>

            </tr>

            <tr>
                <td rowspan="2">2</td>
                <td>1</td>
                <td>
                    컴퓨터구조(3), Java프로그래밍(3)<br/>
                    데이터베이스개론(3), 과정지도3(1)
                </td>
                <td>
                    컴퓨터구조(3), Java프로그래밍(3)<br/>
                    데이터베이스개론(3), 과정지도3(1)
                </td>

            </tr>

            <tr>
                <td>2</td>
                <td>
                    웹프로그래밍I(3), 자료구조론(3)<br/>
                    운영체제론(3), 과정지도4(1)
                </td>
                <td>
                    자료구조론(3)<br/>
                    운영체제론(3), 과정지도4(1)
                </td>

            </tr>

            <tr>
                <td rowspan="2">3</td>
                <td>1</td>
                <td>
                    알고리즘(3), 시스템분석및설계(3)<br/>
                    과정지도5(1)
                </td>
                <td>
                    알고리즘(3)<br/>
                    과정지도5(1)
                </td>

            </tr>

            <tr>
                <td>2</td>
                <td>
                    과정지도6(1)
                </td>
                <td>
                    과정지도6(1)
                </td>

            </tr>

            <tr>
                <td >4</td>
                <td>1,2</td>
                <td>졸업지도(1) </td>
                <td>졸업지도(1) </td>

            </tr>

            <tr>
                <td colspan="2">합계</td>
                <td>37</td>
                <td>31</td>

            </tr>


            </tbody>
        </table>
        *2015학번까지 과정지도 6개중 5개만 이수해도 인정함

        <br/>

        <div id="buttons">
            <a class="btn btn-primary">
                <i class="glyphicon glyphicon-ok"></i> 저장</a>

            <a class="btn btn-danger" href="#"><i class=" glyphicon glyphicon-remove"></i> 삭제</a>
            <a  href="#" class="btn btn-default" >
                <i class="glyphicon glyphicon-list"></i> 졸업요건으로</a>

        </div>
    </div>


</body>
</html>
