<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/res/circle.css">
    <link href="http://nethna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
          rel="stylesheet">
    <script src="${R}res/common.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(function() {
            $("div.pagination a").click(function() {
                $("input[name=pg]").val($(this).attr("data-page"));
                $("form").submit();
            });
            $("#data-confirm-delete").click(function() {
                return confirm("삭제하시겠습니까?");
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
                            <h4 class="title">졸업 관리</h4>
                            <p class="category">나의 졸업 관리 페이지입니다.</p>
                            <br/>
                            <h2 class="title">소프트웨어공학과</h2>
                            <h4 class="title">-${student.detailType}</h4>
                        </div>
                        <div class="content table-responsive table-full-width">
                            <table class="table table-hover table-striped">
                                <div class="pull-right" style="margin-right:10px;">
                                    <label>과정 선택 : </label>
                                    <select >
                                        <option >소프트웨어공학과 전공심화과정</option>
                                        <option >소프트웨어공학과 전공기초과정</option>
                                        <option >소프트웨어공학과 복수전공과정</option>
                                        <option >소프트웨어공학과 전공특별과정</option>
                                    </select>
                                </div>
                                <tr>
                                    <td>
                                        <h4>총 학점</h4>
                                        <div class="c100 p${totalCredit}">
                                            <span>${totalCredit}/130</span>
                                            <div class="slice">
                                                <div class="bar"></div>
                                                <div class="fill"></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <h3>전공 학점</h3>
                                        <div class="c100 p${totalCreditMajor} orange">
                                            <span>${totalCreditMajor}/${student.majorGoal}</span>
                                            <div class="slice">
                                                <div class="bar"></div>
                                                <div class="fill"></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <h3>교양 학점</h3>
                                        <div class="c100 p${totalCreditCulture}/${student.cultureGoal} green">
                                            <span>${totalCreditCulture}/${student.cultureGoal}</span>
                                            <div class="slice">
                                                <div class="bar"></div>
                                                <div class="fill"></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <h3>채플 이수</h3>
                                        <div class="c100 p50">
                                            <span>1/2</span>
                                            <div class="slice">
                                                <div class="bar"></div>
                                                <div class="fill"></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <h3>봉사 이수</h3>
                                        <div class="c100 p0">
                                            <span>0/1</span>
                                            <div class="slice">
                                                <div class="bar"></div>
                                                <div class="fill"></div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <div class="pull-right" style="margin-right:10px;">
                                <button class="btn btn-primary">수강내역 엑셀 업로드</button>
                                <button class="btn btn-danger" >삭제</button>
                            </div>
                        </div>
                    </div>
                </div>

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



                <div class="pull-right">
                    <form action="deleteLecture" method="post">
                        <input type="hidden" name="type" value="${member.type}">
                        <input type="hidden" name="id" value="${member.id}">
                        <input type="hidden" name="choice" value="${choice}">
                        <input type="hidden" name="search" value="${search}">
                        <button type="submit" class="btn btn-danger" id="data-confirm-delete">시물레이션 삭제</button>
                    </form>
                </div>

                <div class="pull-right" style="margin-right:10px;">
                    <a href="/register/subjectRegister?type=${member.type}&id=${member.id}">
                        <button type="button" class="btn btn-primary" >시뮬레이션 수강 등록</button>
                    </a>
                </div>


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

                    <tbody>
                    <c:forEach var="lecture" items="${ myLecture }">
                        <tr>
                            <td>${ lecture.lecture_year }</td>
                            <td>${ lecture.lecture_semester }</td>
                            <td>${ lecture.lecture_id }</td>
                            <td>${ lecture.title }</td>
                            <td>${ lecture.detailType2 }</td>
                            <td>${ lecture.credit }</td>
                            <td>${ lecture.gradeA }</td>
                        </tr>
                    </c:forEach>
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

<!--  table  -->
<link href="assets/css/style.css" rel="stylesheet" />
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
        rel="stylesheet" media="screen">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</html>
