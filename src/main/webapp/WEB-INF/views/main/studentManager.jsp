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
                                <h4 class="title"> 졸업 관리</h4>
                                <br><br><br>
                                <p class="category">
                                    <select>
                                        <option>이름</option>
                                        <option>학과별</option>
                                        <option>학번</option>
                                    </select>
                                    <input type="text">
                                    <a href=""> <button type="submit" class="btn btn-primary">조회</button></a>


                                <table class="table table-striped" style="width:100%; max-width:100%; margin-bottom:20px;">
                                    <thead>
                                    <tr>
                                        <th>학번</th>
                                        <th>이름</th>
                                        <th>이메일</th>
                                        <th>학과</th>
                                        <th>권한</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach var="student" items="${ students }">
                                        <tr data-url="studentManager2?studentId=${ student.id }&type=${member.type}&id=${member.id}">
                                            <td>${ student.id }</td>
                                            <td>${ student.name }</td>
                                            <td>${ student.email }</td>
                                            <td>${ student.department.departmentName}</td>
                                            <td><button class="btn btn-primary">수정</button></td>
                                        </tr>
                                    </c:forEach></tbody>
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
