<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />
<html>
<head>
    <title>skhu 졸업요건</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet" media="screen">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${R}res/common.css">
    <script src="${R}res/common.js"></script>
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

                            <%--대체과목 신청일때--%>
                            <c:if test="${major != 1}">
                            <h4 class="title">대체과목 재수강 신청</h4>
                            <p class="category">내 수강 과목중, 대체를 원하는 과목을 클릭하세요!</p>
                            </c:if>

                                <%--전공인정 신청일때--%>
                            <c:if test="${major == 1}">
                                <h4 class="title">전공인정 신청</h4>
                                <p class="category">전공 인정할 과목을 클릭하세요!</p>
                            </c:if>

                            <br><br>

                            <form>
                                <input type="hidden" name="pg" value="1">
                                <input type="hidden" name="type" value="${member.type}"  />
                                <input type="hidden" name="id" value="${member.id}" />
                                <select name="choice">
                                    <option value="1" ${selected[1]}>과목명</option>
                                    <option value="2" ${selected[2]}>년도</option>
                                </select>
                                <input type="text" name="search" value="${search}">
                                <button type="submit" class="btn btn-primary">조회</button>
                            </form>

                            <br>
                            <br>

                            <table class="table table-striped" style="width:100%; max-width:100%; margin-bottom:20px;">
                                <thead>
                                <tr>
                                    <th>년도</th>
                                    <th>학기</th>
                                    <th>과목코드</th>
                                    <th>과목명</th>
                                    <th>이수구분</th>
                                    <th>학점</th>
                                    <th>성적등급</th>
                                </tr>

                                </thead>

                                <%--대체과목 신청일때--%>
                                <c:if test="${major != 1}">
                                <tbody>
                                <c:forEach var="lecture" items="${ myLecture }">
                                    <tr data-url ="myReplaceLec?lec_year=${lecture.lecture_year}&lec_semester=${lecture.lecture_semester}&lecId=${lecture.lecture_id}&type=${member.type}&id=${member.id}&title=${lecture.title}&detailType=${lecture.detailType2}&credit=${lecture.credit}&grade=${lecture.grade}">
                                        <td>${ lecture.lecture_year }</td>
                                        <td>${ lecture.lecture_semester }</td>
                                        <td>${ lecture.lecture_id }</td>
                                        <td>${ lecture.title }</td>
                                        <td>${ lecture.detailType2 }</td>
                                        <td>${ lecture.credit }</td>
                                        <td>${ lecture.grade }</td>

                                </tr>
                                </c:forEach>
                                </c:if>

                                <%--전공인정 신청일때--%>
                                <c:if test="${major == 1}">
                                <tbody>
                                <c:forEach var="lecture" items="${ myLecture }">
                                    <tr data-url ="selectMajor?lec_year=${lecture.lecture_year}&lec_semester=${lecture.lecture_semester}&lecId=${lecture.lecture_id}&type=${member.type}&id=${member.id}&major=${major}&title=${lecture.title}&detailType=${lecture.detailType2}&credit=${lecture.credit}&grade=${lecture.grade}">
                                        <td>${ lecture.lecture_year }</td>
                                        <td>${ lecture.lecture_semester }</td>
                                        <td>${ lecture.lecture_id }</td>
                                        <td>${ lecture.title }</td>
                                        <td>${ lecture.detailType2 }</td>
                                        <td>${ lecture.credit }</td>
                                        <td>${ lecture.grade }</td>

                                    </tr>
                                </c:forEach>
                                </c:if>

                                </tbody>

                            </table>
                            <form method="get">
                                <input type="hidden" name="pg" value="1" />
                                <input type="hidden" name="type" value="${member.type}"  />
                                <input type="hidden" name="id" value="${member.id}" />
                                <input type="hidden" name="choice" value="${choice}" />
                                <input type="hidden" name="search" value="${search}" />
                                <%--/* 페이지 네이션 */--%>
                                <div class="pagination pagination-small pagination-centered">
                                    <c:forEach var="page" items="${ pagination.pageList }">
                                        <li class='${ page.cssClass }'>
                                            <a data-page="${ page.number }">${ page.label }</a>
                                        </li>
                                    </c:forEach>
                                </div>
                            </form>
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

<!--  table  -->
<link href="assets/css/style.css" rel="stylesheet" />
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
      rel="stylesheet" media="screen">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</html>
