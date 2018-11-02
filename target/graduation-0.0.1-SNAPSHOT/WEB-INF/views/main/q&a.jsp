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
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Q & A</h4>
                                <p class="category">관리자가 답을 해드립니다.</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                    <th>no</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>작성일</th>
                                    <th>조회수</th>
                                    <th>상태</th>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>65</td>
                                        <td>디지털 컨텐츠 학과 수업 '디지털 음악 II'에 관...  </td>
                                        <td>손송암</td>
                                        <td>2018-08-14</td>
                                        <td>82</td>
                                        <td><a  href="q&aAnswer.html"><div class="alert alert-danger"> <b> 답변 요함 </b></div></a></td>
                                    </tr>
                                    <tr>
                                        <td>64</td>
                                        <td>4학기 수료자가 추가학점이수가 가능한지요?</td>
                                        <td>김선태</td>
                                        <td>2018-07-13</td>
                                        <td>137</td>
                                        <td><div class="alert alert-success"> <b> 답변 완료 </b></div></td>
                                    </tr>
                                    <tr>
                                        <td>63</td>
                                        <td>휴학신청관련 문의</td>
                                        <td>김성희</td>
                                        <td>2018-02-13</td>
                                        <td>428</td>
                                        <td><div class="alert alert-warning"> <b> 유선 통보 </b></div></td>
                                    </tr>
                                    <tr>
                                        <td>62</td>
                                        <td>통계 프로그램 사용 관련 </td>
                                        <td>구현주</td>
                                        <td>2018-08-14</td>
                                        <td>1022</td>
                                        <td><div class="alert alert-success"> <b> 답변 완료 </b></div></td>
                                    </tr>
                                    <tr>
                                        <td>61</td>
                                        <td>통계 프로그램 구입 요청 件</td>
                                        <td>유윤열</td>
                                        <td>2017-03-24</td>
                                        <td>34</td>
                                        <td><div class="alert alert-success"> <b> 답변 완료 </b></div></td>
                                    </tr>
                                    <tr>
                                        <td>60</td>
                                        <td>종합시험 일정과 관련해서 다시 말씀드립니다</td>
                                        <td>박은송</td>
                                        <td>2016-10-31</td>
                                        <td>21</td>
                                        <td><div class="alert alert-success"> <b> 답변 완료 </b></div></td>
                                    </tr>
                                    </tbody>
                                </table>

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