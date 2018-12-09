
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />
<!doctype html>
<head>
    <title>skhu 졸업요건</title>
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
                            <h4 class="title">Q & A</h4>

                            <form:form method="post" modelAttribute="qna">
                                <div id="content">
                                    <h4>질문 등록</h4>
                                    <form method="post">

                                        <input type="hidden" name="type" value="${member.type}"  />
                                        <input type="hidden" name="userId" value="${member.id}" />
                                    </form>

                                    <label>제목</label>
                                    <div class="form-group">
                                        <form:input path="title" class="form-control" style="width: 300px" />
                                    </div>

                                    <label>내 용</label>
                                    <div class="form-group">
                                        <textarea name="body" id="body" cols="100" rows="18">
                                                    <c:out value="${qna.body}"/>
                                            </textarea>
                                    </div>


                                    <div id="buttons">
                                        <button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-ok"></i> 저장</button>
                                        <a class="btn btn-danger" href="#"><i class=" glyphicon glyphicon-remove"></i> 삭제</a>
                                        <a href="qna?type=${member.type}&id=${member.id}" class="btn btn-default"> <i class="glyphicon glyphicon-list"></i> 공지사항으로</a>

                                    </div>

                                </div>
                            </form:form>

                            <form>

                                <input type="hidden" name="type" value="${member.type}"  />
                                <input type="hidden" name="id" value="${member.id}" />
                                <input type="hidden" name="student_id" value="${student.id}" />
                            </form>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <footer class="footer">
        <div class="container-fluid">

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
