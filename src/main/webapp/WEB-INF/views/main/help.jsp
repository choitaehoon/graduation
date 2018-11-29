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
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h1 class="title">도움말</h1>
                            <p class="category">졸업 관리 홈페이지 사용법</p>
                        </div>

                        <div id="three-column" class="container">

                            <div id="tbox1">
                                <div class="title">
                                    <h3>나의정보</h3>
                                </div>
                                <p>나의 기본적인 정보가 담겨있습니다</p>
                                <p>아이디, 비밀번호, 이름 ,이메일, 비밀번호 질문, 전화번호</p>

                            </div>
                            <br>
                            <div id="tbox2">
                                <div class="title">
                                    <h3>나의 졸업관리</h3>
                                </div>
                                <p>시뮬레이션을 통한 나의 졸업을 미리 설계할수 있습니다.</p>
                                <p>강의 , 대체과목, 복수전공, 부전공 등 여러가지 시뮬레이션이 가능합니다.</p>
                                <P>시뮬레이션을 통해 학점이수, 평점등 계산이 가능합니다.</P>
                            </div>
                            <br>
                            <div id="tbox3">
                                <div class="title">
                                    <h3>졸업 요건</h3>
                                </div>
                                <p>복잡한 졸업에 필요한 여러 부수적인 것을 보다 보기 쉽게 만든 페이지 입니다.</p>
                                <p>자신이 속한 학과, 학번에 따라 달라지는 졸업요건 현황을 알기 쉽게 설명해 놓은 페이지 입니다.</p>
                            </div>
                            <br>
                            <div id="tbox4">
                                <div class="title">
                                    <h3>대체 과목 페이지 </h3>
                                </div>
                                <p>폐강된 수업에 대한 대체과목리스트를 보여준다.</p>
                                <p>대체과목 초수강 과 재수강 시뮬레이션 신청을 할수 있습니다.</p>
                            </div>
                            <br>
                            <div id="tbox5">
                                <div class="title">
                                    <h3>공지사항</h3>
                                </div>
                                <p>일반적인 졸업요건에 대한 공지사항이 있습니다.
                                    전 학년 학과 학번에 걸쳐 다양한 변경, 수정 내용이 업로드 됩니다.</p>
                            </div>
                            <br>
                            <div id="tbox6">
                                <div class="title">
                                    <h3>Q&A</h3>
                                </div>
                                <p>졸업요건 또는 졸업관리 프로그램에 대해서 질문을 할수 있는 공간입니다.</p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
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