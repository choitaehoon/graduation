<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<head>
    <title>skhu 졸업요건</title>
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
                            <h4 class="title"> 학생 수정</h4>
                            <br><br><br>

                            <form:form method="post" modelAttribute="student" style="width:30%; margin-left:350;">
                                <input type="hidden" name="adminId" value="${member.id}">
                                <input type="hidden" name="type" value="${member.type}">
                                <div class="form-group">
                                    <label>학번:</label>
                                    <form:input path="id" class="form-control w200" />
                                </div>
                                <div class="form-group">
                                    <label>이름:</label>
                                    <input type="text" name="name1" value="${student.name}" class="form-control w200" />
                                </div>
                                <div class="form-group">
                                    <label>학과: </label>
                                    <form:select path="department_id" class="form-control w200"
                                                 itemValue="id" itemLabel="departmentName" items="${ departments  }" />
                                </div>
                                <hr/>
                                <div>
                                    <button type="submit" class="btn btn-primary">저장</button>
                                    <a href="deleteStudent?type=${member.type}&adminId=${member.id}&${pagination.queryString}&id=${student.id}" data-confirm-delete><button type="button" class="btn btn-danger">삭제</button></a>
                                    <a href="studentManager?type=${member.type}&id=${member.id}&${pagination.queryString}" class="btn btn-info">목록으로</a>
                                </div>
                            </form:form>


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

                <script></script>

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

<script src="${R}res/common.js"></script>
</html>
