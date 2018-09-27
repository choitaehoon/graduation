<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/defer/header.jsp"%>
<%@include file="/defer/tap.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet" media="screen">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${R}res/common.js"></script>
    <link rel="stylesheet" href="${R}res/common.css">

    <style type="text/css" media="screen">
        #content{
            margin-left: 30%;
            height: 800px;
        }

    </style>
</head>
<body>

<div id="content" >
    <br/>
    <h1>졸업요건 등록</h1>
    <br/>
    <label>구분</label>
    <div class="form-group">
        <select class="form-control" style="width:15%">
            <option>소프트웨어공학과</option>
            <option>타과학생</option>
        </select>

    </div>
    <label>전공이름</label>
    <div class="form-group">
        <input type="text" style="width: 200px";/>
    </div>
    <label>졸업조건</label>
    <div class="form-group">
        <textArea cols=80 rows=10 ></textArea>
    </div>
    <label>기타 졸업조건:</label>
    <div class="form-group">
        <textArea cols=80 rows=10 ></textArea>
    </div>

    <div id="buttons">
        <a class="btn btn-primary">
            <i class="glyphicon glyphicon-ok"></i> 저장</a>
        <a class="btn btn-default" >
            <i class="glyphicon glyphicon-list"></i> 목록으로</a>

    </div>

</div>

</body>
</html>
