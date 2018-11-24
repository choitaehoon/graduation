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

    <link href="http://nethna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
          rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">

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

                            <h4 class="title">Q & A</h4>
                            <p class="category">관리자가 답을 해드립니다.</p>

                        <c:if test="${member.type==1 }">
                            <div class="pull-right mb5">
                                <a href="qnaQuestion?type=${member.type}&userId=${member.id}" class="btn btn-info">
                                    <span class="glyphicon glyphicon-user"></span> 질문하기</a>
                            </div>
                        </c:if>

                        <div class="content table-responsive table-full-width">
                            <form method="post">
                                <input type="hidden" name="pg" value="1">
                                <input type="hidden" name="type" value="${member.type}"  />
                                <input type="hidden" name="userId" value="${member.id}" />

                                <p class="category">
                                    <select name="choice">
                                        <option value="0" ${selected[0]}>제목</option>
                                        <option value="1" ${selected[1]}>작성자</option>
                                    </select>

                                    <input type="text" name="srch" value="${srch}"/>
                                    <a >
                                        <a href=""> <button type="submit" class="btn btn-primary">조회</button></a>
                                        <a href="qna?type=${member.type}&id=${member.id}" class="btn btn-primary">검색초기화
                                        </a>
                            </form>
                            <table class="table table-hover table-striped">
                                <thead>
                                <tr>
                                <th>no</th>
                                <th>제목</th>
                                <th>작성일</th>
                                <th>작성자</th>
                                <th>작성수</th>

                                <c:if test="${member.type == 2 }">
                                    <th>답변</th>
                                </c:if>
                                <th>답변 현황</th>

   <%--                                 <c:if test="${memeber.id} eq ${qna.student_id}">
                                        <th>수정하기</th>
                                    </c:if>--%>

                                    <c:choose>
                                        <c:when test="${memeber.id eq qna.student_id}">
                                            <th>수정하기</th>
                                        </c:when>
                                        <c:when test="${memeber.id ne qna.student_id}">
                                            <th> </th>
                                        </c:when>
                                    </c:choose>
                                </tr>
                                </thead>

                                <tbody>
                                <c:forEach var="qna" items="${ qnas }">
                                    <tr data-url="/main/qna?type=${member.type}&id=${member.id}">
                                        <td>${ qna.id }</td>
                                        <td>${ qna.title }</td>
                                        <td>${ qna.wtime }</td>
                                        <td>${ qna.student.name }</td>
                                        <td>${ qna.count }</td>
                                        <c:if test="${member.type==2 }">
                                            <td> <a href="qnaaQuestion?type=${member.type}&userId=${member.id}" class="btn btn-info">
                                                <span class="glyphicon glyphicon-user"></span> 답변하기</a></td>
                                        </c:if>
                                        <td>답변 현황</td>
                                        <c:choose>
                                            <c:when test="${memeber.id eq qna.student_id}">
                                                <td><a href='qnaUpdate?id=${qna.id }&title=${qna.title }&student_id=${qna.student_id}&wtime=${qna.wtime}&type=${member.type}&userId=${member.id}'>
                                                    <button  type="button" class="btn btn-primary">수정</button>
                                                </a></td>
                                            </c:when>
                                            <c:when test="${memeber.id ne qna.student_id}">
                                                <td> </td>
                                            </c:when>
                                        </c:choose>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                            </p>
                            <form>
                                <input type="hidden" name="pg" value="1">
                                <input type="hidden" name="type" value="${member.type}"  />
                                <input type="hidden" name="id" value="${member.id}" />

                                <%--  페이지 네이션 --%>
                                <div class="pagination pagination-small pagination-centered">

                                    <c:forEach var="page" items="${ pagination.pageList }">

                                        <li class='${ page.cssClass }'>
                                            <a data-page="${ page.number }">${ page.label }</a></li>

                                    </c:forEach>
                                </div>
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