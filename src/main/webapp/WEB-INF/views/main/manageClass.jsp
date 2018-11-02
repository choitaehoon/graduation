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
                            <h4 class="title"> 수업 관리</h4>
                            <br><br><br>
                            <p class="category">
                                <select>
                                    <option>년도</option>
                                    <option>개설학기</option>
                                    <option>과목코드</option>
                                    <option>학과별</option>
                                    <option>과목명</option>
                                    <option>이수구분</option>
                                    <option>이수학점</option>
                                    <option>학과별</option>
                                </select>

                                <input type="text"/>
                                <a href="#">
                                    <button type="submit" class="btn btn-primary">조회</button>
                                </a>


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

                                </tr>
                                </thead>

                                <tbody>
                                <c:forEach var="lecture" items="${lectures}">
                                    <tr data-url="classEdit?&lecture=${lecture}&type=${member.type}&id=${member.id}">
                                    <td>${lecture.year}</td>
                                    <td>${lecture.semester}</td>
                                    <td>${lecture.id}</td>
                                    <td>${lecture.split}</td>
                                    <td>${lecture.admin.name}</td>
                                    <td>${lecture.title}</td>
                                    <td>${lecture.subType}</td>
                                    <td>${lecture.credit}</td>
                                    <td><a href='classEdit?lecture=${lecture}&type=${member.type}&id=${member.id}'>
                                        <button class="btn btn-primary">수정</button>
                                    </a></td>
                                    <%--<a href="studentGraduation.html"> <button class="btn btn-danger">삭제</button></a></td>--%>
                                </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                            </p>


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
<!-- Core JS Files -->
<script src="${R}assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="${R}assets/js/bootstrap.min.js" type="text/javascript"></script>

<!-- Charts Plugin -->
<script src="${R}assets/js/chartist.min.js"></script>

<!-- Notifications Plugin -->
<script src="${R}assets/js/bootstrap-notify.js"></script>

<!-- Google Maps Plugin -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="${R}assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="${R}assets/js/demo.js"></script>
</html>
