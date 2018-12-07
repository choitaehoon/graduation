
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
                            <h4 class="title"> 대체 과목 ${member.type ==1 ? '초수강 신청':'관리'}</h4>
                            <c:if test="${memeber.type == 1}">
                            <p class="category">대체과목 초수강 신청이면 과목을 클릭하세요!</p>
                            </c:if>

                                <br><br><br>

                            <form>

                                <input type="hidden" name="pg" value="1">
                                <input type="hidden" name="type" value="${member.type}"  />
                                <input type="hidden" name="id" value="${member.id}" />

                                <p class="category"/>
                                    <select name="choice">
                                        <option value="0" ${selected[0]}>담당학과</option>
                                        <option value="1" ${selected[1]}>폐지과목코드</option>
                                        <option value="2" ${selected[2]}>폐지과목명</option>
                                        <option value="3" ${selected[3]}>이수구분</option>
                                        <option value="4" ${selected[4]}>이수학점</option>
                                    </select>

                                <input type="text" name="srch" value="${srch}">
                                <button type="submit" class="btn btn-primary">조회</button>
                                <a href="replaceLecture?type=${member.type}&id=${member.id}" class="btn btn-default">검색초기화</a>

                                <c:if test="${member.type == 1}">
                                    <a href="graduationInfo?type=${member.type}&id=${member.id}" class="btn btn-success pull-right">나의 졸업 관리로 가기</a>
                                </c:if>

                                <c:if test="${member.type==1 }">

                                    <a href="replace_mylecture?type=${member.type}&id=${member.id}" class="btn btn-primary pull-right" >대체과목재수강신청</a>

                                </c:if>

                                <c:if test="${member.type==2 }">
                                <a href="replaceLectureRegister?type=${member.type}&id=${member.id}" class="btn btn-primary pull-right">폐지과목등록</a>
                                </c:if>
                                <c:if test="${memeber.type == 1}">
                                <a href="graduationInfo?type=${member.type}&id=${member.id}" class="btn btn-success pull-right" style="margin-right:10px;">나의졸업관리로</a>
                                </c:if>
                                <br>
                                <br>
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
                                    <c:if test="${member.type==1}">
                                        <tr data-url="myReplaceNewLec?closeLecture=${replaceLecture.closeLecture}&type=${member.type}&id=${member.id}&${pagination.queryString}">
                                    </c:if>
                                    <c:if test="${member.type==2}">
                                        <tr data-url="replaceLectureUpdate?closeLec=${replaceLecture.closeLecture}&type=${member.type}&id=${member.id}">
                                    </c:if>
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
