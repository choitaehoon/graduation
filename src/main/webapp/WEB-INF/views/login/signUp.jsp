<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:url var="R" value="/" />
<%@include file="header.jsp"%>
<html>
<head>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>register</title>
</head>

<body>
<div class="sign">
    <h1>회원가입</h1>

    <form:form method="post" modelAttribute="Student">


        <div class="form-group">

            <label>학번</label>
            <form:input type="text" path="id"  class="form-control" name="id"/>
        </div>

        <div class="form-group">
            <label>이름</label>
            <form:input type="text" path="name" class="form-control" />
        </div>

        <div class="form-group">
            <label>비밀번호</label>
            <form:input type="password" path="password" class="form-control" />
        </div>

        <div class="form-group">
            <label>학년</label>
            <input type="number" class="form-control" />

        </div>

        <div class="form-group">
            <label>이메일</label>
            <input type="email" class="form-control" />

        </div>

        <div class="form-group">
            <label>학과</label>
            <select class="form-control"></select>

        </div>

        <button type="submit" class="btn btn-primary">
            <i class="glyphicon glyphicon-ok"></i> 회원가입
        </button>

        <a href="../login.jsp" class="btn btn-default">
            <i class="glyphicon glyphicon-home"></i> 홈
        </a>

    </form:form>


</div>
</body>
</html>