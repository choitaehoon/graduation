<%--
  Created by IntelliJ IDEA.
  User: JiEun
  Date: 2018-10-14
  Time: 오전 12:52
  To change this template use File | Settings | File Templates.
--%>
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
                            <h4 class="title">대체 과목 관리</h4>


                            <div id="content">
                                <br />
                                <h1>대체 과목 수정</h1>
                                <br /> <label>제목</label>
                                <div class="form-group">
                                    <input type="text" style="width: 300px" value="[소프트웨어공학과] 데이터베이스 개론 수업 관련" />
                                </div>
                                <label>내 용</label>
                                <div class="form-group">
											<textArea cols=100 rows=18>



											</textArea>
                                </div>

                                <div>
                                    <form>
                                        파일 첨부  <input type="file"> * 2MB까지 가능
                                    </form>
                                </div>

                                <div id="buttons">
                                    <a class="btn btn-primary"> <i
                                            class="glyphicon glyphicon-ok"></i> 저장
                                    </a> <a class="btn btn-danger" href="#"><i
                                        class=" glyphicon glyphicon-remove"></i> 삭제</a> <a href="#"
                                                                                           class="btn btn-default"> <i
                                        class="glyphicon glyphicon-list"></i> 대체 과목 페이지로
                                </a>

                                </div>

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
                <script>
                    document.write(new Date().getFullYear())
                </script>
                <a href="http://www.creative-tim.com">Creative Tim</a>, made with
                love for a better web
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
