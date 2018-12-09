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

            tr { border: 1px solid #eee; }

            td.block
            {
                border: 1px solid #909297;
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
                            <p class="category">컴퓨터공학과 졸업요건</p>



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
                                        <th rowspan="2" width="10%">대상</th>
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
                                <h2>컴퓨터공학과 학생</h2>

                                <br />
                                <div class="주전공">
                                    <h3>주전공(전공기초)</h3>

                                    <table class="주전공">
                                        <thead>
                                        <tr>
                                            <th width="10%">대상</th>
                                            <th width="40%">졸업조건</th>
                                            <th colspan="2">기타 졸업조건</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>[2012학번 까지]<br />
                                            </td>
                                            <td class="block">
                                                전공 80 학점 이상 이수<br />
                                                - 이전에 학과 지정 교양으로 이수한 학점은 전공 인정<br>
                                                - 학과지정교양:<br>
                                                이산수학, 대학수학, 대학물리와 실험1/2,미적분학, 선형대수, 확률과통계
                                            </td>

                                            <td rowspan="2">
                                                졸업학점 이외의 조건 없음

                                            </td>

                                        </tr>

                                        <tr>
                                            <td>[2013학번부터]<br />
                                            </td>
                                            <td>
                                                전공 80 학점이상이수<br />
                                                - 14학번 까지 학과지정교양(6학점):<br />
                                                정보사회론, 기초영어1<br />
                                                - 15학번부터 학과지정교양(12학점):<br />
                                                정보사회론, 기초영어1, 공업수학1, 공업수학2<br />
                                                - 2017하번부터 학과지정교양(12학점):<br />
                                                정보사회론, 교양 영어, 공업수학1, 공업수학2
                                            </td>


                                        </tr>


                                        </tbody>
                                    </table>
                                </div>
                                <br />


                                <br />

                                <div class="복수전공">
                                    <h3>(타과)복수전공</h3>

                                    <table class="복수전공">
                                        <thead>
                                        <tr>
                                            <th width="10%">대상</th>
                                            <th width="50%">졸업조건</th>
                                            <th>기타 졸업조건</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>전체</td>
                                            <td>전공 60학점 이상 이수</td>
                                            <td>졸업학점 이외의 조건 없음</td>
                                        </tr>


                                        </tbody>
                                    </table>
                                </div>

                                <br>

                                <div class="부전공">
                                    <h3>(타과)부전공</h3>

                                    <table class="부전공">
                                        <thead>
                                        <tr>
                                            <th width="10%">대상</th>
                                            <th width="50%">졸업조건</th>
                                            <th>기타 졸업조건</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>전체</td>
                                            <td>전공 80 학점이상 이수</td>
                                            <td>졸업학점 이외의 조건 없음</td>


                                        </tr>

                                        </tbody>
                                    </table>
                                </div>

                                <br>

                                <div class="전과">
                                    <h3>전과</h3>

                                    <table class="전과">
                                        <thead>
                                        <tr>
                                            <th width="10%">대상</th>
                                            <th width="50%">졸업조건</th>
                                            <th>기타 졸업조건</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>전체</td>
                                            <td>
                                                2011학년도 까지는 2004~2005 기준적용<br>
                                                전과학 학년/학기부터 들으면 전필과목이 빠지므로 전선 졸업을 더 이수하여 전공학점을 채워야함<br>
                                                전과한 이후부터 지도과목을 모두 이수해야함

                                            </td>
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
                                        <th width="10%">대상</th>
                                        <th width="60%">졸업조건</th>
                                        <th >기타 졸업조건</th>


                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>전체</td>
                                        <td>
                                            2011학년도 까지는 2004~2005 기준적용<br />
                                            1,2 학년 지도과목은 이수하지 x<br />
                                            그 학점만큼의 전필학점을 더이수하여 전공학점을 채워야함
                                        </td>


                                        <td>
                                        </td>


                                    </tr>

                                    </tbody>
                                </table>
                            </div>
                            </div>
                            <br>
                            <br>

                            <div style="text-align: center">
                                <h2>= 타과학생 =</h2>

                                <br>


                                <br />

                                <div class="복수전공">
                                    <h3>복수전공</h3>

                                    <table class="복수전공">
                                        <thead>
                                        <tr>
                                            <th width="10%">대상</th>
                                            <th width="50%">졸업조건</th>
                                            <th>기타 졸업조건</th>


                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>타과학생</td>
                                            <td>
                                                전필포함 60학점 이상(프로젝트 포함)<br>
                                                - 학과지정교양은 제외
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
                                            <th width="10%">대상</th>
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

                            </div>


                            <br />
                            <h2>▶공통</h2>
                            <p class="category">공통으로 들어야 하는 학년별 전공필수</p>

                            <p>
                                &nbsp;</p>
                            <table>
                                <tbody>
                                <tr>
                                    <td rowspan="2" style="height: 31px; width: 37px">
                                        <p>
                                            학년</p>
                                    </td>
                                    <td rowspan="2" style="height: 31px; width: 37px">
                                        <p>
                                            학기</p>
                                    </td>
                                    <td colspan="5" style="height: 16px; width: 894px">
                                        <p>
                                            개설과목 (학점)</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 16px; width: 174px">
                                        <p>
                                            2006~2008학번</p>
                                    </td>
                                    <td style="height: 16px; width: 189px">
                                        <p>
                                            2009학번~2012학번</p>
                                    </td>
                                    <td style="height: 16px; width: 200px">
                                        <p>
                                            2013학번~</p>
                                    </td>
                                    <td style="height: 16px; width: 158px">
                                        <p>
                                            2015학번부터~</p>
                                    </td>
                                    <td style="height: 16px; width: 174px">
                                        <p>
                                            2017학번부터~</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="2" style="height: 89px; width: 37px">
                                        <p>
                                            1학년</p>
                                    </td>
                                    <td style="height: 45px; width: 37px">
                                        <p>
                                            1학기</p>
                                    </td>
                                    <td style="height: 45px; width: 174px">
                                        <p>
                                            C프로그래밍I(3), 과정지도1(2)</p>
                                    </td>
                                    <td style="height: 45px; width: 189px">
                                        <p>
                                            C프로그래밍I(3), 과정지도1(1)</p>
                                    </td>
                                    <td style="height: 45px; width: 200px">
                                        <p>
                                            C프로그래밍I(3), C프로그래밍실습I(1), 공업수학I(3), 과정지도1(1)</p>
                                    </td>
                                    <td style="height: 45px; width: 158px">
                                        <p>
                                            C프로그래밍I(3), C프로그래밍실습I(1),</p>
                                        <p>
                                            과정지도1(1)(2015학번까지)</p>
                                    </td>
                                    <td style="height: 45px; width: 174px">
                                        <p>
                                            C프로그래밍(4)</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 45px; width: 37px">
                                        <p>
                                            2학기</p>
                                    </td>
                                    <td style="height: 45px; width: 174px">
                                        <p>
                                            C프로그래밍II(3), 논리회로설계(3), 과정지도2(1)</p>
                                    </td>
                                    <td style="height: 45px; width: 189px">
                                        <p>
                                            C프로그래밍II(3), 과정지도2(1)</p>
                                    </td>
                                    <td style="height: 45px; width: 200px">
                                        <p>
                                            C프로그래밍II(3), C프로그래밍실습II(1), 공업수학II(3), 과정지도2(1)</p>
                                    </td>
                                    <td style="height: 45px; width: 158px">
                                        <p>
                                            C프로그래밍II(3)</p>
                                        <p>
                                            프로그래밍실습II(1)</p>
                                        <p>
                                            과정지도2(1)(2015학번까지)</p>
                                    </td>
                                    <td style="height: 45px; width: 174px">
                                        <p>
                                            자료구조(3),</p>
                                        <p>
                                            논리회로설계(3)</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="2" style="height: 118px; width: 37px">
                                        <p>
                                            2학년</p>
                                    </td>
                                    <td style="height: 59px; width: 37px">
                                        <p>
                                            1학기</p>
                                    </td>
                                    <td style="height: 59px; width: 174px">
                                        <p>
                                            자료구조(3), 객체지향시스템(3), 데이터통신(3), 과정지도3(1), 컴퓨터구조(3),</p>
                                    </td>
                                    <td style="height: 59px; width: 189px">
                                        <p>
                                            자료구조(3), 객체지향시스템(3), 데이터통신(3), 논리회로설계(3), 과정지도3(1)</p>
                                    </td>
                                    <td style="height: 59px; width: 200px">
                                        <p>
                                            자료구조(3),</p>
                                        <p>
                                            C++프로그래밍(3), 논리회로설계(3), 데이터통신(3), 과정지도3(1)</p>
                                    </td>
                                    <td style="height: 59px; width: 158px">
                                        <p>
                                            2013학번~과 동일함.</p>
                                    </td>
                                    <td style="height: 59px; width: 174px">
                                        <p>
                                            C++프로그래밍(3), 데이터통신(3), 컴퓨터구조(3), 과정지도3(1)</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 59px; width: 37px">
                                        <p>
                                            2학기</p>
                                    </td>
                                    <td style="height: 59px; width: 174px">
                                        <p>
                                            운영체제(3), 신호및시스템(3), 윈도우즈프로그래밍I(3), 과정지도4(1)</p>
                                    </td>
                                    <td style="height: 59px; width: 189px">
                                        <p>
                                            컴퓨터구조(3), 컴퓨터네트워크(3),</p>
                                        <p>
                                            신호및시스템(3), 윈도우즈프로그래밍(3), 과정지도4(1)</p>
                                    </td>
                                    <td style="height: 59px; width: 200px">
                                        <p>
                                            윈도우즈프로그래밍(3), 신호및시스템(3), 컴퓨터구조(3), 컴퓨터네트워크(3),</p>
                                        <p>
                                            과정지도4(1)</p>
                                    </td>
                                    <td style="height: 59px; width: 158px">
                                        <p>
                                            2013학번~과 동일함.</p>
                                    </td>
                                    <td style="height: 59px; width: 174px">
                                        <p>
                                            윈도우즈프로그래밍(3), 컴퓨터네트워크(3), 신호및시스템(3), 과정지도4(1)</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="2" style="height: 47px; width: 37px">
                                        <p>
                                            3학년</p>
                                    </td>
                                    <td style="height: 30px; width: 37px">
                                        <p>
                                            1학기</p>
                                    </td>
                                    <td style="height: 30px; width: 174px">
                                        <p>
                                            컴퓨터그래픽스(3), 과정지도5(1)</p>
                                    </td>
                                    <td style="height: 30px; width: 189px">
                                        <p>
                                            컴퓨터그래픽스(3), 과정지도5(1)</p>
                                    </td>
                                    <td style="height: 30px; width: 200px">
                                        <p>
                                            컴퓨터그래픽스(3), 과정지도5(1)</p>
                                    </td>
                                    <td style="height: 30px; width: 158px">
                                        <p>
                                            2013학번~과 동일함.</p>
                                    </td>
                                    <td style="height: 30px; width: 174px">
                                        <p>
                                            컴퓨터그래픽스(3), 과정지도5(1)</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 17px; width: 37px">
                                        <p>
                                            2학기</p>
                                    </td>
                                    <td style="height: 17px; width: 174px">
                                        <p>
                                            과정지도6(1)</p>
                                    </td>
                                    <td style="height: 17px; width: 189px">
                                        <p>
                                            운영체제(3), 과정지도6(1)</p>
                                    </td>
                                    <td style="height: 17px; width: 200px">
                                        <p>
                                            운영체제(3), 과정지도6(1)</p>
                                    </td>
                                    <td style="height: 17px; width: 158px">
                                        <p>
                                            2013학번~과 동일함.</p>
                                    </td>
                                    <td style="height: 17px; width: 174px">
                                        <p>
                                            운영체제(3), 과정지도6(1)</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="2" style="height: 89px; width: 37px">
                                        <p>
                                            4학년</p>
                                    </td>
                                    <td style="height: 45px; width: 37px">
                                        <p>
                                            1학기</p>
                                    </td>
                                    <td style="height: 45px; width: 174px">
                                        <p>
                                            게임프로그래밍프로젝트(6),</p>
                                        <p>
                                            네트워크시스템프로젝트(6),</p>
                                        <p>
                                            과정지도7(1)</p>
                                    </td>
                                    <td style="height: 45px; width: 189px">
                                        <p>
                                            게임프로그래밍프로젝트(6),</p>
                                        <p>
                                            네트워크시스템프로젝트(6),</p>
                                        <p>
                                            과정지도7(1)</p>
                                    </td>
                                    <td style="height: 45px; width: 200px">
                                        <p>
                                            게임프로그래밍프로젝트(6),</p>
                                        <p>
                                            네트워크시스템프로젝트(6),</p>
                                        <p>
                                            졸업지도1(1)</p>
                                    </td>
                                    <td style="height: 45px; width: 158px">
                                        <p>
                                            2013학번~과 동일함.</p>
                                    </td>
                                    <td style="height: 45px; width: 174px">
                                        <p>
                                            졸업지도1(1)</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 45px; width: 37px">
                                        <p>
                                            2학기</p>
                                    </td>
                                    <td style="height: 45px; width: 174px">
                                        <p>
                                            멀티미디어처리프로젝트(6),</p>
                                        <p>
                                            그래픽스프로젝트(6),</p>
                                        <p>
                                            과정지도8(1)</p>
                                    </td>
                                    <td style="height: 45px; width: 189px">
                                        <p>
                                            멀티미디어처리프로젝트(6),</p>
                                        <p>
                                            그래픽스프로젝트(6),과정지도8(1)</p>
                                    </td>
                                    <td style="height: 45px; width: 200px">
                                        <p>
                                            컴퓨터그래픽스프로젝트(6),</p>
                                        <p>
                                            멀티미디어처리프로젝트(6),</p>
                                        <p>
                                            졸업지도2(1)</p>
                                    </td>
                                    <td style="height: 45px; width: 158px">
                                        <p>
                                            2013학번~과 동일함.</p>
                                    </td>
                                    <td style="height: 45px; width: 174px">
                                        <p>
                                            졸업지도2(1)</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="height: 16px; width: 74px">
                                        <p>
                                            학점 계</p>
                                    </td>
                                    <td style="height: 16px; width: 174px">
                                        <p>
                                            54</p>
                                    </td>
                                    <td style="height: 16px; width: 189px">
                                        <p>
                                            56</p>
                                    </td>
                                    <td style="height: 16px; width: 200px">
                                        <p>
                                            64</p>
                                    </td>
                                    <td style="height: 16px; width: 158px">
                                        <p>
                                            56(2015학번까지 58)</p>
                                    </td>
                                    <td style="height: 16px; width: 174px">
                                        <p>
                                            40</p>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                            <p>
                                * 과정지도7, 과정지도8 -&gt; 졸업지도1, 졸업지도2 과목명 변경 (2014-1부터)</p>
                            <p>
                                * 3D그래픽스입문 전필 -&gt; 전선으로 변경 (2014년 이전에 수강한 학생도 전선으로 인정)</p>
                            <p>
                                * <u>2017</u><u>학년도부터 프로젝트 과목은 전공 선택으로 </u><u>1</u><u>학기에 개설되며 </u><u>1</u><u>과목을 필히 이수하여야 함</u><u>.</u></p>
                            <p>
                                <u>(</u><u>&lsquo;2017</u><u>학년 이전에 입학한 학생의 경우</u><u>, </u><u>프로젝트 과목을</u><u>1</u><u>과목 이수하면 해당 졸업요건을 충족하는 것으로 인정함</u><u>&rsquo;)</u></p>
                            <p>
                                * 2015학번부터는 전공 80학점 이상, 학과지정교양 12학점을 필히 이수하여야 함.</p>
                            <p>
                                * 2012학번 이전 재학생의 졸업요건은 전공 60학점 이상, 학과지정교양 21학점에서 전공 80학점 이상으로 변경함.</p>
                            <p>
                                이미 수강한 학과지정교양 (이산수학, 대학수학, 대학물리와 실험I/II, 미적분학, 선형대수, 확률과통계)은 전공으로 인정할 수 있음.</p>
                            <p>
                                &nbsp;</p>
                            <p>

                            <div class="center">

                            <p>
                                [ 학과지정 교양 학점 ]</p>
                            <p>
                                &nbsp;</p>
                            <table>
                                <tbody>
                                <tr>
                                    <td style="height: 17px; width: 133px">
                                        <p>
                                            적용시점</p>
                                    </td>
                                    <td style="height: 17px; width: 82px">
                                        <p>
                                            학년</p>
                                    </td>
                                    <td style="height: 17px; width: 86px">
                                        <p>
                                            학기</p>
                                    </td>
                                    <td style="height: 17px; width: 504px">
                                        <p>
                                            개설과목 (학점)</p>
                                    </td>
                                    <td style="height: 17px; width: 81px">
                                        <p>
                                            학기 학점</p>
                                    </td>
                                    <td style="height: 17px; width: 81px">
                                        <p>
                                            학점 계</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 17px; width: 133px">
                                        <p>
                                            2013학번-2014학번</p>
                                    </td>
                                    <td style="height: 17px; width: 82px">
                                        <p>
                                            1학년</p>
                                    </td>
                                    <td style="height: 17px; width: 86px">
                                        <p>
                                            1학기</p>
                                    </td>
                                    <td style="height: 17px; width: 504px">
                                        <p>
                                            정보사회론(3), 기초영어I(3)</p>
                                    </td>
                                    <td style="height: 17px; width: 81px">
                                        <p>
                                            6</p>
                                    </td>
                                    <td style="height: 17px; width: 81px">
                                        <p>
                                            6</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td rowspan="2" style="height: 38px; width: 133px">
                                        <p>
                                            2015학번부터</p>
                                    </td>
                                    <td rowspan="2" style="height: 38px; width: 82px">
                                        <p>
                                            1학년</p>
                                    </td>
                                    <td style="height: 21px; width: 86px">
                                        <p>
                                            1학기</p>
                                    </td>
                                    <td style="height: 21px; width: 504px">
                                        <p>
                                            정보사회론(3), 공업수학I(3), 기초영어I(3)(<u>2017</u><u>학번부터 교양영어 </u><u>3</u><u>학점 이상 이수</u>)</p>
                                    </td>
                                    <td style="height: 21px; width: 81px">
                                        <p>
                                            9</p>
                                    </td>
                                    <td rowspan="2" style="height: 38px; width: 81px">
                                        <p>
                                            12</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 17px; width: 86px">
                                        <p>
                                            2학기</p>
                                    </td>
                                    <td style="height: 17px; width: 504px">
                                        <p>
                                            공업수학II(3)</p>
                                    </td>
                                    <td style="height: 17px; width: 81px">
                                        <p>
                                            3</p>
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
