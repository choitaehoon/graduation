<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <nav id="menu" class="menu">
        <ul class = "dropdown">
            <li ><a href="/login/main?id=${member.id}">첫화면</a>
            </li>
            <li ><a href="#Link">졸업요건</a>
                <ul >
                    <li><a href="#Link">소프트웨어공학과</a>
                        <ul>
                            <li><a href="/login/before18?type=${member.type}&id=${member.id}">18학번 이전</a> </li>
                            <li><a href="/login/after18?type=${member.type}&id=${member.id}">18학번 이후</a> </li>
                        </ul>
                    </li>

                    <li ><a href="#Link">컴퓨터공학과</a></li>
                    <li ><a href="#Link">정보통신학과</a></li>
                    <li ><a href="#Link">디지털컨텐츠학과</a></li>
                </ul>
            </li>
            <li ><a href="#Link">공지사항</a>
                <ul >
                    <li ><a href="/login/noticeBoard?id=${students.id}">일반공지</a></li>
                    <li ><a href="#Link">과목변경사항</a></li>
                </ul>
            </li>
            <li ><a href="/login/question?id=${students.id}">Q&A</a>
            </li>

            <c:if test="${member.type == 0}">
            <li ><a href="administration?type=${member.type}&id=${member.id}">학생관리</a>
            </li>
            </c:if>

        </ul>

        <a href="/login.jsp" class="btn" id="search">로그아웃</a>
        <a href="/login/myInfo?type=${member.type}&id=${member.id}" class="btn" id="search01">마이페이지</a>
        <h5 style="color: white" id="search02">${member.name}님 환영합니다</h5>

  </nav>
