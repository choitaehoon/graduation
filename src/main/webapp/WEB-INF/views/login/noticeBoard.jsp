<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<%@include file="tap.jsp"%>
<head>
    <link rel="stylesheet"
          href="https://bootswatch.com/4/litera/bootstrap.min.css">
    <link rel="stylesheet" type="text/css"
          href="https://cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
    <link
            href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
            rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="board.css">


</head>
<body>


<h5>${ students.name }</h5>
</div>
<h1> 공지사항</h1>
<div id="jb-content">
    <hr>

    <table class="table table-hover">
        <thead>
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일</th>
            <th>조회수</th>
        </tr>
        </thead>
        <tbody>
        <tr class="notice">
            <td id="word-color"> 1<i class="fa fa-bullhorn fa"></i> </td>
            <td id="word-color">공지사항</td>
            <td id="word-color">관리자</td>
            <td id="word-color" >18.09.06</td>
            <td id="word-color">100</td>

        </tr>
        <tr>
            <td>2</td>
            <td>공지사항2</td>
            <td>관리자</td>
            <td>18.09.06</td>
            <td>100</td>
        </tr>
        <tr>
            <td>3</td>
            <td>공지사항3</td>
            <td>관리자</td>
            <td>18.09.06</td>
            <td>100</td>
        </tr>

        <tr>
            <td>4</td>
            <td>공지사항4</td>
            <td>관리자</td>
            <td>18.09.06</td>
            <td>100</td>
        </tr>
        <tr>
            <td>5</td>
            <td>공지사항5</td>
            <td>관리자</td>
            <td>18.09.06</td>
            <td>100</td>
        </tr>

        </tbody>
    </table>

    <div class="col-sm-12 ">


        <ul class="pagination center">
            <li><a href="#">«</a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">»</a></li>
        </ul>

    </div>

</div>

</body>
</html>
