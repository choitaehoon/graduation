<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<%@include file="tap.jsp"%>

<html>
<head>
    <meta charset='UTF-8'>

    <title>Responsive Table</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="style/style.css"/>

    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet" media="screen">

    <style>


        * {
            margin: 0;
            padding: 0;
        }
        body {
            #            font: 14px/1.4 Georgia, Serif;
            #        }
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
            width: 80%;
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
            #            text-align: left;
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

<div class="log">
    <h4>소프트웨어공학과</h4>
    <h4>18학번 이후의 졸업요건 </h4>
    <div class="ch" id="chart_div"></div>
</div>


<div class="pull-right">
    <label>전공이름: </label>
    <input type="text" name="search" style="width: 122px;  height: 37px;">

    <button type="submit" class="btn">
        <span class=" glyphicon glyphicon-search"></span>조회</button>
</div>
<div>
    <a href="#"><span class=" glyphicon glyphicon-ok">등록</a>
    <a href="#"><span class=" glyphicon glyphicon-check">수정</a>
    <a href="#"><span class=" glyphicon glyphicon-remove">삭제</a>

</div>

<br>
<div style="text-align:center">
    <h2 >소프트웨어공학과 학생</h2>
    <br/>
    <div class="교양과정">
        <h3 margin="auto">교양과정</h3>

        <table class="교양과정">
            <thead>
            <tr>
                <th>졸업조건</th>
                <th>필수/선택</th>
                <th>과정이수조건</th>
                <th>세부과정</th>
                <th>하위세부</th>
                <th>최소이수학점</th>
                <th>하위영역</th>
                <th>영억 이수 조건</th>


            </tr>
            </thead>
            <tbody>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>


            </tr>


            </tbody>
        </table>
    </div>

    <br/>
    <div class="전공탐색과정">
        <h3 margin="auto">전공탐색과정</h3>

        <table class="전공탐색과정">
            <thead>
            <tr>
                <th>졸업조건</th>
                <th>필수/선택</th>
                <th>과정이수조건</th>
                <th>세부과정</th>
                <th>하위세부</th>
                <th>최소이수학점</th>
                <th>하위영역</th>
                <th>영억 이수 조건</th>


            </tr>
            </thead>
            <tbody>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>


            </tr>


            </tbody>
        </table>
    </div>

    <br/>
    <div class="전공과정">
        <h3 margin="auto">전공과정</h3>

        <table class="전공과정">
            <thead>
            <tr>
                <th>졸업조건</th>
                <th>필수/선택</th>
                <th>과정이수조건</th>
                <th>세부과정</th>
                <th>하위세부</th>
                <th>최소이수학점</th>
                <th>하위영역</th>
                <th>영억 이수 조건</th>


            </tr>
            </thead>
            <tbody>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>


            </tr>


            </tbody>
        </table>
    </div>

    <br/>


    <div class="특별과정">
        <h3 margin="특별과정">특별과정</h3>

        <table class="특별과정">
            <thead>
            <tr>
                <th>졸업조건</th>
                <th>필수/선택</th>
                <th>과정이수조건</th>
                <th>세부과정</th>
                <th>하위세부</th>
                <th>최소이수학점</th>
                <th>하위영역</th>
                <th>영억 이수 조건</th>


            </tr>
            </thead>
            <tbody>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>


            </tr>


            </tbody>
        </table>
    </div>

    <br/>
</div>



</body>
</html>
