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
            <form action="login/main" method="post" enctype="multipart/form-data">
                <input type="text" name="id" id="id" class="inpt" required="required" placeholder="학번">
                <%--<label for="email">Your email</label>--%>
                <input type="password" name="password" id="password" class="inpt" required="required" placeholder="비밀번호">
                <label for="password">Your password</label>

                    <%--<input type="checkbox" id="remember" class="checkbox" checked>--%>
                    <%--<label for="remember">Remember me</label>--%>
            </form>
        </div>
    </div>
</article>
</section>


</body>
</html>
