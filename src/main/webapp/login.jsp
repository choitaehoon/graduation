<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<c:url var="R" value="/" />--%>
<%--<!doctype html>--%>
<%--<head>--%>
    <%--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
    <%--<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"--%>
          <%--rel="stylesheet" media="screen">--%>
    <%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>--%>
    <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <%--<link rel="stylesheet" href="${R}res/common.css">--%>
    <%--<script src="${R}res/common.js"></script>--%>
<%--</head>--%>
<%--<body>--%>

<%--<section class="container">--%>
<%--<article class="half">--%>
    <%--<h1>SHKU졸업요건</h1>--%>
    <%--<div class="tabs">--%>
        <%--<span class="tab signin active"><a href="#">Sign in</a></span>--%>
        <%--&lt;%&ndash;<span class="tab signup"><a href="#signup">Sign up</a></span>&ndash;%&gt;--%>
    <%--</div>--%>
    <%--<div class="content">--%>
        <%--<div class="signin-cont cont">--%>
            <%--<form action="login/main" method="post" enctype="multipart/form-data">--%>
                <%--<input type="text" name="id" id="id" class="inpt" required="required" placeholder="학번">--%>
                <%--<input type="password" name="password" id="password" class="inpt" required="required" placeholder="비밀번호">--%>

                <%--<a href="login/signUp" id="remember" class="btn btn-default">--%>
                    <%--<label for="remember">회원가입</label>--%>

                    <%--&lt;%&ndash;<input type="checkbox" id="remember" class="checkbox" checked>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<label for="remember">Remember me</label>&ndash;%&gt;--%>
                    <%--<div class="submit-wrap">--%>
                        <%--<input type="submit" value="Sign in" class="submit">--%>
                        <%--<a href="login/findPassword" class="more">비밀번호를 잃어버리셧나요?</a>--%>
                    <%--</div>--%>
            <%--</form>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</article>--%>
<%--<div class="half bg" style="background-position: -60px 20px"></div>--%>
<%--</section>--%>

<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>--%>
<%--<script type="text/javascript">--%>
    <%--$('.tabs .tab').click(function(){--%>
        <%--if ($(this).hasClass('signin')) {--%>
            <%--$('.tabs .tab').removeClass('active');--%>
            <%--$(this).addClass('active');--%>
            <%--$('.cont').hide();--%>
            <%--$('.signin-cont').show();--%>
        <%--}--%>
        <%--if ($(this).hasClass('signup')) {--%>
            <%--$('.tabs .tab').removeClass('active');--%>
            <%--$(this).addClass('active');--%>
            <%--$('.cont').hide();--%>
            <%--$('.signup-cont').show();--%>
        <%--}--%>
    <%--});--%>
    <%--$('.container .bg').mousemove(function(e){--%>
        <%--$(this).css('background-position', -60 + 'px ' + 20 + 'px');--%>
    <%--});--%>
<%--</script>--%>


<%--</body>--%>
<%--</html>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Skhu졸업요건</title>
</head>

<body>
<div class="wrapper">
    <%@include file="WEB-INF/views/login/menu.jsp"%>

    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                    <div class="card ">
                        <div class="header">
                            <h4 class="title">최신 공지사항</h4>
                            <p class="category">관심있는 공지사항을 체크해 주세요</p>
                        </div>
                        <div class="content">
                            <div class="table-full-width">
                                <table class="table">
                                    <tbody>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="checkbox1" type="checkbox">
                                                <label for="checkbox1"></label>
                                            </div>
                                        </td>
                                        <td>[IT학부] SM 사업 공지(1학년 멘티 모집)</td>
                                        <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
                                                <i class="fa fa-edit"></i>
                                            </button>
                                            <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
                                                <i class="fa fa-times"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="checkbox2" type="checkbox" checked>
                                                <label for="checkbox2"></label>
                                            </div>
                                        </td>
                                        <td>[영어스피치대회] 제24회 English Speec...</td>
                                        <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
                                                <i class="fa fa-edit"></i>
                                            </button>
                                            <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
                                                <i class="fa fa-times"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="checkbox3" type="checkbox">
                                                <label for="checkbox3"></label>
                                            </div>
                                        </td>
                                        <td>[중앙도서관] 10/4(목). 연극 '쥐덫' 보러 ...
                                        </td>
                                        <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
                                                <i class="fa fa-edit"></i>
                                            </button>
                                            <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
                                                <i class="fa fa-times"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="checkbox4" type="checkbox" checked>
                                                <label for="checkbox4"></label>
                                            </div>
                                        </td>
                                        <td>[구로마을대학] 공정무역 교육 및 캠페인전문가 양성...</td>
                                        <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
                                                <i class="fa fa-edit"></i>
                                            </button>
                                            <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
                                                <i class="fa fa-times"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="checkbox5" type="checkbox">
                                                <label for="checkbox5"></label>
                                            </div>
                                        </td>
                                        <td>[IT학부] SM 사업 공지</td>
                                        <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
                                                <i class="fa fa-edit"></i>
                                            </button>
                                            <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
                                                <i class="fa fa-times"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="checkbox6" type="checkbox" checked>
                                                <label for="checkbox6"></label>
                                            </div>
                                        </td>
                                        <td>[중앙도서관] 9/11-10/7. 이용자 만족도 조...</td>
                                        <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
                                                <i class="fa fa-edit"></i>
                                            </button>
                                            <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
                                                <i class="fa fa-times"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="footer">
                                <hr>
                                <div class="stats">
                                    <i class="fa fa-history"></i> 17분 전에 글을 올렸습니다.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card ">
                        <div class="header">
                            <h4 class="title">최신  Q&A</h4>
                            <p class="category">이미 답변한 질문에 체크해주세요</p>
                        </div>
                        <div class="content">
                            <div class="table-full-width">
                                <table class="table">
                                    <tbody>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="checkbox1" type="checkbox">
                                                <label for="checkbox1"></label>
                                            </div>
                                        </td>
                                        <td>디지털 컨텐츠 학과 수업 '디지털 음악 II'에 관...</td>
                                        <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
                                                <i class="fa fa-edit"></i>
                                            </button>
                                            <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
                                                <i class="fa fa-times"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="checkbox2" type="checkbox" checked>
                                                <label for="checkbox2"></label>
                                            </div>
                                        </td>
                                        <td>4학기 수료자가 추가학점이수가 가능한지요?</td>
                                        <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
                                                <i class="fa fa-edit"></i>
                                            </button>
                                            <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
                                                <i class="fa fa-times"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="checkbox3" type="checkbox">
                                                <label for="checkbox3"></label>
                                            </div>
                                        </td>
                                        <td>통계 프로그램 사용 관련
                                        </td>
                                        <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
                                                <i class="fa fa-edit"></i>
                                            </button>
                                            <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
                                                <i class="fa fa-times"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="checkbox4" type="checkbox" checked>
                                                <label for="checkbox4"></label>
                                            </div>
                                        </td>
                                        <td>통계 프로그램 구입 요청 件</td>
                                        <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
                                                <i class="fa fa-edit"></i>
                                            </button>
                                            <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
                                                <i class="fa fa-times"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="checkbox5" type="checkbox">
                                                <label for="checkbox5"></label>
                                            </div>
                                        </td>
                                        <td>학번 조회 및 오티일정</td>
                                        <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
                                                <i class="fa fa-edit"></i>
                                            </button>
                                            <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
                                                <i class="fa fa-times"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="checkbox">
                                                <input id="checkbox6" type="checkbox" checked>
                                                <label for="checkbox6"></label>
                                            </div>
                                        </td>
                                        <td>종합시험을 토요일에 볼 수 있도록 해주십시오</td>
                                        <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
                                                <i class="fa fa-edit"></i>
                                            </button>
                                            <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
                                                <i class="fa fa-times"></i>
                                            </button>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="footer">
                                <hr>
                                <div class="stats">
                                    <i class="fa fa-history"></i> 3분전에 질문이 올라왔습니다.
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

<!--  Notifications Plugin    -->
<script src="${R}assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="${R}assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="${R}assets/js/demo.js"></script>


<script type="text/javascript">
    $(document).ready(function(){

        demo.initChartist();

        $.notify({
            icon: 'pe-7s-mail',
            message: "읽지 않은 쪽지가 1통있습니다."
        },{
            type: 'info',
            timer: 4000
        });

    });
</script>

</html>
