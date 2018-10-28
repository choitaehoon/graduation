<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
 <div class="wrapper">
    <%@include file="../menu/menu.jsp"%>

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">내정보</h4>
                            </div>
                            <div class="content">
                                <form action="updateMember">
                                    <input type="hidden" name="type" value="${type}">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>이름</label>
                                                <input type="text" class="form-control" name="name"  value="${member.name}">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>id</label>
                                                <input type="text" class="form-control" placeholder="Username" name="id" value="${member.id}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>이메일</label>
                                                <input type="email" class="form-control" name="email" value="${member.email}">
                                            </div>
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>비밀번호 변경</label>
                                                <input type="text" class="form-control" placeholder="입력하세요" name="password" value="">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>비밀번호 변경확인</label>
                                                <input type="text" class="form-control" placeholder="입력하세요" value="">
                                            </div>
                                        </div>
                                    </div>

                                    <%--학생이면 실행--%>
                                    <c:if test="${type == 1}">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>comment</label>
                                                <input type="text" class="form-control" placeholder="Home Address" value="${member.comment}">
                                            </div>
                                        </div>
                                    </div>
                                    </c:if>


                                    <div class="row">
                                        <c:if test="${type == 1}">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>질문 답</label>
                                                <input type="text" class="form-control" placeholder="City" name="question" value="${member.question}">
                                            </div>
                                        </div>
                                        </c:if>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>전화번호</label>
                                                <input type="text" class="form-control" placeholder="Country" name="phone" value="${member.phone}">
                                            </div>
                                        </div>
                                        <c:if test="${type == 1}">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>총 학점 점수</label>
                                                <input type="number" class="form-control" placeholder="${member.avgGrade}">
                                            </div>
                                        </div>
                                        </c:if>
                                    </div>
                                    <c:if test="${type == 1}">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>About Me</label>
                                                <textarea rows="5" class="form-control" placeholder="Here can be your description" value="Mike">열심히하자!</textarea>
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

                    <div class="col-md-4">
                        <div class="card card-user">
                            <div class="image">
                                <!--                                 <img src="https://github.com/choitaehoon/graduation/blob/master/src/main/webapp/res/images/logo.jpg" alt="..."/> -->
                            </div>
                            <div class="content">
                                <div class="author">
                                    <a href="#">
                                        <i class="pe-7s-smile" style="size:128px"></i>

                                        <h4 class="title">홍길동<br />
                                            <small>소프트웨어공학과 교수</small>
                                        </h4>
                                    </a>
                                </div>
                                <p class="description text-center">
                                    <br>
                                    가르치는과목들<br>
                                    1.과정지도2<br>
                                    2.파이썬<br>
                                    3.자료구조<br>
                                    4.디비플젝<br>
                                </p>
                            </div>
                            <hr>
                            <div class="text-center">
                                <button href="#" class="btn btn-simple"><i class="fa fa-facebook-square"></i></button>
                                <button href="#" class="btn btn-simple"><i class="fa fa-twitter"></i></button>
                                <button href="#" class="btn btn-simple"><i class="fa fa-google-plus-square"></i></button>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>


    <footer class="footer">
        <div class="container-fluid">

            <p class="copyright pull-right">
                &copy; <script>document.write(new Date().getFullYear())</script> <a href="http://www.creative-tim.com">Creative Tim</a>, made with love for a better web
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

