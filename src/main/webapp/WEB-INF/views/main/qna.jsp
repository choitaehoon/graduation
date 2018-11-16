<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
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
                            <h4 class="title">Q & A</h4>
                            <p class="category">관리자가 답을 해드립니다.</p>
                        </div>
                        <div class="content table-responsive table-full-width">
                            <table class="table table-hover table-striped">
                                <thead>
                                <th>no</th>
                                <th>제목</th>
                                <th>작성일</th>
                                <th>작성자</th>
                                <th>작성수</th>
                                <%--<th>상태</th>--%>
                                </thead>

                                <tbody>
                                <c:forEach var="qna" items="${ qnas }">
                                    <tr data-url="/main/qna?type=${member.type}&id=${member.id}">
                                        <td>${ qna.id }</td>
                                        <td>${ qna.title }</td>
                                        <td>${ qna.wtime }</td>
                                        <td>${ qna.student.name }</td>
                                        <td>${ qna.count }</td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                            <form>
                                <input type="hidden" name="pg" value="1">
                                <input type="hidden" name="type" value="${member.type}"  />
                                <input type="hidden" name="id" value="${member.id}" />

                                <%--&lt;%&ndash;/* 페이지 네이션 */&ndash;%&gt;
                                <div class="pagination pagination-small pagination-centered">

                                    <c:forEach var="page" items="${ pagination.pageList }">

                                        <li class='${ page.cssClass }'>
                                            <a data-page="${ page.number }">${ page.label }</a></li>

                                    </c:forEach>
                                </div>--%>
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
                &copy; <script>document.write(new Date().getFullYear())</script> <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web
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