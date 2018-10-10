<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

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
                                <h4 class="title">공지사항</h4>
                                <p class="category">졸업관리에 관한 내용이 업데이트됩니다. 수시로 확인해주세요</p>
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