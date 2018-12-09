<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />
<!doctype html>
<head>
    <title>skhu 졸업요건</title>
    <link href="http://nethna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
          rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(function() {
            $("div.pagination a").click(function() {
                $("input[name=pg]").val($(this).attr("data-page"));
                $("form").submit();
            });
        });
    </script>

    <link rel="stylesheet" href="${R}res/common.css">
    <script src="${R}res/common.js"></script>

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
                                <h4 class="title"> 학생 관리</h4>
                                <br><br><br>
                                <p class="category">

                                <div class="pull-right mb5">
                                    <form method="POST">
                                       <a href="studentManager?type=${member.type}&id=${member.id}" class="btn btn-default">전체 학생</a>
                                        <button type="submit" class="btn btn-danger" name="btn" value="1">요건 미충족 학생</button>
                                    </form>
                                </div>

                                <form>
                                <input type="hidden" name="pg" value="1">
                                <input type="hidden" name="type" value="${member.type}"  />
                                <input type="hidden" name="id" value="${member.id}" />
                                    <select name="choice">
                                        <option value="1" ${selected[0]}>이름</option>
                                        <option value="2" ${selected[1]}>학과별</option>
                                        <option value="3" ${selected[2]}>학번</option>
                                        <option value="4" ${selected[2]}>학년</option>
                                    </select>
                                    <input type="text" name="search" value="${search}">
                                    <button type="submit" class="btn btn-primary">조회</button>
                                </form>


                                <table class="table table-striped" style="
                                width:100%; max-width:100%; margin-bottom:20px;">
                                    <thead>
                                    <tr>
                                        <th>학번</th>
                                        <th>이름</th>
                                        <th>학년</th>
                                        <th>이메일</th>
                                        <th>학과</th>
                                        <th>권한</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach var="list" items="${ listes }">
                                        <tr data-url="studentManager2?studentId=${ list.id }&type=${member.type}&id=${member.id}&${pagination.queryString}">
                                            <td>${ list.id }</td>
                                            <td>${ list.name }</td>
                                            <td>${ list.myGrade}</td>
                                            <td>${ list.email }</td>
                                            <td>${ list.departmentName}</td>
                                            <td>
                                                <a href="studentEdit?type=${member.type}&id=${list.id}&name=${list.name}&adminId=${member.id}&${pagination.queryString}">
                                                <button type="button" class="btn btn-primary">수정</button>
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>

                                </table>

                                <form method="get">
                                    <input type="hidden" name="pg" value="1" />
                                    <input type="hidden" name="type" value="${member.type}"  />
                                    <input type="hidden" name="id" value="${member.id}" />
                                    <input type="hidden" name="choice" value="${choice}">
                                    <input type="hidden" name="search" value="${search}">
                                <%--/* 페이지 네이션 */--%>
                                <div class="pagination pagination-small pagination-centered">
                                        <c:forEach var="page" items="${ pagination.pageList }">
                                            <li class='${ page.cssClass }'>
                                                <a data-page="${ page.number }">${ page.label }</a></li>
                                        </c:forEach>
                                </div>
                                </form>



                                </p>



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
