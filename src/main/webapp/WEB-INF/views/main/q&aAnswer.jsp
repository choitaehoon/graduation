<%--
  Created by IntelliJ IDEA.
  User: JiEun
  Date: 2018-10-14
  Time: 오전 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>skhu 졸업요건</title>
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
                            <h4 class="title">Q & A</h4>


                            <div id="content">
                                <br />
                                <h1>질문 답변하기</h1>
                                <br /> <label>제목</label>
                                <div class="form-group">
                                    <input type="text" style="width: 300px" value="디지털 컨텐츠 학과 수업 '디지털 음악 II'에 관하여 질문이 있습니다." />
                                </div>
                                <br /> <label>작성자</label>
                                <div class="form-group">
                                    <input type="text" style="width: 100px" value="손송암" />
                                </div>
                                <label>질문 내용</label>
                                <div class="form-group">
											<textArea cols=80 rows=10>

안녕하세요 디지털 컨텐츠 학과 수업을 수강하고 있는 손송암이라고 합니다.


											</textArea>
                                </div>
                                <label>답변 내용</label>
                                <div class="form-group">
											<textArea cols=80 rows=10>
손송암 학생 안녕하세요 관리자 입니다.
 질문해주신 문제에 대해서 설명드리려고 합니다...</textArea>
                                </div>

                                <div>
                                    <form>
                                        날짜 : <input type="month"><br>
                                        파일 첨부  <input type="file"> * 2MB까지 가능
                                    </form>
                                </div>

                                <div id="buttons">
                                    <a class="btn btn-primary"> <i
                                            class="glyphicon glyphicon-ok"></i> 저장
                                    </a> <a class="btn btn-danger" href="#"><i
                                        class=" glyphicon glyphicon-remove"></i> 삭제</a> <a href="#"
                                                                                           class="btn btn-default"> <i
                                        class="glyphicon glyphicon-list"></i> Q&A으로
                                </a>

                                </div>

                            </div>


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
                <script>
                    document.write(new Date().getFullYear())
                </script>
                <a href="http://www.creative-tim.com">Creative Tim</a>, made with
                love for a better web
            </p>
        </div>
    </footer>


</div>
</div>


</body>

<!--   Core JS Files   -->
<script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>

</html>
