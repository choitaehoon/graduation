<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="R" value="/" />
<head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="${R}assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="${R}assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="${R}assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="${R}assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="${R}assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

</head>


<div class="sidebar" data-color="azure" data-image="${R}assets/img/logo.jpg">
    <div class="sidebar-wrapper">
        <div class="logo">
            <a href="http://www.creative-tim.com" class="simple-text">
                    SKHU 졸업관리
            </a>
        </div>

           <ul class="nav">
               <li class="active">
                    <a href="/login/main?id=${member.id}">
                        <i class="pe-7s-graph"></i>
                        <p>메인 페이지</p>
                    </a>
                </li>
                <li>
                    <a href="/login/myInfo?type=${member.type}&id=${member.id}">
                        <i class="pe-7s-user"></i>
                        <p>나의 정보</p>
                    </a>
                </li>
                <li>
                    <a href="graduationinfo.html"> <i class="pe-7s-bell"></i>
                        <p>졸업관리</p></a>

                    <ul class="dropdown-menu">
                        <li><a href="#Link">소프트웨어공학과</a>

                            <ul>
                                <li><a href="before18.html">18학번 이전</a></li>
                                <li><a href="after18.html">18학번 이후</a></li>
                                <li><a href="before18.html">전공인정규칙</a></li>
                            </ul>

                        </li>

                        <li><a href="#Link">컴퓨터공학과</a></li>
                        <li><a href="#Link">정보통신학과</a></li>
                        <li><a href="#Link">디지털컨텐츠학과</a></li>

                    </ul>

                </li>
                <li>
                    <a href="studentManager.html">
                        <i class="pe-7s-notebook"></i>
                        <p>학생관리</p>
                    </a>
                </li>

                <li>
                    <a href="noticeManager.html">
                        <i class="pe-7s-note2"></i>
                        <p>공지사항</p>
                    </a>

                </li>
                <li>
                    <a href="message.html">
                        <i class="pe-7s-news-paper"></i>
                        <p>도움말</p>
                    </a>
                </li>
            </ul>
    </div>
</div>

<div class="main-panel">
    <nav class="navbar navbar-default navbar-fixed">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">${member.name}</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-left">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope"></i>
                            <b class="caret hidden-lg hidden-md"></b>
                            <p class="hidden-lg hidden-md">
                                4 Notifications
                                <b class="caret"></b>
                            </p>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="sendMessage.html">쪽지 보내기</a></li>
                            <li><a href="message.html">받은 쪽지함</a></li>
                            <li><a href="message2.html">보낸 쪽지함</a></li>
                            <li><a href="messageSet.html">수신 설정</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="">
                            <i class="fa fa-cog"></i>
                            <p class="hidden-lg hidden-md">Setting</p>
                        </a>
                    </li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <p>
                                Dropdown
                                <b class="caret"></b>
                            </p>

                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="../login.jsp">
                            <p>Log out</p>
                        </a>
                    </li>
                    <li class="separator hidden-lg"></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- 위의 메뉴바 이후 구현 -->




