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
<<<<<<< HEAD
         <table class="table table-striped">
=======
         <table class="table table-striped" style="width:150%; max-width:150%; margin-bottom:20px;">
>>>>>>> cbb51c552d2cbac933173f0b35ab5b7698cd1d32
             <thead>
             <tr>
                 <th>학번</th>
                 <th>이름</th>
                 <th>이메일</th>
<<<<<<< HEAD
             </tr>
             </thead>
=======
                 <th>학과</th>
                 <th>권한</th>
             </tr>
             </thead>

>>>>>>> cbb51c552d2cbac933173f0b35ab5b7698cd1d32
             <tbody>
             <c:forEach var="student" items="${ student }">
                 <tr>
                     <td>${ student.id }</td>
                     <td>${ student.name }</td>
                     <td>${ student.email }</td>
<<<<<<< HEAD
                 </tr>
             </c:forEach>

=======
                     <td>소프트웨어공학과</td>
                     <td><button class="btn btn-primary">수정</button><button class="btn btn-danger">삭제</button></td>
                 </tr>
             </c:forEach>
>>>>>>> cbb51c552d2cbac933173f0b35ab5b7698cd1d32
             </tbody>
         </table>
     </div>
 </div>

</body>
</html>


