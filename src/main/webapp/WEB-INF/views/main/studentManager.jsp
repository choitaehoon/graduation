<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>

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

                                <form method="get">
                                    <input type="hidden" name="pg" value="1" />
                                    <input type="hidden" name="type" value="${member.type}"  />
                                    <input type="hidden" name="id" value="${member.id}" />
                                <table class="table table-striped" style="
                                width:100%; max-width:100%; margin-bottom:20px;">
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
                                    <c:forEach var="list" items="${ listes }">
                                        <tr data-url="studentManager2?studentId=${ list.id }&type=${member.type}&id=${member.id}">
                                            <td>${ list.id }</td>
                                            <td>${ list.name }</td>
                                            <td>${ list.email }</td>
                                            <td>${ list.departmentName}</td>
                                            <td><button class="btn btn-primary">수정</button></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>

                                <%--/* 페이지 네이션 */--%>
                                <div class="pagination pagination-small pagination-centered">
                                    <ul>
                                        <c:forEach var="page" items="${ pagination.pageList }">
                                            <li class='${ page.cssClass }'>
                                                <a data-page="${ page.number }">${ page.label }</a></li>
                                        </c:forEach>
                                    </ul>
                                </div>
                                </p>
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
