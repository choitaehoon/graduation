<%--
  Created by IntelliJ IDEA.
  User: JiEun
  Date: 2018-11-02
  Time: 오전 11:02
  To change this template use File | Settings | File Templates.
--%>
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
                            <h4 class="title"> 대체 과목 관리</h4>
                            <br><br><br>

                            <p class="category">
                                <select>
                                    <option>강의명</option>
                                    <option>학과별</option>
                                    <option>학번</option>
                                </select>
                                <input type="text">
                                <a href=""> <button type="submit" class="btn btn-primary">조회</button></a>

                                <c:if test="${member.type==2 }">
                                <button  type="button"  style="right"class="btn btn-primary">수정</button>

                            </c:if>

                            <table class="table table-striped" style="width:100%; max-width:100%; margin-bottom:20px;">
                                <thead>
                                <tr>
                                    <th>년도</th>
                                    <th>학기</th>
                                    <th>강의 ID</th>
                                    <th>강의명</th>
                                    <th>유형</th>
                                </tr>
                                </thead>

                                <tbody>
                                <c:forEach var="replaceLecture" items="${ replaceLectures }">
                                    <tr data-url="replaceLecture?year=${replaceLecture.lecture.year}&semester=${ replaceLecture.lecture.semester }&id=${ replaceLecture.lecture.id }&subType=${ replaceLecture.lecture.subType}&adminId=${replaceLecture.lecture.admin_id}&type=${member.type}&userId=${member.id}">
                                        <td>${ replaceLecture.lecture.year }</td>
                                        <td>${ replaceLecture.lecture.semester }</td>
                                        <td>${ replaceLecture.lecture.id }</td>
                                        <td>${ replaceLecture.lecture.name }</td>
                                        <td>${ replaceLecture.lecture.subType}</td>
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

<script src="${R}res/common.js"></script>
</html>
