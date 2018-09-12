<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<head>
<%@include file="header.jsp"%>
</head>

<body>
<div class="spinner-master">
<%@include file="tap.jsp"%>>
    <form class="search_box" id="search_box" action="/search/">
        <input name="search_criteria" placeholder="Search here" value="" type="text">
        <input class="search_icon" value="Search" type="submit">
    </form>
</div>



<div class="login">
<h5>${ students.id }</h5>
</div>


</body>
</html>
