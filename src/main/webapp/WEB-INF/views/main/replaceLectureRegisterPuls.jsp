<%--
  Created by IntelliJ IDEA.
  User: JiEun
  Date: 2018-11-04
  Time: 오후 8:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
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
                            <h4 class="title" style="padding-left: 500px"> 대체 할 과목</h4>
                            <br><br><br>
                            <p class="category" style="padding-left: 500px">
                                연도
                                <br>
                                <input type="text" class="form-control w-200" style="width: 200px" value="2018" disabled>
                                <br>
                                학기
                                <select class="form-control w-200" style="width: 200px">
                                    <option selected>1학기</option>
                                    <option>여름학기</option>
                                    <option>2학기</option>
                                    <option>겨울학기</option>
                                </select>
                                <br>
                                강의 ID
                                <input type="text" class="form-control w-200" style="width: 200px" >
                                <br>
                                제목
                                <input type="text" class="form-control w-200" style="width: 200px" >
                                <br>
                                전공타입
                                <select class="form-control w-200" style="width: 200px">
                                    <option selected>전공필수</option>
                                    <option>전공선택</option>
                                    <option>교양</option>
                                </select>
                                <br><br>
                                <button  type="button" class="btn btn-primary">등록</button><a href="studentManager.html"><button type="button" class="btn btn-default">목록으로</button></a>
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

