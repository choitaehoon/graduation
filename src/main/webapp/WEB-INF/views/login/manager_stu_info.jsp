
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Title</title>

    <style>

        body
        {
            line-height: 1.6em;
        }

        #hor-minimalist-a
        {
            font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
            font-size: 12px;
            background: #fff;
            margin: 45px;
            width: 80%;
            border-collapse: collapse;
            text-align: left;
        }
        #hor-minimalist-a th
        {
            font-size: 14px;
            font-weight: normal;
            color: #039;
            padding: 10px 8px;
            border-bottom: 2px solid #6678b1;
        }
        #hor-minimalist-a td
        {
            color: #669;
            padding: 9px 8px 0px 8px;
        }
        #hor-minimalist-a tbody tr:hover td
        {
            color: #009;
        }

    </style>
</head>
<body>
<div class="wrapper">
    <%@include file="menu.jsp"%>

    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title">학생 조회</h4>
                            <p class="category">학생조회세부</p>
                            <div>
                            <table id="hor-minimalist-a" summary="Employee Pay Sheet">
                                <thead>
                                <tr>
                                    <th scope="col">이름</th>
                                    <th scope="col">학과</th>
                                    <th scope="col">학번</th>
                                    <th scope="col">학기</th>
                                    <th scope="col">전화번호</th>
                                    <th scope="col">이메일</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>김모씨</td>
                                    <td>소프트웨어공학과</td>
                                    <td>201432000</td>
                                    <td>6</td>
                                    <td>010-1111-2222</td>
                                    <td>aaa@naver.com</td>
                                </tr>

                                </tbody>
                            </table>
                            </div>
                            <br>
                            <br>


                            <h4>수강한 과목</h4>
                            <br>
                            <h5>전체 취득학점 93.0 전체 평점 3.77 백분율 92.7</h5>
                            <div>
                            <table id="hor-minimalist-a" summary="Employee Pay Sheet">

                                <thead>
                                <tr>
                                    <th scope="col">년도</th>
                                    <th scope="col">학기</th>
                                    <th scope="col">과목코드</th>
                                    <th scope="col">과목명</th>
                                    <th scope="col">이수구분</th>
                                    <th scope="col">학점</th>
                                    <th scope="col">성적</th>

                                </tr>
                                </thead>
                                <tbody>

                                <tr>
                                    <td>2017</td>
                                    <td>1학기</td>
                                    <td>AC00004</td>
                                    <td>영어I</td>
                                    <td>교선</td>
                                    <td>3</td>
                                    <td>BO</td>
                                </tr>
                                <tr>
                                    <td>2017</td>
                                    <td>1학기</td>
                                    <td>AF00011</td>
                                    <td>이산수학</td>
                                    <td>교선</td>
                                    <td>3</td>
                                    <td>BO</td>
                                </tr>
                                <tr>
                                    <td>2017</td>
                                    <td>1학기</td>
                                    <td>IB00001</td>
                                    <td>C프로그래밍</td>
                                    <td>전필</td>
                                    <td>3</td>
                                    <td>C+</td>
                                </tr>
                                <tr>
                                    <td>2017</td>
                                    <td>1학기</td>
                                    <td>IB00002</td>
                                    <td>과정지도1</td>
                                    <td>전필</td>
                                    <td>1</td>
                                    <td>P</td>
                                </tr>
                                <tr>
                                    <td>2017</td>
                                    <td>1학기</td>
                                    <td>AF00016</td>
                                    <td>대학물리와 실험II</td>
                                    <td>교선</td>
                                    <td>3</td>
                                    <td>A0</td>
                                </tr>
                                <tr>
                                    <td>2017</td>
                                    <td>1학기</td>
                                    <td>AF00004</td>
                                    <td>지구환경과학</td>
                                    <td>교선</td>
                                    <td>3</td>
                                    <td>C+</td>
                                </tr>
                                <tr>
                                    <td>2017</td>
                                    <td>1학기</td>
                                    <td>AF00016</td>
                                    <td>홈페이지제작</td>
                                    <td>교선</td>
                                    <td>3</td>
                                    <td>A0</td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                        <br>
                        <br>



                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<footer class="footer">
    <div class="container-fluid">

        <p class="copyright pull-right">
            &copy;
            <script>document.write(new Date().getFullYear())</script>
            <a href="http://www.creative-tim.com">Creative Tim</a>, made with
            love for a better web
        </p>
    </div>
</footer>


</div>
</div>


</body>
<!--   Core JS Files   -->
<script src="${R}assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="${R}assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="${R}assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="${R}assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="${R}assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="${R}assets/js/demo.js"></script>
</html>