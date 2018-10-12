<%--
  Created by IntelliJ IDEA.
  User: JiEun
  Date: 2018-10-12
  Time: 오후 5:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>SKHU 졸업관리</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="azure" data-image="assets/img/logo.jpg">

        <!--

            Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
            Tip 2: you can also add an image using data-image tag

        -->

        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text">
                    SKHU 졸업관리
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a href="dashboardManager.html">
                        <i class="pe-7s-graph"></i>
                        <p>메인 페이지</p>
                    </a>
                </li>
                <li>
                    <a href="myinfo.html">
                        <i class="pe-7s-user"></i>
                        <p>나의 정보</p>
                    </a>
                </li>
                <li>
                    <a href="graduationinfo.html">
                        <i class="pe-7s-bell"></i>
                        <p>졸업관리</p>
                    </a>
                </li>
                <li>
                    <a href="notice.html">
                        <i class="pe-7s-note2"></i>
                        <p>공지사항</p> </a>
                    <ul >
                        <li><a href="notice.html">일반 공지</a></li>
                        <li><a href="replaceSubject.html">대체과목 공지</a></li>
                    </ul>
                </li>
                <li>
                    <a href="q&a.html">
                        <i class="pe-7s-smile"></i>
                        <p>Q&A</p> </a>
                </li>
                <li>
                    <a href="help.html">
                        <i class="pe-7s-news-paper"></i>
                        <p>도움말</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">관리자</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope"></i>
                                <b class="caret hidden-lg hidden-md"></b>
                                <p class="hidden-lg hidden-md">
                                    4 Notifications
                                    <b class="caret"></b>
                                </p>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">소프웨어공학과 대체 과목 공지</a></li>
                                <li><a href="#">소프웨어공학과 수강 변경 공지</a></li>
                                <li><a href="#">컴퓨터공학과 공지</a></li>
                                <li><a href="#">컴퓨터공학과 수강 변경 공지</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-cog"></i>
                                <p class="hidden-lg hidden-md">Setting</p>
                            </a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <!--                         <li class="dropdown">
                                                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                            <p>
                                                                Dropdown
                                                                <b class="caret"></b>
                                                            </p>

                                                      </a>
                                                      <ul class="dropdown-menu">
                                                        <li><a href="#">Action</a></li>
                                                        <li><a href="#">Another action</a></li>
                                                        <li><a href="#">Something</a></li>
                                                        <li><a href="#">Another action</a></li>
                                                        <li><a href="#">Something</a></li>
                                                        <li class="divider"></li>
                                                        <li><a href="#">Separated link</a></li>
                                                      </ul>
                                                </li> -->
                        <li>
                            <a href="#">
                                <p>Log out</p>
                            </a>
                        </li>
                        <li class="separator hidden-lg"></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">대체 과목 관리</h4>
                                <p class="category">대체 과목 관리에 관한 내용이 업데이트 됩니다. 수시로 확인해 주세요</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                    <th>no</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>작성일</th>
                                    <th>조회수</th>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>32</td>
                                        <td>[소프트웨어공학과] 데이터베이스 개론 수업 관련</td>
                                        <td>관리자</td>
                                        <td>2018-09-19 </td>
                                        <td>317</td>
                                    </tr>
                                    <tr>
                                        <td>31</td>
                                        <td>[소프트웨어공학과] C++ 수업 관련</td>
                                        <td>관리자</td>
                                        <td>2018-09-13</td>
                                        <td>245</td>
                                    </tr>
                                    <tr>
                                        <td>30</td>
                                        <td>[컴퓨터공학과] 보안 시스템 수업 관련</td>
                                        <td>관리자</td>
                                        <td>2018-09-13</td>
                                        <td>226</td>
                                    </tr>
                                    <tr>
                                        <td>29</td>
                                        <td>[신학과] 채플 수업 관련</td>
                                        <td>관리자</td>
                                        <td>2018-09-13</td>
                                        <td>184</td>
                                    </tr>
                                    <tr>
                                        <td>28</td>
                                        <td>[소프트웨어공학과] 데이터베이스 개론 수업 관련</td>
                                        <td>관리자 </td>
                                        <td>2018-09-07</td>
                                        <td>360</td>
                                    </tr>
                                    <tr>
                                        <td>27</td>
                                        <td>[경영학과] 회계학 원론 수업 관련</td>
                                        <td>관리자</td>
                                        <td>2018-09-05 </td>
                                        <td>267</td>
                                    </tr>
                                    </tbody>
                                </table>

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
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>


</html>
