<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <nav id="menu" class="menu">
        <ul class="dropdown">
            <li ><a href="/login/main?id=${students.id}">첫화면</a>
            </li>
            <li ><a href="#Link">졸업요건</a>
                <ul >
                    <li><a href="#Link">소프트웨어공학과</a>
                        <ul>
                            <li><a href="/login/before18?id=${ students.id }">18학번 이전</a> </li>
                            <li><a href="/login/after18?id=${ students.id }">18학번 이후</a> </li>
                        </ul>
                    </li>

                    <li ><a href="#Link">컴퓨터공학과</a></li>
                    <li ><a href="#Link">정보통신학과</a></li>
                    <li ><a href="#Link">디지털컨텐츠학과</a></li>
                </ul>
            </li>
            <li ><a href="#Link">공지사항</a>
                <ul >
                    <li ><a href="#Link">일반공지</a></li>
                    <li ><a href="#Link">과목변경사항</a></li>
                </ul>
            </li>
            <li ><a href="#Link">Q&A</a>
            </li>
            <li ><a href="#Link">Services</a>
                <ul >
                    <li ><a href="#Link">Link </a></li>
                    <li ><a href="#Link">Link</a></li>
                    <li ><a href="#Link">Link</a></li>
                </ul>
            </li>
            <li ><a href="#Link" title="Link">Contact</a></li>
        </ul>
        <a href="/login.jsp" class="btn" id="search">로그아웃</a>
  </nav>
