<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/defer/header.jsp" %>
<%@include file="/defer/tap.jsp" %>
<html>
<head>

</head>
<body>
<div class="contain">
<h1>내 정보</h1>
<hr/>
    <div class="form-group">
    <label>학번:</label>
        <input value="${member.id}" class="form-control w200"/>
    </div>

    <div class="form-group">
    <label>이름:</label>
    <input value="${member.name}" class="form-control w200"/>
    </div>

    <label>이메일:</label>
    <input value="${member.email}" class="form-control w200"/>
    </div>

    <div class="form-group">
    <label>타입:</label>
    <input value="${member.type == 1 ? "학생" : "교수"}" class="form-control w200"/>
    </div>
    <hr />

    </body>
    </html>
