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
                            <h4 class="title">폐지과목 ${ replaceLecture.closeLecture.length() > 0 ? "수정" : "등록" }</h4>
                            <p class="category">대체과목관리</p>

                            <br />
                            <br />

                            <form:form method="post" modelAttribute="replaceLecture">
                                <table class="table table-condensed">
                                    <tbody>
                                    <tr>
                                        <td>
                                            <label>담당학과</label>
                                            <form:input path="department" class="form-control"   placeholder="담당학과" style="width: 200px"/>

                                        </td>
                                        <td>
                                            <label>폐지과목코드</label>
                                            <form:input path="closeLecture" class="form-control"   placeholder="폐지과목코드" style="width: 200px"/>
                                        </td>

                                        <td>
                                            <label>폐지과목명</label>
                                            <form:input path="closeLecTitle" class="form-control"   placeholder="폐지과목명" style="width: 200px"/>

                                        </td>

                                        <td>
                                            <label>이수구분</label>
                                            <form:input path="subType" class="form-control"   placeholder="이수구분" style="width: 200px"/>

                                        </td>

                                    </tr>

                                    <tr>
                                        <td>
                                            <label>이수학점</label>
                                            <form:select path="credit" class="form-control" style="width:100px">
                                                <form:option value="0"/>
                                                <form:option value="1"/>
                                                <form:option value="2"/>
                                                <form:option value="3"/>
                                                <form:option value="4"/>
                                                <form:option value="5"/>
                                                <form:option value="6"/>
                                            </form:select>

                                        </td>

                                        <td>
                                            <label>대체과목코드</label>
                                            <form:input path="replaceLecture" class="form-control"   placeholder="대체과목코드" style="width: 200px"/>
                                        </td>

                                        <td>
                                            <label>대체과목명</label>
                                            <form:input path="replaceLecTitle" class="form-control"   placeholder="대체과목명" style="width: 200px"/>

                                        </td>

                                    </tr>
                                    </tbody>




                                </table>

                                <div id="buttons" class="pull-right">
                                    <button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-ok"></i> 저장</button>
                                    <c:if test="${replaceLecture.closeLecture.length()>0}">
                                    <a data-confirm-delete  href="closeLecDelete?closeLecture=${replaceLecture.closeLecture}&type=${member.type}&id=${member.id}" class="btn btn-danger">
                                        <i class="glyphicon glyphicon-remove"></i>삭제
                                    </a>
                                    </c:if>
                                    <a href="replaceLecture?type=${member.type}&id=${member.id}&${pagination.queryString}" class="btn btn-default">
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
