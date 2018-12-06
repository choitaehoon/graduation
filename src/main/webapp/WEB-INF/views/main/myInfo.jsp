<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>skhu 졸업요건</title>
</head>
<body>
<div class="wrapper">
    <%@include file="../menu/menu.jsp" %>

    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <div class="header">
                            <h4 class="title">내정보</h4>
                        </div>

                        <form action="updateMember">
                            <input type="hidden" name="type" value="${member.type}">

                            <div class="col-md-5">
                                <div class="form-group">
                                    <label>이름</label>
                                    <input type="text" class="form-control" name="name" value="${member.name}">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>id</label>
                                    <input type="text" class="form-control" placeholder="Username" name="id"
                                           value="${member.id}" readonly>
                                </div>
                            </div>
                            <%--학생이면 실행--%>
                            <c:if test="${member.type == 1}">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>학년</label>
                                            <select name="myGrade" class="form-control" style="width: 45%">
                                                <option value="1" ${member.myGrade==1? "selected":""}>1학년</option>
                                                <option value="2" ${member.myGrade==2? "selected":""}>2학년</option>
                                                <option value="3" ${member.myGrade==3? "selected":""}>3학년</option>
                                                <option value="4" ${member.myGrade==4? "selected":""}>4학년</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </c:if>

                            <div class="row">
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>이메일</label>
                                        <input type="email" class="form-control" name="email"
                                               value="${member.email}">
                                    </div>
                                </div>


                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label>전화번호</label>
                                        <input type="text" class="form-control" placeholder="Country"
                                               name="phone" value="${member.phone}"/>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>비밀번호 변경</label>
                                        <input type="password" class="form-control" placeholder="입력하세요"
                                               name="password" value="${member.password}">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>비밀번호 변경확인</label>
                                        <input type="password" class="form-control" placeholder="입력하세요"
                                               value="${member.password}">
                                    </div>
                                </div>
                            </div>


                            <c:if test="${member.type == 1}">
                                <div class="row">

                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>비밀번호 찾기 질문 답</label>
                                            <input type="text" class="form-control" placeholder="City"
                                                   name="question" value="${member.question}">
                                        </div>
                                    </div>
                                </div>
                            </c:if>


                            <button type="submit" class="btn btn-info btn-fill pull-right">수정</button>
                            <div class="clearfix"></div>


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
            <script>

            </script>
        </p>
    </div>
</footer>

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
<script src="${R}assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>
<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="${R}assets/js/demo.js"></script>

