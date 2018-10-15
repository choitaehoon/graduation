
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="/res/circle.css">
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
                            <h4 class="title">졸업 관리</h4>
                            <p class="category">나의 졸업 관리 페이지입니다.</p>
                            <br/>
                            <h2 class="title">소프트웨어공학과</h2>
                            <h4 class="title">-전공 심화 과정</h4>
                        </div>
                        <div class="content table-responsive table-full-width">
                            <table class="table table-hover table-striped">
                                <div class="pull-right" style="margin-right:10px;">
                                    <label>과정 선택 : </label>
                                    <select >
                                        <option >소프트웨어공학과 전공심화과정</option>
                                        <option >소프트웨어공학과 전공기초과정</option>
                                        <option >소프트웨어공학과 복수전공과정</option>
                                        <option >소프트웨어공학과 전공특별과정</option>
                                    </select>
                                </div>
                                <tr>
                                    <td>
                                        <h3>총 학점</h3>
                                        <div class="c100 p74 big">
                                            <span>74%</span>
                                            <div class="slice">
                                                <div class="bar"></div>
                                                <div class="fill"></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <h2>● 97/130</h2>
                                        <h3>-전공과목 18학점 부족</h3>
                                        <h3>-교양과목 18학점 부족</h3>
                                    </td>
                                    </td>
                                    <td>
                                        <h3>전공 학점</h3>
                                        <div class="c100 p69 orange big">
                                            <span>69%</span>
                                            <div class="slice">
                                                <div class="bar"></div>
                                                <div class="fill"></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <h2>● 42/60</h2>
                                        <h3>-'알고리즘' 과목 미수강</h3>
                                        <h3>-'자료구조' 과목 미수강</h3>
                                        <h3>-'졸업지도' 과목 미수강</h3>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <h3>채플 이수</h3>
                                        <div class="c100 p50 green big">
                                            <span>1/2</span>
                                            <div class="slice">
                                                <div class="bar"></div>
                                                <div class="fill"></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <h2>● 1/2</h2>
                                        <h3>-'채플' 1회 미수강</h3>
                                    </td>
                                    <td>
                                        <h3>봉사 이수</h3>
                                        <div class="c100 p0 big">
                                            <span>0/1</span>
                                            <div class="slice">
                                                <div class="bar"></div>
                                                <div class="fill"></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <h2>● 0/1</h2>
                                        <h3>-'사회봉사' 1회 미수강</h3>
                                    </td>
                                </tr>
                            </table>
                            <div class="pull-right" style="margin-right:10px;">
                                <button class="btn btn-primary">수강내역 엑셀 업로드</button>
                                <button class="btn btn-danger" >삭제</button>
                            </div>
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

<!--  table  -->
<link href="assets/css/style.css" rel="stylesheet" />
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        rel="stylesheet" media="screen">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</html>
