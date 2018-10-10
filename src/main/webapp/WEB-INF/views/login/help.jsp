<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="menu.jsp"%>
<c:url var="R" value="/" />
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

    <script>
        function fnMove(seq){
            var offset = $("#div" + seq).offset();
            $('html, body').animate({scrollTop : offset.top}, 400);
        }
    </script>



</head>
<div class="wrapper">
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h1 class="title">도움말</h1>
                                <p class="category">졸업 관리 홈페이지 사용법</p>
                            </div>

                            <div class="wrapper">
                                <div id="three-column" class="container">
                                    <div id="tbox1">
                                        <div class="title">
                                            <h3>졸업 관리란?</h2>
                                        </div>
                                        <p>복잡한 졸업에 필요한 여러 부수적인 것을 보다 보기 쉽게 만든 페이지 입니다.</p>
                                        <p>자신이 속한 학과, 학번에 따라 달라지는 졸업요건 현황을 알기 쉽게 설명해 놓은 페이지 입니다.</p>
                                        <a href="graduationinfo.html" class="button">졸업 관리 페이지로 가기</a> </div>
                                    <div id="tbox2">
                                        <div class="title">
                                            <h2>쪽지</h2>
                                        </div>
                                        <p>중요한 소식을 놓치기 않기위해 알림으로서 해당학과에 속한 중요한 변경 혹은 추가 내용을 확인할 수 있는 기능입니다.</p>
                                        <a href="message.html" class="button">메시지 함으로 가기</a> </div>
                                    <div id="tbox3">
                                        <div class="title">
                                            <h2>공지사항</h2>
                                        </div>
                                        <p>일반 공지와 대체 과목 공지로 나누어져 있습니다. 전 학년 학과 학번에 걸쳐 다양한 변경, 수정 내용이 업로드 됩니다.</p>
                                        <h4>대체 과목 공지란? </h4>
                                        <p>변화되는 수업 일정으로 필수 수업이 바뀌였을 경우 알려주는 공지사항 페이지 입니다.</p>

                                    </div>

                                </div>
                            </div>
                        </div>


                        <footer class="footer">
                            <div class="container-fluid">
                                <p class="copyright pull-right">
                                    &copy; <script>document.write(new Date().getFullYear())</script> <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web
                                </p>
                            </div>
                        </footer>


                    </div>
                </div>


                </body>

<!--   Core JS Files   -->
<script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>

</html>
