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

                            <h4 class="title">공지사항</h4>
                            <p class="category">졸업관리에 관한 내용이 업데이트됩니다. 수시로 확인해주세요</p>

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
                                        <a href="notice?type=${member.type}&id=${member.id}" class="btn btn-primary">검색초기화
                                        </a>
                            </form>
                            <c:if test="${member.type==2 }">
                                <div class="pull-right mb5">
                                    <a href="noticeRegister?type=${member.type}&userId=${member.id}" class="btn btn-info">
                                        <span class="glyphicon glyphicon-user"></span> 공지사항등록</a>
                                </div>
                            </c:if>
                            <div class="content table-responsive table-full-width">

                                <table class="table table-hover table-striped">
                                    <thead>
                                    <tr>
                                        <th>no</th>
                                        <th>제목</th>
                                        <th>작성자</th>
                                        <th>작성일</th>
                                        <th>조회수</th>
                                        <c:if test="${member.type==2 }">
                                            <th>권한</th>
                                        </c:if>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <c:forEach var="notice" items="${ notices }">
                                        <tr data-url='noticeShow?noticeId=${notice.id }&type=${member.type}&id=${member.id}'>
                                            <td>${ notice.id }</td>
                                            <td>${ notice.title }</td>
                                            <td>${ notice.admin.name }</td>
                                            <td>${ notice.time }</td>
                                            <td>${ notice.count }</td>
                                            <c:if test="${member.type==2 }">
                                                <td><a href='noticeUpdate?id=${notice.id }&admin_id=${notice.admin_id}&time=${notice.time}&type=${member.type}&userId=${member.id}'>
                                                    <button  type="button" class="btn btn-primary">수정</button>
                                                </a></td>
                                            </c:if>
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