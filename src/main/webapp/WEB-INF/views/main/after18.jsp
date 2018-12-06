<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<c:url var="R" value="/" />
<html>
<head>
    <title>skhu 졸업요건</title>
    <meta charset='UTF-8'>

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
            font: 14px/1.4 Georgia;

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
            margin: auto;
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

        @media only screen and (max-width: 760px) , ( min-device-width : 768px)
        and (max-device-width: 1024px) {
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
            tr {
                border: 1px solid #ccc;
            }
            td.block {
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
            td:nth-of-type(1):before {
                content: "졸업조건";
            }
            td:nth-of-type(2):before {
                content: "기타졸업조건";
            }
        }

        /* Smartphones (portrait and landscape) ----------- */
        @media only screen and (min-device-width : 320px) and (max-device-width
        : 480px) {
            body {
                padding: 0;
                margin: 0;
                width: 320px;
            }
        }

        /* iPads (portrait and landscape) ----------- */
        @media only screen and (min-device-width: 768px) and (max-device-width:
                1024px) {
            body {
                width: 495px;
            }
        }



    </style>

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
                            <h4 class="title">18학번 이후 졸업 요건</h4>
                            <p class="category">소프트웨어공학과 졸업요건</p>


                            <br> <br> <br> <br>

                            <div style="text-align: center">
                                <div class="기본 졸업요건">
                                    <h3>기본 졸업요건</h3>
                                    <table class="기본 졸업요건">
                                        <thead>
                                        <tr>
                                            <th>기본 졸업요건</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>- 졸업학점 130학점 이상을 이수한 자<br>
                                                - 비아메디아 채플 이수기준을 충족한 자<br>
                                                - 사회봉사 이수기준을 충족한 자. <br>
                                                다만, 장애학생의 경우 사회봉사 이수가 곤란하다고 판단될 시, 총장은 이에 대한 이수를 면제할 수 있다.<br> -
                                                교양필수, 전공필수 과목을 모두 이수한 자<br>
                                                - 다음 전공 이수방식 중 하나를 선택하여 각 전공에서 요구하는 졸업자격을 충족한 자<br>
                                                - 주전공과 부전공<br> -
                                                복수1전공과 복수2전공<br>
                                                - 혁신융합전공<br>
                                                - 특별과정을 신청한 경우, 그 이수기준을 충족한 자<br>
                                                - 전공탐색 이수학점을 충족한 자<br>
                                            </td>


                                        </tr>


                                        </tbody>
                                    </table>
                                </div>


                                <br>
                                <h2>= 소프트웨어공학과 학생 =</h2>
                                <br />
                                <div class="교양과정">
                                    <h3>교양과정</h3>

                                    <table class="교양과정">

                                        <tbody>
                                        <tr>
                                            <td style="width: 20%">핵심교양필수</td>
                                            <td colspan="2">- 인권과 평화 (2학점)<br> - 대학생활 세미나1
                                                (2학점)<br> - 대학생활 세미나2 (2학점)<br> - 말과 글 (2학점)<br>
                                                - 사회봉사1 (2학점)<br> - 비아메디아 채플 (2학점) -> 재학중 2학기 동안 2과목
                                                이수해야함<br> - 과학기술과 에콜로지 (2학점)<br> - 데이터 활용 및 분석
                                                (2학점)
                                            </td>


                                        </tr>

                                        <tr>
                                            <td rowspan="3">영역지정필수</td>
                                            <td style="width: 10%">가치역량</td>
                                            <td>- 인간인권<br> - 생명평화<br> - 민주시민<br>

                                            </td>


                                        </tr>
                                        <tr>
                                            <td>대안역량</td>
                                            <td>- 융복합적 사고<br> - 조사 분석 정보활용<br> - 대안제시
                                                문제해결<br>

                                            </td>


                                        </tr>
                                        <tr>
                                            <td>실천역량</td>
                                            <td>- 민주적 소통<br> - 연대와 공동체적 실천<br>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">자기 계발 교양</td>
                                            <td></td>
                                        </tr>


                                        </tbody>
                                    </table>
                                </div>

                                <br />
                                <div class="전공과정">
                                    <h3 margin="auto">전공과정</h3>

                                    <table class="전공과정">
                                        <thead>
                                        <tr>
                                            <th>졸업조건</th>
                                            <th>기타졸업조건</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>- 세가지 중 하나 선택<br> - 주(40) + 부(20)<br> -
                                                복(40) +복(20)<br> - 혁신융합전공(60)<br>
                                            </td>
                                            <td>졸업학점 이외의 조건 없음</td>


                                        </tr>


                                        </tbody>
                                    </table>
                                </div>

                                <br />

                                <div class="전공탐색과정">
                                    <h3>전공탐색과정</h3>

                                    <table class="전공탐색과정">
                                        <thead>
                                        <tr>
                                            <th>졸업조건</th>
                                            <th>기타졸업조건</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td style="width: 50%">19학점 이상 이수해야함 -> 전공탐색세미나 포함<br>
                                                -3학점 (소속 융합 자율 학부 이외의 융합 자율 학부에서 개설한 전공탐색 과목 이수)<br>
                                                -전공탐색 과정의 교과목들<br> -c프로그래밍<br> -python<br>
                                                -웹 개발 입문<br> -등등….여러가지 있음
                                            </td>
                                            <td></td>



                                        </tr>


                                        </tbody>
                                    </table>
                                </div>

                                <br /> <br>
                                <div class="특별과정">
                                    <h3>특별과정</h3>

                                    <table class="특별과정">
                                        <thead>
                                        <tr>
                                            <th>졸업조건</th>
                                            <th>기타졸업조건</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td style="width: 40%">전공 기초 과정</td>
                                            <td></td>

                                        </tr>

                                        <tr>
                                            <td>전공 심화 과정</td>
                                            <td></td>

                                        </tr>
                                        <tr>
                                            <td>복수 전공 과정</td>
                                            <td>두 학기 수료 후 신청 가능 -> 신청이 가능한 자는 취득학점이 34학점 이상<br>
                                                이수자는 전공학점 40학점 이상 취득해야함 -> 취소 할 경우 교양선택 학점으로 인정


                                            </td>

                                        </tr>
                                        <tr>
                                            <td>부 전공 과정</td>
                                            <td>두 학기 수료 후 신청 가능 -> 신청이 가능한 자는 취득학점이 34학점 이상 <br>
                                                이수자는 교과 과정에 따라 21학점 취득해야함 -> 취소 할 경우 교양선택 학점으로 인정
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>연계 전공 과정</td>
                                            <td>두 개 이상의 학과의 전공과정과 교양과정을 연계하는 과정이다.)<br>
                                                신청하고자 하는 사람은 연계 전공 신청서를 제출하고 승인 받아야함<br> 두 학기 수료 후
                                                신청 가능 -> 신청이 가능한 자는 취득학점이 34학점 이상 <br> -> 이수자는
                                                연계전공학점 40학점 이상 취득 해야 함<br> -평생 교육사 과정<br> -교직
                                                과정<br> -해외창 과정<br> -자기 설계 과정<br> -부전공 또는
                                                복수 전공을 대체할 수 있음


                                            </td>

                                        </tr>


                                        </tbody>
                                    </table>
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

</html>