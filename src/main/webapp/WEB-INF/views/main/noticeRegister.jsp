ange this template use File | Settings | File Templates.

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
                            <h4 class="title">공지사항 관리</h4>

                            <form:form method="post" modelAttribute="notice">
                            <div id="content">
                                    <%--                        <br />--%>
                                <h4>공지사항 등록</h4>
                                <br />
                                <form method="post">
                                        <%--<input type="hidden" name="pg" value="1">--%>
                                    <input type="hidden" name="type" value="${member.type}"  />
                                    <input type="hidden" name="userId" value="${member.id}" />
                                </form>
                                <label>제목</label>
                                <div class="form-group">
                                    <form:input path="title" class="form-control" style="width: 100px" />
                                </div>
                                <%--<label>교수번호</label>
                                <form:input path="admin_id" class="form-control"  placeholder="교수번호" style="width: 200px"/>--%>
                                <label>내 용</label>
                                <div class="form-group">
                                        <%--											<textArea cols=100 rows=18>						</textArea>--%>
                                    <textarea name="body" id="body" cols="100" rows="18"></textarea>
                                        <%--<form:input <textarea name="" id="" cols="30" rows="10"></textarea> path="body" class="form-control" style="width: 100px height: 3000px" />--%>
                                </div>

                                <div>
                                    날짜 : <form:input path="time"  class="form-control" style="width: 100px"/><br>
                                    파일 첨부  <input type="file"> * 2MB까지 가능
                                </div>

                                <div id="buttons">
                                    <button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-ok"></i> 저장</button>
                                    <a class="btn btn-danger" href="#"><i class=" glyphicon glyphicon-remove"></i> 삭제</a>
                                    <a href="notice?type=${member.type}&id=${member.id}" class="btn btn-default"> <i class="glyphicon glyphicon-list"></i> 공지사항으로</a>

                                </div>

                            </div>

                                <%--                                <div id="buttons" class="pull-right">
                                                                    <button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-ok"></i> 저장</button>

                                                                   &lt;%&ndash; <a data-confirm-delete  href="delete?year=${lecture.year}&semester=${lecture.semester}&lecId=${lecture.id}&split=${lecture.split}&type=${member.type}&userId=${member.id}" class="btn btn-danger">
                                                                        <i class="glyphicon glyphicon-remove"></i>삭제
                                                                    </a>&ndash;%&gt;

                                                                    <a href="notice?type=${member.type}&id=${member.id}" class="btn btn-default">
                                                                        <i class="glyphicon glyphicon-list"></i> 목록으로
                                                                    </a>--%>

                        </div>
                        </form:form>

                        <form>
                            <%--                            <input type="hidden" name="pg" value="1">--%>
                            <input type="hidden" name="type" value="${member.type}"  />
                            <input type="hidden" name="id" value="${member.id}" />
                          <%--  <input type="hidden" name="admin_id" value="${member.id}" />--%>
                        </form>


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
