<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/defer/header.jsp" %>
<%@include file="/defer/tap.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet" media="screen">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/res/myInfo.css">
</head>
<body>

 <div class="container">
     <div class="block">
         <h3>학생 관리</h3>
         <table class="table table-striped">
             <thead>
             <tr>
                 <th>학번</th>
                 <th>이름</th>
                 <th>이메일</th>
             </tr>
             </thead>
             <tbody>
             <c:forEach var="student" items="${ student }">
                 <tr>
                     <td>${ student.id }</td>
                     <td>${ student.name }</td>
                     <td>${ student.email }</td>
                 </tr>
             </c:forEach>

             </tbody>
         </table>
     </div>
 </div>

</body>
</html>


