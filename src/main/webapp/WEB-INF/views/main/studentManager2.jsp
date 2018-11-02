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
                                    <td>이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${ student.name }</td>
                                    <td>학과&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${ student.department.departmentName }</td>
                                </tr>
                                <tr>
                                    <td>학번&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${ student.id }</td>
                                    <td>이메일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${ student.email }</td>
                                </tr>
                                <tr>
                                    <td>학기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${ 6 }</td>
                                    <td style="color:red;">이수 학점&nbsp;&nbsp;?/130&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;총 학점:?/4.5&nbsp;&nbsp;&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>이수중인 과정&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${ student.detailType }</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>교수님 코멘트&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${ student.comment }</td>
                                    <td></td>
                                </tr>
                                </tbody>
                            </table>
                            <p class="category">

                                <form method="POST">
                                    <button type="submit" class="btn btn-primary" name="choice" value="1">전체</button>
                                    <button type="submit" class="btn btn-primary" name="choice" value="2">전공필수</button>
                                    <button type="submit" class="btn btn-primary" name="choice" value="3">교양필수</button>
                                    <button type="submit" class="btn btn-primary" name="choice" value="4">F학점</button>
                                </form>

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
                                <c:forEach var="lecture" items="${ student.myLecture }">
                                    <tr>
                                        <td>${ lecture.year }</td>
                                        <td>${ lecture.semester }</td>
                                        <td>${ lecture.id }</td>
                                        <td>${ lecture.title }</td>
                                        <td>${ lecture.detailType }</td>
                                        <td>${ lecture.credit }</td>
                                        <td>${ lecture.gradeA }</td>
                                    </tr>
                                </c:forEach>
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