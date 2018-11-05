<%--
  Created by IntelliJ IDEA.
  User: JiEun
  Date: 2018-11-02
  Time: 오전 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                                <c:forEach var="replacelecture" items="${ replacelectures }">
                                    <tr data-url="replaceLecture?year=${replacelecture.lecture.year}&semester=${ replacelecture.lecture.semester }&id=${ replacelecture.lecture.id }&subType=${ replacelecture.lecture.subType}">
                                        <td>${ replacelecture.lecture.year }</td>
                                        <td>${ replacelecture.lecture.semester }</td>
                                        <td>${ replacelecture.lecture.id }</td>
                                        <td>${ replacelecture.lecture.subType}</td>
                                      <%--  <td><button class="btn btn-primary">수정</button></td>--%>
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
