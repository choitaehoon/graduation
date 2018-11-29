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
                            <h4 class="title">수업 ${ lecture.year > 0 ? "수정" : "등록" }</h4>
                            <p class="category">수업관리</p>

                                <br />
                                <br />

                                <form:form method="post" modelAttribute="lecture">
                                    <table class="table table-condensed">
                                    <tbody>
                                    <tr>
                                        <form:hidden path="num"></form:hidden>
                                        <td>
                                            <label>년도</label>
                                            <form:input path="year" class="form-control" placeholder="년도" style="width: 100px" />
                                        </td>
                                        <td>
                                            <label>개설학기</label>
                                            <form:input path="semester" class="form-control" placeholder="개설학기" style="width: 100px" />
                                        </td>

                                        <td>
                                            <label>분반</label>
                                            <form:input path="split" class="form-control" placeholder="분반" style="width: 200px"/>
                                        </td>

                                        <td>
                                            <label>교수번호</label>
                                            <form:input path="admin_id" class="form-control"  placeholder="교수번호" style="width: 200px"/>
                                        </td>

                                    </tr>

                                    <tr>
                                        <td>
                                            <label>과목코드</label>
                                            <form:input path="id" class="form-control"   placeholder="과목코드" style="width: 200px" />

                                        </td>

                                        <td>
                                            <label>과목명</label>
                                                <form:input path="title" class="form-control" placeholder="과목명" style="width: 300px"/>
                                        </td>

                                        <td>
                                            <label>이수구분</label>

                                            <form:select path="subType"  class="form-control">
                                                <form:option value="전공"></form:option>
                                                <form:option value="교양"></form:option>
                                            </form:select>
                                                <%--<form:input path="subType" class="form-control" placeholder="전공or교양" style="width: 200px"/>--%>
                                        </td>
                                        <td>
                                            <label>이수학점</label>
                                                <form:input path="credit" class="form-control" placeholder="이수학점" style="width: 200px"/>
                                        </td>

                                    </tr>
                                    </tbody>




                                </table>

                                    <div id="buttons" class="pull-right">
                                        <button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-ok"></i> 저장</button>
                                        <c:if test="${ lecture.year > 0}">
                                        <a data-confirm-delete  href="delete?year=${lecture.year}&semester=${lecture.semester}&lecId=${lecture.id}&split=${lecture.split}&type=${member.type}&userId=${member.id}" class="btn btn-danger">
                                            <i class="glyphicon glyphicon-remove"></i>삭제
                                        </a>
                                        </c:if>
                                        <a href="manageClass?type=${member.type}&id=${member.id}&${pagination.queryString}" class="btn btn-default">
                                            <i class="glyphicon glyphicon-list"></i> 목록으로
                                        </a>

                                    </div>
                                </form:form>



                            <%--</div>--%>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <footer class="footer">
        <div class="container-fluid">

            <p class="copyright pull-right">
                <script>

                </script>

            </p>
        </div>
    </footer>



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
