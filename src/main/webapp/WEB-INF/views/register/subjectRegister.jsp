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
    <%@include file="../menu/menu.jsp" %>

    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">


                            <h4 class="title">시뮬레이션에 등록할 과목</h4>
                            <br><br><br>

                            <form>
                                <input type="hidden" name="pg" value="1">
                                <input type="hidden" name="type" value="${member.type}"  />
                                <input type="hidden" name="id" value="${member.id}" />

                                <p class="category">
                                    <select name="choice">
                                        <option value="0" ${selected[0]}>개설학기</option>
                                        <%--<option value="1" ${selected[1]}>년도</option>--%>
                                        <option value="2" ${selected[2]}>과목코드</option>
                                        <option value="3" ${selected[3]}>과목명</option>
                                        <option value="4" ${selected[4]}>이수구분</option>
                                        <option value="5" ${selected[5]}>이수학점</option>
                                    </select>

                                    <input type="text" name="srch" value="${srch}"/>
                                    <a >
                                        <button type="submit" class="btn btn-primary">조회</button>
                                    </a>
                            </form>
                            <form method="post">
                                <div class="pull-right">
                                    <a href="/main/graduationInfo?type=${member.type}&id=${member.id}">
                                        <button type="button" class="btn btn-success">목록으로 가기</button>
                                    </a>
                                </div>

                                <div class="pull-right" style="margin-right:20px;">
                                    <button class="btn btn-success">등록된 시뮬레이션 과목 수:${count}</button>
                                </div>

                            </form>
                            <table class="table table-striped" style="width:100%; max-width:100%; margin-bottom:20px;">
                                <thead>
                                <tr>
                                    <th>년도</th>
                                    <th>개설학기</th>
                                    <th>과목코드</th>
                                    <th>분반</th>
                                    <th>교수명</th>
                                    <th>과목명</th>
                                    <th>이수구분</th>
                                    <th>이수학점</th>
                                    <th>시뮬레이션 학점 및 이수구분 및  과목 추가</th>
                                </tr>
                                </thead>

                                <tbody>
                                <c:forEach var="lecture" items="${lectures}">
                                    <tr>
                                        <td>${lecture.year}</td>
                                        <td>${lecture.semester}</td>
                                        <td>${lecture.id}</td>
                                        <td>${lecture.split}</td>
                                        <td>${lecture.admin.name}</td>
                                        <td>${lecture.title}</td>
                                        <td>${lecture.subType}</td>
                                        <td>${lecture.credit}</td>
                                        <td>
                                            <form action="simulationRegister" method="post">
                                                <select name="grade">
                                                    <option value="P">P</option>
                                                    <option value="F">0.0</option>
                                                    <option value="D0">1.0</option>
                                                    <option value="D+">1.5</option>
                                                    <option value="C0">2.0</option>
                                                    <option value="C+">2.5</option>
                                                    <option value="B0">3.0</option>
                                                    <option value="B+">3.5</option>
                                                    <option value="A0">4.0</option>
                                                    <option value="A+">4.5</option>
                                                </select>
                                                <select name="detailType">
                                                    <option value="교선">교선</option>
                                                    <option value="교필">교필</option>
                                                    <option value="전선">전선</option>
                                                    <option value="전필">전필</option>
                                                    <option value="전탐">전탐</option>
                                                    <option value="복선">복선</option>
                                                    <option value="복필">복필</option>
                                                    <option value="부선">부선</option>
                                                    <option value="부필">부필</option>
                                                </select>
                                                <input type="hidden" name="lecture_year" value="${lecture.year}">
                                                <input type="hidden" name="lecture_semester" value="${lecture.semester}">
                                                <input type="hidden" name="lecture_id" value="${lecture.id}">
                                                <input type="hidden" name="lecture_split" value="${lecture.split}">
                                                <input type="hidden" name="title" value="${lecture.title}">
                                                <input type="hidden" name="credit" value="${lecture.credit}">
                                                <input type="hidden" name="student_id" value="${member.id}" >
                                                <input type="hidden" name="remove" value="1" >
                                                <input type="hidden" name="type" value="${member.type}">
                                                <button type="submit" class="btn btn-primary">등록</button>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                            </p>
                            <form>
                                <input type="hidden" name="pg" value="1">
                                <input type="hidden" name="type" value="${member.type}"  />
                                <input type="hidden" name="id" value="${member.id}" />
                                <input type="hidden" name="choice" value="${choice}">
                                <input type="hidden" name="srch" value="${srch}">

                                <%--/* 페이지 네이션 */--%>
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