    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <c:url var="R" value="/" />
        <head>
        <meta charset="utf-8" />
        <link rel="icon" type="image/png" href="${R}assets/img/favicon.ico">
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
        <link href="${R}http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>
        <link href="${R}http://fonts.googleapis.com/css?family=Roboto:400,700,300" rel="stylesheet" type="text/css"/>
        <link href="${R}assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

        </head>

        <div class="sidebar" data-color="azure" data-image="${R}assets/img/logo.jpg">
        <div class="sidebar-wrapper">



        <div class="logo">
        <a href="graduation?type=${member.type}&id=${member.id}" class="simple-text">
        SKHU 졸업관리
        </a>
        </div>

        <ul class="nav">
        <li class="active">
        <a href="graduation?type=${member.type}&id=${member.id}">
        <i class="pe-7s-graph"></i>
        <p>메인 페이지</p>
        </a>
        </li>

        <c:if test="${member.id >0}">
            <li>

            <a href="/main/myInfo?type=${member.type}&id=${member.id}">
            <i class="pe-7s-user"></i>
            <p>나의 정보</p>
            </a>
            </li>
        </c:if>

        <c:if test="${member.type == 2}">
            <li>
            <a href="/main/studentManager?type=${member.type}&id=${member.id}">
            <i class="pe-7s-add-user"></i>
            <p>학생관리</p> </a>
            </li>
        </c:if>

        <c:if test="${member.type == 2}">
            <li>
            <a href="/main/manageClass?type=${member.type}&id=${member.id}">
            <i class="pe-7s-users"></i>
            <p>수업관리</p> </a>
            </li>
        </c:if>

        <li>
        <a href="/login/graduationInfo?type=${member.type}&id=${member.id}"> <i class="pe-7s-bell"></i>
        <p>졸업관리</p></a>

        <ul>
        <li><a href="#Link">소프트웨어공학과</a>

        <ul >
        <li><a href="/main/before18?type=${member.type}&id=${member.id}">18학번 이전</a></li>
        <li><a href="/main/after18?type=${member.type}&id=${member.id}">18학번 이후</a></li>
        <li><a href="#">전공인정규칙</a></li>
        </ul>

        </li>


        <li><a href="#Link">컴퓨터공학과</a></li>
        <li><a href="#Link">정보통신학과</a></li>
        <li><a href="#Link">디지털컨텐츠학과</a></li>
        </ul>

        </li>

        <li>
        <a href="/main/replaceLecture?type=${member.type}&id=${member.id}">
        <i class="pe-7s-note2"></i>
        <p>대체 과목 관리</p>
        </a>
        </li>

        <li>
        <a href="/login/noticeManager?type=${member.type}&id=${member.id}">
        <i class="pe-7s-note2"></i>
        <p>공지사항</p>
        </a>
        <ul >
        <li><a href="/login/notice?type=${type}&id=${member.id}">일반 공지</li>
        <li><a href="/login/noticeReplace?type=${type}&id=${member.id}">대체과목 공지</a></li>

        </ul>
        </li>
        <c:if test="${member.id >0}">
            <li>
            <a href="/login/q&a?type=${member.type}&id=${member.id}">
            <i class="pe-7s-smile"></i>
            <p>Q&A</p>
            </a>
            </li>
        </c:if>
        <li>
        <a href="/login/help?type=${member.type}&id=${member.id}">
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
        <a class="navbar-brand" href="#">
        <c:if test="${type==0}">
            <p>${member.name} 게스트님</p>
            <input type="hidden" name="id" value="0">
            <input type="hidden" name="type" value="0">
        </c:if>
        <c:if test="${member.type== 1}">
            <p>${member.name} 학생님</p>
        </c:if>
        <c:if test="${member.type== 2}">
            <p>${member.name} 관리자님</p>
        </c:if>



        </a>
        </div>
        <div class="collapse navbar-collapse">
        <ul class="nav navbar-nav navbar-left">



        </ul>

        <ul class="nav navbar-nav navbar-right">


        <c:if test="${type==0}">
            <li >

            <a href="../login.jsp">
            <p>로그인</p>
            </a>
            </li>
        </c:if>
        <c:if test="${member.id >0}">
            <li>
            <a href="../login.jsp">
            <p>Log out</p>
            </a>
            </li>
        </c:if>



        <li class="separator hidden-lg"></li>
        </ul>
        </div>
        </div>
        </nav>