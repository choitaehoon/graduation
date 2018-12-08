<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>skhu 졸업요건</title>
    <link rel="stylesheet" href="/res/circle.css">
    <link href="http://nethna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
          rel="stylesheet">
    <script src="${R}res/common.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("div.pagination a").click(function () {
                $("input[name=pg]").val($(this).attr("data-page"));
                $("form").submit();
            });
            $("#data-confirm-delete1").click(function () {
                return confirm("삭제하시겠습니까?");
            });

            $("#data-confirm-delete2").click(function () {
                return confirm("삭제하시겠습니까?");
            });

            $("#data-confirm-delete3").click(function () {
                return confirm("삭제하시겠습니까?");
            });

            $("#data-confirm-delete4").click(function () {
                return confirm("전공인정 초기화 하시겠습니까?");
            });

        });

    </script>
</head>
<body>
<div class="wrapper">
    <%@include file="../menu/menu.jsp" %>
    <div class="content">

        <%-------------------------------------%>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title">졸업 관리</h4>
                            <p class="category">나의 졸업 관리 페이지입니다.</p>
                            <br/>
                            <h2 class="title">${student.departmentName}</h2>
                            <h4 class="title">-${student.detailType}</h4>


                            <div class="content table-responsive table-full-width">
                                <h3>&nbsp;✔ 학기&nbsp;:&nbsp;${totalSemester+1}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;✔ 평균 학점&nbsp;:&nbsp;${avgGrade}&nbsp;/&nbsp;4.5&nbsp;</h3>
                            </div>

                            <table class="table table-hover table-striped">
                                <tr>
                                    <form:form method="post" modelAttribute="student">
                                        <div class="pull-right" style="margin-right:10px;">
                                            <button type="submit" class="btn btn-primary"> 적용</button>
                                        </div>
                                        <div class="pull-right" style="margin-right:10px;margin-bottom: 3px">
                                            <form:select path="graduationRule_id" class="form-control w200"
                                                         itemValue="id" itemLabel="detailType"
                                                         items="${ graduationRules }"/>
                                        </div>
                                        <div class="pull-right" style="margin-right: 10px;">
                                            <label>과정 선택 :</label>
                                        </div>
                                    </form:form>
                                </tr>
                                <tr>
                                    <td>
                                        <h3>총 학점</h3>
                                        <div class="c100 p${creditPercent > 100? 100 : creditPercent}">
                                            <span>${totalCredit}/130</span>
                                            <div class="slice">
                                                <div class="bar"></div>
                                                <div class="fill"></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <h3>전공 학점</h3>
                                        <div class="c100 p${creditPercentMajor > 100? 100 : creditPercentMajor} orange">
                                            <span>${totalCreditMajor}/${student.majorGoal}</span>
                                            <div class="slice">
                                                <div class="bar"></div>
                                                <div class="fill"></div>
                                            </div>
                                        </div>
                                    </td>
                                    <%--18학번이전--%>
                                    <c:if test="${student.graduationRule_id <= 4}">
                                        <td>
                                            <h3>교양 학점</h3>
                                            <div class="c100 p${creditPercentCulture > 100? 100 : creditPercentCulture} green">
                                                <span>${totalCreditCulture}/${student.cultureGoal}</span>
                                                <div class="slice">
                                                    <div class="bar"></div>
                                                    <div class="fill"></div>
                                                </div>
                                            </div>
                                        </td>
                                    </c:if>
                                    <%--18학번 이후--%>
                                    <c:if test="${student.graduationRule_id  > 4}">
                                        <td>
                                            <h3>교양 학점</h3>
                                            <div class="c100 p${creditPercentCulture > 100? 100 : creditPercentCulture} green">
                                                <span>${totalCreditCulture}/34</span>
                                                <div class="slice">
                                                    <div class="bar"></div>
                                                    <div class="fill"></div>
                                                </div>
                                            </div>
                                        </td>
                                    </c:if>
                                    <td>
                                        <h3>채플 이수</h3>
                                        <div class="c100 p${chapelPercent > 100? 100 : chapelPercent}">
                                            <span>${chapelCount}/2</span>
                                            <div class="slice">
                                                <div class="bar"></div>
                                                <div class="fill"></div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <h3>봉사 이수</h3>
                                        <div class="c100 p${volunteerPercent > 100? 100 : volunteerPercent}">
                                            <span>${volunteerCount}/1</span>
                                            <div class="slice">
                                                <div class="bar"></div>
                                                <div class="fill"></div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </table>

                            <%-------------------------------------%>
                            <%--타과 복수 전공 과정--%>
                            <c:if test="${student.graduationRule_id == 3 || student.graduationRule_id == 5}">
                                <div class="content table-responsive table-full-width">
                                    <table class="table table-hover table-striped">
                                        <tr style="width: 50px">
                                            <div class="pull-right" style="margin-right:10px;">
                                                <button type="submit" class="btn btn-primary"> 적용</button>
                                            </div>
                                            <div class="pull-right" style="margin-right:10px;margin-bottom: 3px">
                                                <select class="form-control w200">
                                                    <option>컴퓨터공학과</option>
                                                    <option>신학과</option>
                                                    <option>영어학과</option>
                                                    <option>일어일본학과</option>
                                                    <option>중어중국학과</option>
                                                    <option>사회복지학과</option>
                                                    <option>사회과학부</option>
                                                    <option>신문방송학과</option>
                                                    <option>경영학과</option>
                                                    <option>디지털컨텐츠학과</option>
                                                    <option>컴퓨터공학과</option>
                                                    <option>정보통신공학과</option>
                                                    <option>글로컬IT학과</option>
                                                </select>
                                            </div>
                                            <div class="pull-right" style="margin-right: 10px;">
                                                <label>복수 전공 :</label>
                                            </div>
                                        </tr>


                                        <tr>
                                            <td style="padding-left: 250px;">
                                                <h3>복수 전공 학점</h3>
                                                <div class="c100 p${doubleMajorPercent > 100? 100 : doubleMajorPercent} orange">
                                                    <span>${doubleMajor}/40</span>
                                                    <div class="slice">
                                                        <div class="bar"></div>
                                                        <div class="fill"></div>
                                                    </div>
                                                </div>
                                            </td>

                                                <%--18학번일때 전공탐색--%>
                                            <c:if test="${ student.graduationRule_id > 4 }">
                                                <td style="padding-right: 440px;">
                                                    <h3>전공 탐색</h3>
                                                    <div class="c100 p${majorSearchPecent > 100? 100 : majorSearchPecent}">
                                                        <span>${majorSearch}/19</span>
                                                        <div class="slice">
                                                            <div class="bar"></div>
                                                            <div class="fill"></div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </c:if>

                                        </tr>
                                    </table>
                                </div>
                            </c:if>
                            <%-------------------------------------%>

                            <%--타과 부 전공 일때--%>
                            <c:if test="${student.graduationRule_id == 4 || student.graduationRule_id == 6}">
                                <div class="content table-responsive table-full-width">
                                    <table class="table table-hover table-striped">
                                        <tr style="width: 50px">
                                            <div class="pull-right" style="margin-right:10px;">
                                                <button type="submit" class="btn btn-primary"> 적용</button>
                                            </div>
                                            <div class="pull-right" style="margin-right:10px;margin-bottom: 3px">
                                                <select class="form-control w200">
                                                    <option>컴퓨터공학과</option>
                                                    <option>신학과</option>
                                                    <option>영어학과</option>
                                                    <option>일어일본학과</option>
                                                    <option>중어중국학과</option>
                                                    <option>사회복지학과</option>
                                                    <option>사회과학부</option>
                                                    <option>신문방송학과</option>
                                                    <option>경영학과</option>
                                                    <option>디지털컨텐츠학과</option>
                                                    <option>컴퓨터공학과</option>
                                                    <option>정보통신공학과</option>
                                                    <option>글로컬IT학과</option>
                                                </select>
                                            </div>
                                            <div class="pull-right" style="margin-right: 10px;">
                                                <label>부 전공 :</label>
                                            </div>
                                        </tr>

                                        <tr>
                                            <td style="padding-left: 250px;">
                                                <h3>부전공 학점</h3>
                                                <div class="c100 p${minorPercent > 100? 100 : minorPercent} orange">
                                                    <span>${minor}/21</span>
                                                    <div class="slice">
                                                        <div class="bar"></div>
                                                        <div class="fill"></div>
                                                    </div>
                                                </div>
                                            </td>

                                                <%--18학번일때 전공탐색--%>
                                            <c:if test="${ student.graduationRule_id > 4 }">
                                                <td style="padding-right: 440px;">
                                                    <h3>전공 탐색</h3>
                                                    <div class="c100 p${majorSearchPecent > 100? 100 : majorSearchPecent}">
                                                        <span>${majorSearch}/19</span>
                                                        <div class="slice">
                                                            <div class="bar"></div>
                                                            <div class="fill"></div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </c:if>

                                        </tr>
                                    </table>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%-------------------------------------%>
        <%--18학번 이전--%>
        <c:if test="${ student.graduationRule_id <=4 }">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h3>✔ 들어야 할 과목 List</h3>
                                <div>
                                    <table class="table table-striped"
                                           style="float:left;width:30%; max-width: 100%; margin-bottom:20px;">
                                        <thead>
                                        <th>&nbsp;&nbsp;&nbsp;&nbsp;전공 필수 과목</th>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="essentialMajor" items="${ essentialMajor }">
                                            <tr>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;-${ essentialMajor.title }
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <div>
                                    <c:if test="${student.graduationRule_id == 1}">
                                        <table class="table table-striped"
                                               style="float:left;width:30%; max-width: 100%; margin-bottom:20px;">
                                            <thead>
                                            <th>&nbsp;&nbsp;&nbsp;&nbsp;교양 필수 과목</th>
                                            </thead>
                                            <tbody>
                                            <c:if test="${essentialCultureSize>0}">
                                                <c:forEach var="essentialCulture" items="${ essentialCulture }">
                                                    <tr>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;-${ essentialCulture.title }</td>
                                                    </tr>
                                                </c:forEach>
                                                <tr>
                                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;중 ${ essentialCultureSize }과목 이상
                                                    </td>
                                                </tr>
                                            </c:if>
                                            </tbody>
                                        </table>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>
        <%--------------------------------------%>
        <%-------------------------------------%>

        <%-------------------------------------%>
        <%--18학번 이후--%>
        <c:if test="${ student.graduationRule_id > 4 }">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h3>✔ 들어야 할 과목 List</h3>

                                <div>
                                    <table class="table table-striped"
                                           style="float:left;width:30%; max-width: 100%; margin-bottom:20px;">
                                        <thead>
                                        <th>&nbsp;&nbsp;&nbsp;&nbsp;전공 필수 과목</th>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="essentialMajor" items="${ essentialMajor }">
                                            <tr>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;-${ essentialMajor.title }
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>

                                <div>
                                    <table class="table table-striped"
                                           style="float:left;width:30%; max-width: 100%; margin-bottom:20px;">
                                        <thead>
                                        <th>&nbsp;&nbsp;&nbsp;&nbsp;교양 필수 과목</th>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="culture" items="${ cultureEssential }">
                                            <tr>
                                                <td>&nbsp;&nbsp;&nbsp;&nbsp;-${ culture.title }</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>

                                    <%--전공 탐색 계산중--%>
                                <div>
                                    <table class="table table-striped"
                                           style="float:left;width:30%; max-width: 100%; margin-bottom:20px;">
                                        <thead>
                                        <th>&nbsp;&nbsp;&nbsp;&nbsp;전공 탐색 과목</th>
                                        </thead>
                                        <tbody>
                                        <c:if test="${countMajorSearch == 0}">
                                            <tr>
                                                <td style="color: red">&nbsp;&nbsp;&nbsp;&nbsp;-소속 학부 중 1과목 이수 해야합니다.
                                                </td>
                                            </tr>
                                        </c:if>
                                        <c:if test="${countUndergraduate == 0}">
                                            <tr>
                                                <td style="color: red">&nbsp;&nbsp;&nbsp;&nbsp;-타 학부 중 1과목 이수 해야합니다.
                                                </td>
                                            </tr>
                                        </c:if>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>
        <%--------------------------------------%>
        <%-------------------------------------%>


        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <form>
                                <input type="hidden" name="pg" value="1">
                                <input type="hidden" name="type" value="${member.type}"/>
                                <input type="hidden" name="id" value="${member.id}"/>
                                <select name="choice">
                                    <option value="1" ${selected[1]}>과목명</option>
                                    <option value="2" ${selected[2]}>년도</option>
                                </select>
                                <input type="text" name="search" value="${search}">
                                <button type="submit" class="btn btn-primary">조회</button>
                            </form>


                            <div class="pull-right" >
                                <div class="pull-right">
                                    <form action="deleteLecture" method="post">
                                        <input type="hidden" name="remove" value=3>
                                        <input type="hidden" name="type" value="${member.type}">
                                        <input type="hidden" name="id" value="${member.id}">
                                        <input type="hidden" name="choice" value="${choice}">
                                        <input type="hidden" name="search" value="${search}">
                                        <button type="submit" class="btn btn-danger" id="data-confirm-delete3">대체과목
                                            초기화
                                        </button>
                                    </form>
                                </div>

                                <div class="pull-right" style="margin-right:10px;">
                                    <a href="replaceLecture?type=${member.type}&id=${member.id}">
                                        <button type="button" class="btn btn-primary">대체과목 신청</button>
                                    </a>
                                </div>

                                <br><br><br>

                                <div class="pull-right">
                                    <form action="initializeMajor">
                                        <input type="hidden" name="type" value="${member.type}">
                                        <input type="hidden" name="id" value="${member.id}">
                                        <button type="submit" class="btn btn-danger" id="data-confirm-delete4">전공인정
                                            초기화
                                        </button>
                                    </form>
                                </div>

                                <div class="pull-right" style="margin-right:10px;">
                                    <a href="majorAcknowledgment?type=${member.type}&id=${member.id}&major=${1}">
                                        <button type="button" class="btn btn-primary">전공인정 신청</button>
                                    </a>
                                </div>
                            </div>

                            <div class="pull-right" style="margin-right:10px;">
                                <div class="pull-right">
                                    <form action="deleteLecture" method="post">
                                        <input type="hidden" name="remove" value=0>
                                        <input type="hidden" name="type" value="${member.type}">
                                        <input type="hidden" name="id" value="${member.id}">
                                        <input type="hidden" name="choice" value="${choice}">
                                        <input type="hidden" name="search" value="${search}">
                                        <button id='data-confirm-delete1' type=submit" class="btn btn-danger">수강내역
                                            전체삭제
                                        </button>
                                    </form>
                                </div>
                                <div class="pull-right" style="margin-right:10px;">
                                    <button class="btn btn-primary"
                                            onclick="window.open('myLecExcel?type=${member.type}&userId=${member.id}&${pagination.queryString}','classUpload','width=600,height=300,location=no,status=no,scrollbars=yes');">
                                        수강내역 엑셀 업로드
                                    </button>
                                </div>

                                <br>
                                <br>
                                <br>

                                <div class="pull-right">
                                    <form action="deleteLecture" method="post">
                                        <input type="hidden" name="remove" value=1>
                                        <input type="hidden" name="type" value="${member.type}">
                                        <input type="hidden" name="id" value="${member.id}">
                                        <input type="hidden" name="choice" value="${choice}">
                                        <input type="hidden" name="search" value="${search}">
                                        <button type="submit" class="btn btn-danger" id="data-confirm-delete2">시물레이션
                                            초기화
                                        </button>
                                    </form>
                                </div>

                                <div class="pull-right" style="margin-right:10px;">
                                    <a href="/register/subjectRegister?type=${member.type}&id=${member.id}">
                                        <button type="button" class="btn btn-primary">시뮬레이션 수강 등록</button>
                                    </a>
                                </div>
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
                                    <th style='text-align:center;vertical-align:middle'>시뮬레이션 구분</th>
                                </tr>

                                </thead>


                                <tbody>
                                <c:forEach var="lecture" items="${ myLecture }">
                                    <c:if test="${lecture.remove !=4}">
                                        <tr>
                                            <td>${ lecture.lecture_year }</td>
                                            <td>${ lecture.lecture_semester }</td>
                                            <td>${ lecture.lecture_id }</td>
                                            <td>${ lecture.title }</td>
                                            <td>${ lecture.detailType2 }</td>
                                            <td>${ lecture.credit }</td>
                                            <td>${ lecture.grade }</td>
                                            <td style='text-align:center;vertical-align:middle'>
                                                <c:if test="${ lecture.remove==0}"><c:if
                                                        test="${lecture.changeMajor == 1}">(전공인정)</c:if></c:if>
                                                <c:if test="${ lecture.remove==1}">시뮬<c:if
                                                        test="${lecture.changeMajor == 1}">(전공인정)</c:if></c:if>
                                                <c:if test="${ lecture.remove==3}">대체<c:if
                                                        test="${lecture.changeMajor == 1}">(전공인정)</c:if></c:if>
                                            </td>
                                        </tr>
                                    </c:if>
                                </c:forEach>
                                </tbody>

                            </table>
                            <form method="get">
                                <input type="hidden" name="pg" value="1"/>
                                <input type="hidden" name="type" value="${member.type}"/>
                                <input type="hidden" name="id" value="${member.id}"/>
                                <input type="hidden" name="choice" value="${choice}"/>
                                <input type="hidden" name="search" value="${search}"/>
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

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title">대체과목신청현황</h4>
                            <br><br>
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
                                    <th style='text-align:center;vertical-align:middle'>대체된 폐지과목</th>
                                </tr>

                                </thead>


                                <tbody>
                                <c:forEach var="myLecutre" items="${ myReplaces }">
                                    <tr>
                                        <td>${ myLecutre.lecture_year}</td>
                                        <td>${ myLecutre.lecture_semester}</td>
                                        <td>${ myLecutre.lecture_id}</td>
                                        <td>${ myLecutre.title}</td>
                                        <td>${ myLecutre.detailType}</td>
                                        <td>${ myLecutre.credit}</td>
                                        <td>${ myLecutre.grade }</td>
                                        <td style='text-align:center;vertical-align:middle'>
                                            <c:if test="${myLecutre.closeLecId != null}">
                                                ${myLecutre.closeLecId}/${myLecutre.closeLecTitle} 대체
                                            </c:if>

                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>

                            </table>
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
<link href="assets/css/style.css" rel="stylesheet"/>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
      rel="stylesheet" media="screen">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</html>