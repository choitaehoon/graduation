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
                                <h4 class="title"> 졸업 관리</h4>
                                <br><br><br>
                                <p class="category">
                                    <select>
                                        <option>학년별</option>
                                        <option>이수학기별</option>
                                        <option>학번별</option>
                                        <option>학과별</option>
                                        <option>이름</option>
                                        <option>학번</option>
                                        <option>전공 필수 미충족</option>
                                        <option>교양 필수 미충족</option>
                                        <option>졸업요건 미충족 학생 관리</option>
                                    </select>
                                    <input type="text">
                                    <a href="studentLack.html"> <button type="submit" class="btn btn-primary">조회</button></a>


                                <table class="table table-striped" style="width:100%; max-width:100%; margin-bottom:20px;">
                                    <thead>
                                    <tr>
                                        <th>학번</th>
                                        <th>이름</th>
                                        <th>이메일</th>
                                        <th>학과</th>
                                        <th>권한</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                    <tr>
                                        <td>201432000</td>
                                        <td>김모씨</td>
                                        <td>aaa@naver.com</td>
                                        <td>소프트웨어공학과</td>
                                        <td><a href="/login/manager_stu_info?type=${member.type}&id=${member.id}"><button class="btn btn-primary">수정</button></a>
                                            <a href="studentGraduation.html"> <button class="btn btn-danger">삭제</button></a></td>
                                    </tr>
                                    <tr>
                                        <td>201432001</td>
                                        <td>최모씨</td>
                                        <td>qwjkasdiuqebn@naver.com</td>
                                        <td>소프트웨어공학과</td>
                                        <td><button class="btn btn-primary">수정</button><button class="btn btn-danger">삭제</button></td>
                                    </tr>
                                    <tr>
                                        <td>201432002</td>
                                        <td>이모씨</td>
                                        <td>pqwoenqweh@naver.com</td>
                                        <td>소프트웨어공학과</td>
                                        <td><button class="btn btn-primary">수정</button><button class="btn btn-danger">삭제</button></td>
                                    </tr>
                                    <tr>
                                        <td>201432003</td>
                                        <td>강모씨</td>
                                        <td>zmzsjdiqweui@naver.com</td>
                                        <td>소프트웨어공학과</td>
                                        <td><button class="btn btn-primary">수정</button><button class="btn btn-danger">삭제</button></td>
                                    </tr>
                                    <tr>
                                        <td>201432004</td>
                                        <td>김가나</td>
                                        <td>1111111@naver.com</td>
                                        <td>소프트웨어공학과</td>
                                        <td><button class="btn btn-primary">수정</button><button class="btn btn-danger">삭제</button></td>
                                    </tr>
                                    <tr>
                                        <td>201432005</td>
                                        <td>서모씨</td>
                                        <td>22222222222@naver.com</td>
                                        <td>소프트웨어공학과</td>
                                        <td><button class="btn btn-primary">수정</button><button class="btn btn-danger">삭제</button></td>
                                    </tr>
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
</html>
