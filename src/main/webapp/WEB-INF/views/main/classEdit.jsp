<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <c:url var="R" value="/" />
    <!doctype html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
              rel="stylesheet" media="screen">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="${R}res/common.css">
        <script src="${R}res/common.js"></script>

    <style>
        #content {
            margin-left: 30%;
            height: 800px;
        }
    </style>

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
                            <h4 class="title">수업 관리</h4>
                            <p class="category">수업 등록</p>



                            <div id="content">
                                <br />
                                <h1>수업 등록</h1>
                                <br />

                                <form:form method="post" modelAttribute="lecture">
                                <label>개설학기</label>
                                <div class="form-group">
                                    <form:input class="form-control" path="semester" style="width: 100px" />
                                </div>

                                <label>과목코드</label>
                                <div class="form-group">
                                    <form:input class="form-control" path="id" style="width: 200px" />
                                </div>

                                <label>분반</label>
                                <div class="form-group">
                                    <form:input class="form-control" path="split" style="width: 200px"/>
                                </div>
                                <label>교수</label>
                                <div class="form-group">
                                    <form:input class="form-control" path="admin_id" style="width: 200px"/>
                                </div>
                                <label>과목명</label>
                                <div class="form-group">
                                    <form:input class="form-control" path="title" style="width: 200px"/>
                                </div>
                                <label>이수구분</label>
                                <div class="form-group">
                                    <form:input class="form-control" path="subType" style="width: 200px"/>
                                </div>
                                <label>이수학점</label>
                                <div class="form-group">
                                    <form:input class="form-control" path="credit" style="width: 200px"/>
                                </div>

                                <div id="buttons">
                                    <a class="btn btn-primary"> <i
                                            class="glyphicon glyphicon-ok"></i> 저장
                                    </a> <a class="btn btn-default"> <i
                                        class="glyphicon glyphicon-list"></i> 목록으로
                                </a>

                                </div>
                                </form:form>
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
