<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet" media="screen">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/res/common.css">
    <script>
        function checkPwd() {
            var f1 = document.forms[0];
            var pw1 = f1.password.value;
            var pw2 = f1.password2.value;
            if (pw1 != pw2) {
                document.getElementById('password2').style.color = "red";
                document.getElementById('password2').innerHTML = "동일한 암호를 입력하세요.";
            } else {
                document.getElementById('password2').style.color = "black";
                document.getElementById('password2').innerHTML = "암호가 확인 되었습니다.";

            }

        }

    </script>
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
                <input type="text" name="department" id="department" class="inpt" required="required" placeholder="학과">
                <input type="password" name="password" id="password" class="inpt" required="required" placeholder="비밀번호">
                <input type="password" name="password2" id="checkPwd" class="inpt" required="required" placeholder="비밀번호 확인">
                <input type="text" name="email" id="email" class="inpt" required="required" placeholder="이메일">
                <%--OTP가 구현하면 적을 것--%>
<%--                <input type="text" name="otp" id="otp" class="inpt" required="required" placeholder="OTP 입력">--%>
                <input type="hidden" name="type" value="1">
                 <button type="submit" class="btn btn-default"> <a href="../login.jsp">가입하기</a></button>
                <a href="../login.jsp" class="btn btn-primary">홈</a>
            </form>
        </div>
    </div>
</article>
</section>


</body>
</html>
