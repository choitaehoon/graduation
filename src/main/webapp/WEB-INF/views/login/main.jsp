<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%@include file="header.jsp"%>
</head>
<body>
<div class="nav_wrapper">
    <!--<a class="menu-link" href="#menu"></a>-->

    <div class="spinner-master">
        <input type="checkbox" id="spinner-form" />
        <label for="spinner-form" class="spinner-spin">
            <div class="spinner diagonal part-1"></div>
            <div class="spinner horizontal"></div>
            <div class="spinner diagonal part-2"></div>
        </label>
    </div>
    <a href="#search_box" class="btn" id="search">☌</a>
    <nav id="menu" class="menu">
        <ul class="dropdown">
            <li ><a href="#Link" title="Link">Home</a>
                <ul >
                    <li ><a href="#Link" title="Link">Link » </a>
                        <ul >
                            <li ><a href="#Link" title="Link">Link</a></li>
                            <li ><a href="#Link" title="Link">Link</a></li>
                        </ul>
                    </li>
                    <li ><a href="#Link" title="Link">About</a></li>
                    <li ><a href="#Link" title="Link">Link » </a>
                        <ul >
                            <li ><a href="#Link" title="Link">Link</a></li>
                            <li ><a href="#link" title="Link">Link</a></li>
                            <li ><a href="#Link" title="Link">Link </a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li ><a href="#Link" title="Link">졸업요건</a>
                <ul >
                    <li ><a href="#Link" title="Link ">소프트웨어공학과</a></li>
                    <li ><a href="#Link" title="Link">컴퓨터공학과</a></li>
                    <li ><a href="#Link" title="Link">정보통신학과</a></li>
                    <li ><a href="#Link" title="Link">디지털컨텐츠학과</a></li>
                </ul>
            </li>
            <li ><a href="#Link" title="Link">공지사항</a>
                <ul >
                    <li ><a href="#Link" title="Link">일반공지</a></li>
                    <li ><a href="#Link" title="Link">과목변경사항</a></li>

                </ul>
            </li>
            <li ><a href="#Link" title="Link">Q&A</a>
            </li>
            <li ><a href="#Link" title="Link">Services</a>
                <ul >
                    <li ><a href="#Link" title="Link">Link </a></li>
                    <li ><a href="#Link" title="Link">Link</a></li>
                    <li ><a href="#Link" title="Link">Link</a></li>
                </ul>
            </li>
            <li ><a href="#Link" title="Link">Contact</a></li>
        </ul>
    </nav>
    <form class="search_box" id="search_box" action="/search/">
        <input name="search_criteria" placeholder="Search here" value="" type="text">
        <input class="search_icon" value="Search" type="submit">
    </form>
</div>

<div class="login">
<h5>${ students.id }</h5>
</div>

<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
<script src="/SRC2/remenu1/script.js"></script>


</body>
</html>
