<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet" media="screen">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/res/common.css">
</head>
<body>

<section class="container">
<article class="full">
    <h1>회원가입</h1>

    <div class="content">
        <div class="signin-cont cont">
            <form action="../member" method="post" enctype="multipart/form-data">
                <input type="text" name="id" id="id" class="inpt" required="required" placeholder="학번">
                <input type="text" name="name" id="name" class="inpt" required="required" placeholder="이름">
                <%--<label for="email">Your email</label>--%>
                <input type="password" name="password" id="password" class="inpt" required="required" placeholder="비밀번호">
                <input type="password" name="password1" id="password1" class="inpt" required="required" placeholder="비밀번호 확인">
                <input type="text" name="email" id="email" class="inpt" required="required" placeholder="이메일">

                <input type="hidden" name="type" value="1">
                <button type="submit" class="btn btn-default">가입하기</button>
                <a href="../login.jsp" class="btn btn-default">목록으로 가기</a>
            </form>
        </div>
    </div>
</article>
</section>


</body>
</html>
