<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/" />
<html>
<head>
    <meta charset='UTF-8'>

    <title>skhu 졸업요건</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="style/style.css"/>

    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet" media="screen">

    <style>


        * {
            margin: 0;
            padding: 0;
        }
        body {
            font: 14px/1.4 Georgia
        }
        #page-wrap {
            margin: 50px;
        }
        p {
            margin: 20px 0;
        }

        /*
        Generic Styling, for Desktops/Laptops
        */
        table {
            width: 70%;
            margin:auto;
            border-collapse: collapse;
        }
        /* Zebra striping */
        tr:nth-of-type(odd) {
            background: #eee;
        }
        th {
            background: #333;
            color: white;
            font-weight: bold;
            text-align: center;
        }
        td, th {
            padding: 6px;
            border: 1px solid #ccc;
            text-align: left;
        }

        @media
        only screen and (max-width: 760px),
        (min-device-width: 768px) and (max-device-width: 1024px)  {

            /* Force table to not be like tables anymore */
            table, thead, tbody, th, td, tr {
                display: block;
            }

            /* Hide table headers (but not display: none;, for accessibility) */
            thead tr {
                position: absolute;
                top: -9999px;
                left: -9999px;
            }

            tr { border: 1px solid #ccc; }

            td.block
            {
                border: 1px solid black;
            }
            td {
                /* Behave  like a "row" */
                border: none;
                border-bottom: 1px solid #eee;
                position: relative;
                padding-left: 50%;
            }

            td:before {
                /* Now like a table header */
                position: absolute;
                /* Top/left values mimic padding */
                top: 6px;
                left: 6px;
                width: 45%;
                padding-right: 10px;
                white-space: nowrap;
            }

            /*
            Label the data
            */
            td:nth-of-type(1):before { content: "졸업조건"; }
            td:nth-of-type(2):before { content: "기타졸업조건"; }

        }

        /* Smartphones (portrait and landscape) ----------- */
        @media only screen
        and (min-device-width : 320px)
        and (max-device-width : 480px) {
            body {
                padding: 0;
                margin: 0;
                width: 320px; }
        }

        /* iPads (portrait and landscape) ----------- */
        @media only screen and (min-device-width: 768px) and (max-device-width: 1024px) {
            body {
                width: 495px;
            }
        }



    </style>

    <script>
        function fnMove(seq){
            var offset = $("#div" + seq).offset();
            $('html, body').animate({scrollTop : offset.top}, 400);
        }
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
                            <h4 class="title">18학번 이전졸업 요건</h4>
                            <p class="category">쇼프트웨어공학과 졸업요건</p>



                            <br> <br />
                            <h2>▶기본 졸업요건</h2>
                            <br> <br />
                            <div style="text-align: center">

                                <div class="전공과정">

                                    <table class="전공과정">
                                        <thead>
                                        <tr>
                                            <th>기본 졸업요건</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>- 졸업학점 130학점 이상을 이수한 자<br> - 비아메디아 채플 이수기준을
                                                충족한 자<br> - 사회봉사 이수기준을 충족한 자. <br> 다만, 장애학생의 경우
                                                사회봉사 이수가 곤란하다고 판단될 시, 총장은 이에 대한 이수를 면제할 수 있다.<br> -
                                                교양필수, 전공필수 과목을 모두 이수한 자<br> - 다음 전공 이수방식 중 하나를 선택하여
                                                각 전공에서 요구하는 졸업자격을 충족한 자<br> - 주전공과 부전공<br> -
                                                복수1전공과 복수2전공<br> - 혁신융합전공<br> - 특별과정을 신청한 경우, 그
                                                이수기준을 충족한 자<br> - 전공탐색 이수학점을 충족한 자<br>
                                            </td>


                                        </tr>


                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <br /> <br /> <br />
                            <h2>▶교양과정</h2>

                            <p class="category">교양(일반 : 32학점 이상 이수, 전공기초과정 :
                                47학점이상(32학점 + 15학점))</p>
                            <br /><br>
                            <div style="text-align: center">

                                <table class="교양필수">
                                    <thead>
                                    <tr>
                                        <th rowspan="2" width="15%">대상</th>
                                        <th rowspan="2" width="40%">교양필수</th>
                                        <th>교양선택</th>
                                        <th rowspan="2">교양학점</th>
                                        <th rowspan="2">전공기초과정</th>


                                    </tr>

                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>2015학번까지</td>
                                        <td>채플: 2회 이상, 사회봉사: 1회 이상</td>
                                        <td>전공기초과정: 2과목이상, 일반: 30학점</td>
                                        <td>32학점이상</td>
                                        <td rowspan="2">47학점 이상(15학점 이상 추가)</td>
                                    </tr>

                                    <tr>
                                        <td>2016, 2017학번</td>
                                        <td>채플: 2회 이상, 사회봉사: 1회 이상, 일반: 3과목</td>
                                        <td>전공기초과정: 2과목이상, 일반: 28학점</td>
                                        <td>32학점이상</td>

                                    </tr>




                                    </tbody>
                                </table>
                            </div>

                            <br />
                            <h2>▶전공과정</h2>
                            <p class="category">전공 과정 : [특별과정] 에 따라 주전공 학위를 위해 취득해야 하는
                                [전공] 학점이 다름.</p>
                            <br> <br>
                            <div style="text-align: center">
                                <h2>= 소프트웨어공학과 학생 =</h2>

                                <br />
                                <div class="주전공">
                                    <h3>주전공(전공기초)</h3>

                                    <table class="주전공">
                                        <thead>
                                        <tr>
                                            <th width="20%">대상</th>
                                            <th width="40%">졸업조건</th>
                                            <th colspan="2">기타 졸업조건</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>[2008~2013학번까지]<br />
                                            </td>
                                            <td class="block">전필37학점 + 전선 23학점<br /> 전공 60학점 이상
                                                이수
                                            </td>

                                            <td rowspan="2">-전공기초과정<br /> (이산수학, 대학수학, 정보사회론,
                                                컴퓨터 활용 중 <br />2과목 이상을 포함하여 교양 15학점 이상 이수)<br /> (총 교양
                                                47학점 이상)
                                            </td>

                                        </tr>

                                        <tr>
                                            <td>[2014학번부터]<br />
                                            </td>
                                            <td>전필31학점 + 전선29학점 <br /> 전공 60학점 이상 이수
                                            </td>


                                        </tr>


                                        </tbody>
                                    </table>
                                </div>
                                <br />
                                <div class="주전공">
                                    <h3>주전공(전공심화)</h3>

                                    <table class="주전공">
                                        <thead>
                                        <tr>
                                            <th width="20%">대상</th>
                                            <th width="40%">졸업조건</th>
                                            <th colspan="2">기타 졸업조건</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>[2008~2013학번까지]<br />
                                            </td>
                                            <td class="block">전필37학점 + 전선 38학점 전공 75학점 이상 이수<br>
                                                (전공15학점추가)
                                            </td>

                                            <td rowspan="2">-전공심화과정<br /> (전공 15학점 이상 추가 이수, 총
                                                전공 75학점 이상)<br /> 타과복수전공과정, 타과부전공과정, 연계전공과정, 자기설계과정,
                                                해외창과정 등의 특별과정 중 한 과정 이상 이수
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>[2014학번부터]<br />
                                            </td>
                                            <td>전필31학점 + 전선44학점 전공 75학점 이상 이수<br> (전공15학점추가)
                                            </td>


                                        </tr>


                                        </tbody>
                                    </table>
                                </div>

                                <br />

                                <div class="복수전공">
                                    <h3>복수전공</h3>

                                    <table class="복수전공">
                                        <thead>
                                        <tr>
                                            <th width="20%">대상</th>
                                            <th width="50%">졸업조건</th>
                                            <th>기타 졸업조건</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>전체</td>
                                            <td>전필 31학점 포함하여 전공 40학점 이상 이수</td>
                                            <td>졸업학점 이외의 조건 없음</td>
                                        </tr>


                                        </tbody>
                                    </table>
                                </div>

                                <br>

                                <div class="부전공">
                                    <h3>부전공</h3>

                                    <table class="부전공">
                                        <thead>
                                        <tr>
                                            <th width="20%">대상</th>
                                            <th width="50%">졸업조건</th>
                                            <th>기타 졸업조건</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>전체</td>
                                            <td>전필 31학점 포함하여 전공 60학점 이상 이수</td>
                                            <td>졸업학점 이외의 조건 없음</td>


                                        </tr>

                                        </tbody>
                                    </table>
                                </div>

                                <br>

                                <div class="편입">
                                    <h3>편입</h3>

                                    <table class="편입">
                                        <thead>
                                        <tr>
                                            <th width="20%">대상</th>
                                            <th width="50%">졸업조건</th>
                                            <th>기타 졸업조건</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>전체</td>
                                            <td>1,2 학년 지도과목을 제외하고 전필 27학점을 포함하여 전공 60 학점이상 이수</td>
                                            <td>졸업학점 이외의 조건 없음</td>


                                        </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <br> <br>


                            <div style="text-align: center">
                                <h2>= 타과학생 =</h2>

                                <br>
                                <div class="전과">
                                    <h3>전과</h3>

                                    <table class="전과">
                                        <thead>
                                        <tr>
                                            <th width="10%">대상</th>
                                            <th width="26%">졸업조건</th>
                                            <th colspan="2">기타 졸업조건</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>전체</td>
                                            <td>학번에 따라 전공필수 이수<br /> 전과이전 학기의 지도과목은 제외하되,<br>
                                                그만큼의 학점은 전선을 이수하여 전공학점을 채워야함
                                            </td>
                                            <td rowspan="2" class="block">-전공기초과정<br /> (이산수학,
                                                대학수학, 정보사회론, 컴퓨터 활용 포함 교양 15학점 이상 이수, 총 교양 47학점 이상),<br />


                                            </td>

                                            <td>-전공심화과정<br /> (전공 15학점 이상 추가 이수, 총 전공 75학점 이상),<br />
                                                타과복수전공과정, 타과부전공과정, 연계전공과정, 자기설계과정, 해외창과정 등의 특별과정 중 한 과정
                                                이상 이수
                                            </td>


                                        </tr>

                                        </tbody>
                                    </table>
                                </div>

                                <br />

                                <div class="복수전공">
                                    <h3>복수전공</h3>

                                    <table class="복수전공">
                                        <thead>
                                        <tr>
                                            <th width="20%">대상</th>
                                            <th width="50%">졸업조건</th>
                                            <th>기타 졸업조건</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>전체</td>
                                            <td>지도 과목 제외하고 전필 24학점 포함하여 전공 40학점 이상 이수(지도 과목은 선택)
                                            </td>
                                            <td>졸업학점 이외의 조건 없음</td>
                                        </tr>


                                        </tbody>
                                    </table>
                                </div>

                                <br />

                                <div class="부전공">
                                    <h3>부전공</h3>

                                    <table class="부전공">
                                        <thead>
                                        <tr>
                                            <th width="20%">대상</th>
                                            <th width="50%">졸업조건</th>
                                            <th>기타 졸업조건</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>전체</td>
                                            <td>전필, 전선 관계없이 21학점 이상 이수</td>
                                            <td>졸업학점 이외의 조건 없음</td>


                                        </tr>

                                        </tbody>
                                    </table>
                                </div>

                                <br>
                                <div class="참고">
                                    <h3>< 참고 ></h3>

                                    <table class="참고">

                                        <tbody>
                                        <tr>
                                            <td>참고</td>
                                            <td>* 2015학번까지 과정지도 6개중 5개만 이수해도 인점함.<br> * 공학계
                                                타학과 개설 과목을 이수한 후 전공​인정신청서와 이수구분변경신청서를 제출하여 승인된 경우, 전공
                                                선택으로 인정합니다.<br> 단, 전공필수 과목은 반드시 소프트웨어공학과에서 이수하여야 하며,
                                                같은 과목을 소프트웨어공학과와 타과에서 <br> 이중 이수한 경우 타과 이수 과목은 전공으로
                                                인정하지 않습니다.<br> 1. 고학년들이 1, 2학년 과목을 재수강 또는 초수강 하려고 할
                                                때, 전탐 과목을 대체 과목으로지정할 수 있습니다. <br> 졸업 사정 시에 전공으로 인정하여
                                                사정합니다. 학과에서 대체 과목 목록이 필요하면 작성합니다.<br> 2. 전공탐색 과목을 대체
                                                과목으로 지정할 수 없고 이제는 개설되지 않는 1, 2학년 과목<br> (예:과정지도 1, 2
                                                , 3등)은 개설된 다른 전공 과목을 수강(몇 학점이든 상관 없음)하면 인정합니다.<br>
                                                단, 재수강인 경우에는 대체과목으로 처리되어 B+이하의 성적만 받을 수 있습니다.<br>
                                                초수강인 경우에는 성적 부여에 제한이 없습니다
                                            </td>

                                        </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>


                            <br />
                            <h2>▶공통</h2>
                            <p class="category">공통으로 들어야 하는 학년별 전공필수</p>
                            <div style="text-align: center">

                                <br />
                                <h2>소프트웨어공학과 전공필수</h2>
                                <br />
                                <table class="전공필수">
                                    <thead>
                                    <tr>
                                        <th>학년</th>
                                        <th>학기</th>
                                        <th>2008~2013</th>
                                        <th>2014~2017</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td rowspan="2" class="block">1</td>
                                        <td>1</td>
                                        <td>C프로그래밍I(3), 과정지도1(1)</td>
                                        <td>C프로그래밍I(3), 과정지도1(1)</td>

                                    </tr>

                                    <tr>
                                        <td>2</td>
                                        <td>C프로그래밍II(3), 과정지도2(1)</td>
                                        <td>웹페이지구축I(3), 과정지도2(1)</td>

                                    </tr>

                                    <tr>
                                        <td rowspan="2">2</td>
                                        <td>1</td>
                                        <td>컴퓨터구조(3), Java프로그래밍(3)<br /> 데이터베이스개론(3),
                                            과정지도3(1)
                                        </td>
                                        <td>컴퓨터구조(3), Java프로그래밍(3)<br /> 데이터베이스개론(3),
                                            과정지도3(1)
                                        </td>

                                    </tr>

                                    <tr>
                                        <td>2</td>
                                        <td>웹프로그래밍I(3), 자료구조론(3)<br /> 운영체제론(3), 과정지도4(1)
                                        </td>
                                        <td>자료구조론(3)<br /> 운영체제론(3), 과정지도4(1)
                                        </td>

                                    </tr>

                                    <tr>
                                        <td rowspan="2">3</td>
                                        <td>1</td>
                                        <td>알고리즘(3), 시스템분석및설계(3)<br /> 과정지도5(1)
                                        </td>
                                        <td>알고리즘(3)<br /> 과정지도5(1)
                                        </td>

                                    </tr>

                                    <tr>
                                        <td>2</td>
                                        <td>과정지도6(1)</td>
                                        <td>과정지도6(1)</td>

                                    </tr>

                                    <tr>
                                        <td>4</td>
                                        <td>1,2</td>
                                        <td>졸업지도(1)</td>
                                        <td>졸업지도(1)</td>

                                    </tr>

                                    <tr>
                                        <td colspan="2">합계</td>
                                        <td>37</td>
                                        <td>31</td>

                                    </tr>


                                    </tbody>
                                </table>
                                *2015학번까지 과정지도 6개중 5개만 이수해도 인정함 <br />
                            </div>


                        </div>




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
