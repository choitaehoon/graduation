<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/"/>
<!doctype html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet" media="screen">

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="${R}res/common.css">
    <script src="${R}res/common.js"></script>

    <link href="http://nethna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
          rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

    <style>
        #content {
            margin-left: 25%;
            height: 800px;
        }
    </style>
</head>
<body>
<div>

    <h3>코멘트 ${ student.comment == null ? "등록" : "수정" }</h3>
    <div class="contents">
        <form:form action="editComment" method="post" modelAttribute="student" style="width:80%; margin-left:350;">
            <div class="form-group">
                <input type="hidden" id="id" name="id" value="${student.id}" />
                <form:input path="comment" class="form-control w1500"/>
                <hr/>
            </div>
            <div>
                <button type="submit" class="btn btn-primary">저장</button>
                <a href="javascript_:void(0);" class="btn btn-default" onclick=' window.close();'> 취소</a>
            </div>
        </form:form>


    </div>
</body>
</html>