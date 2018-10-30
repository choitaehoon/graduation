<<<<<<< HEAD
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>

</head>
<body>

<div class="wrapper">
    <%@include file="../menu/menu.jsp"%>

    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title">학생 졸업 관리</h4>
                            <br><br><br>
                            <table class="table table-condensed">
                                <tbody>
                                <tr>
                                    <td>이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;김모씨</td>
                                    <td>학과&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소프트웨어공학과</td>
                                </tr>
                                <tr>
                                    <td>학번&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;201432000</td>
                                    <td>이메일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;aaa@naver.com</td>
                                </tr>
                                <tr>
                                    <td>학기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6</td>
                                    <td style="color:red;">이수 학점&nbsp;&nbsp;130/110&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;총 학점:4.5/4&nbsp;&nbsp;&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>교수님 코멘트&nbsp;&nbsp;&nbsp;</td>
                                    <td>전필을빨리채우고 계절학기 수강하세요.</td>
                                </tr>
                                </tbody>
                            </table>
                            <p class="category">
                                <select>
                                    <option>전공필수</option>
                                    <option>이수학기별</option>
                                    <option>교양필수</option>
                                    <option>학점f조회</option>
                                    <option>전필 미수강조회</option>
                                    <option>교필 미수강조회</option>
                                    <option>기타과정 조회</option>
                                </select>
                                <input type="text">
                                <a href=#> <button type="submit" class="btn btn-primary">조회</button></a>


                            <table class="table table-striped" style="width:100%; max-width:100%; margin-bottom:20px;">
                                <thead>
                                <tr>
                                    <th>년도</th>
                                    <th>학기</th>
                                    <th>과목코드</th>
                                    <th>과목명</th>
                                    <th>이수구분</th>
                                    <th>학점</th>
                                    <th>성적등급</th>
                                </tr>
                                </thead>

                                <tbody>
                                <tr>
                                    <td>2014</td>
                                    <td>1학기</td>
                                    <td>AC00001</td>
                                    <td>채플(시네마채플)</td>
                                    <td>교필</td>
                                    <td>0.0</td>
                                    <td>p</td>
                                </tr>
                                <tr>
                                    <td>2014</td>
                                    <td>1학기</td>
                                    <td>AC00011</td>
                                    <td>인문학의 세계-느티아래 강좌</td>
                                    <td>교필</td>
                                    <td>3.0</td>
                                    <td>p</td>
                                </tr>
                                <tr>
                                    <td>2014</td>
                                    <td>1학기</td>
                                    <td>AE00009</td>
                                    <td>삶과 교육</td>
                                    <td>교선</td>
                                    <td>3.0</td>
                                    <td>p</td>
                                </tr>
                                <tr style="color:red">
                                    <td>2014</td>
                                    <td>1학기</td>
                                    <td>AE00012</td>
                                    <td>아시아사회와 문화</td>
                                    <td>교선</td>
                                    <td>3.0</td>
                                    <td>f</td>
                                </tr>
                                <tr>
                                    <td>2014</td>
                                    <td>1학기</td>
                                    <td>AE00022</td>
                                    <td>정보사회론</td>
                                    <td>교선</td>
                                    <td>3.0</td>
                                    <td>B</td>
                                </tr>
                                <tr>
                                    <td>2014</td>
                                    <td>1학기</td>
                                    <td>AF00011</td>
                                    <td>이산수학</td>
                                    <td>교선</td>
                                    <td>3.0</td>
                                    <td>B+</td>
                                </tr>
                                </tbody>
                            </table>

                            </p>



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
=======
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>

</head>
<body>

<div class="wrapper">
    <%@include file="../menu/menu.jsp"%>

    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title">학생 졸업 관리</h4>
                            <br><br><br>
                            <table class="table table-condensed">
                                <tbody>
                                <tr>
                                    <td>이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;김모씨</td>
                                    <td>학과&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소프트웨어공학과</td>
                                </tr>
                                <tr>
                                    <td>학번&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;201432000</td>
                                    <td>이메일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;aaa@naver.com</td>
                                </tr>
                                <tr>
                                    <td>학기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6</td>
                                    <td style="color:red;">이수 학점&nbsp;&nbsp;130/110&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;총 학점:4.5/4&nbsp;&nbsp;&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>교수님 코멘트&nbsp;&nbsp;&nbsp;</td>
                                    <td>전필을빨리채우고 계절학기 수강하세요.</td>
                                </tr>
                                </tbody>
                            </table>
                            <p class="category">
                                <select>
                                    <option>전공필수</option>
                                    <option>이수학기별</option>
                                    <option>교양필수</option>
                                    <option>학점f조회</option>
                                    <option>전필 미수강조회</option>
                                    <option>교필 미수강조회</option>
                                    <option>기타과정 조회</option>
                                </select>
                                <input type="text">
                                <a href=#> <button type="submit" class="btn btn-primary">조회</button></a>


                            <table class="table table-striped" style="width:100%; max-width:100%; margin-bottom:20px;">
                                <thead>
                                <tr>
                                    <th>년도</th>
                                    <th>학기</th>
                                    <th>과목코드</th>
                                    <th>과목명</th>
                                    <th>이수구분</th>
                                    <th>학점</th>
                                    <th>성적등급</th>
                                </tr>
                                </thead>

                                <tbody>
                                <tr>
                                    <td>2014</td>
                                    <td>1학기</td>
                                    <td>AC00001</td>
                                    <td>채플(시네마채플)</td>
                                    <td>교필</td>
                                    <td>0.0</td>
                                    <td>p</td>
                                </tr>
                                <tr>
                                    <td>2014</td>
                                    <td>1학기</td>
                                    <td>AC00011</td>
                                    <td>인문학의 세계-느티아래 강좌</td>
                                    <td>교필</td>
                                    <td>3.0</td>
                                    <td>p</td>
                                </tr>
                                <tr>
                                    <td>2014</td>
                                    <td>1학기</td>
                                    <td>AE00009</td>
                                    <td>삶과 교육</td>
                                    <td>교선</td>
                                    <td>3.0</td>
                                    <td>p</td>
                                </tr>
                                <tr style="color:red">
                                    <td>2014</td>
                                    <td>1학기</td>
                                    <td>AE00012</td>
                                    <td>아시아사회와 문화</td>
                                    <td>교선</td>
                                    <td>3.0</td>
                                    <td>f</td>
                                </tr>
                                <tr>
                                    <td>2014</td>
                                    <td>1학기</td>
                                    <td>AE00022</td>
                                    <td>정보사회론</td>
                                    <td>교선</td>
                                    <td>3.0</td>
                                    <td>B</td>
                                </tr>
                                <tr>
                                    <td>2014</td>
                                    <td>1학기</td>
                                    <td>AF00011</td>
                                    <td>이산수학</td>
                                    <td>교선</td>
                                    <td>3.0</td>
                                    <td>B+</td>
                                </tr>
                                </tbody>
                            </table>

                            </p>



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
>>>>>>> 44136d9c4391a5d8fedc9223734d4725dc979a0d
