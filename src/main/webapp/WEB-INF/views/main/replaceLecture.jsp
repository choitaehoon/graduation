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
                                <select name="choice">
                                    <option>담당학과</option>
                                    <option>폐지과목명</option>
                                    <option>이수구분</option>
                                    <option>대체과목명</option>
                                </select>
                            </p>
                                <input type="text" name="srch">
                                <button type="submit" class="btn btn-primary">조회</button></a>

                                <c:if test="${member.type==2 }">
                                <button  type="button" class="btn btn-primary">대체과목등록</button>
                                </c:if>

                            <table class="table table-striped" style="width:100%; max-width:100%; margin-bottom:20px;">
                                <thead>
                                <tr>
                                    <th>담당학과</th>
                                    <th>폐지과목</th>
                                    <th>폐지과목명</th>
                                    <th>이수구분</th>
                                    <th>이수학점</th>
                                    <th>대체과목</th>
                                    <th>대체과목명</th>

                                </tr>
                                </thead>

                                <tbody>
                                <c:forEach var="replaceLecture" items="${ replaceLectures }">
                                    <tr data-url="#">
                                        <td>${ replaceLecture.department }</td>
                                        <td>${ replaceLecture.closeLecture }</td>
                                        <td>${ replaceLecture.closeLecTitle}</td>
                                        <td>${ replaceLecture.subType }</td>
                                        <td>${ replaceLecture.credit}</td>
                                        <td>
                                            <c:if test="${ replaceLecture.replaceLecture.length()>1 }">
                                                ${ replaceLecture.replaceLecture}
                                            </c:if>
                                        </td>
                                        <td>${ replaceLecture.replaceLecTitle}</td>

                                    </tr>
                                </c:forEach>
                                </tbody>

                            </table>

                            </p>
                            <form >
                                <input type="hidden" name="pg" value="1">
                                <input type="hidden" name="type" value="${member.type}"  />
                                <input type="hidden" name="id" value="${member.id}" />

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
                <script></script>
                <a ></a>

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
