<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="R" value="/" />
<!doctype html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet" media="screen">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${R}res/common.css">
    <script src="${R}res/common.js"></script>
</head>
<body>

<section class="container">
<article class="half">
    <h1>SHKU졸업요건</h1>
    <div class="tabs">
        <span class="tab signin active"><a href="#">Sign in</a></span>
        <%--<span class="tab signup"><a href="#signup">Sign up</a></span>--%>
    </div>
    <div class="content">
        <div class="signin-cont cont">
            <form action="login/main" method="post" enctype="multipart/form-data">
                <input type="text" name="id" id="id" class="inpt" required="required" placeholder="학번">
                <input type="password" name="password" id="password" class="inpt" required="required" placeholder="비밀번호">

                <a href="login/signUp" id="remember" class="btn btn-default">
                    <label for="remember">회원가입</label>

                    <%--<input type="checkbox" id="remember" class="checkbox" checked>--%>
                    <%--<label for="remember">Remember me</label>--%>
                    <div class="submit-wrap">
                        <input type="submit" value="Sign in" class="submit">
                        <a href="#" class="more">Forgot your password?</a>
                    </div>
            </form>
        </div>
    </div>
</article>
<div class="half bg" style="background-position: -60px 20px"></div>
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
    $('.tabs .tab').click(function(){
        if ($(this).hasClass('signin')) {
            $('.tabs .tab').removeClass('active');
            $(this).addClass('active');
            $('.cont').hide();
            $('.signin-cont').show();
        }
        if ($(this).hasClass('signup')) {
            $('.tabs .tab').removeClass('active');
            $(this).addClass('active');
            $('.cont').hide();
            $('.signup-cont').show();
        }
    });
    $('.container .bg').mousemove(function(e){
        $(this).css('background-position', -60 + 'px ' + 20 + 'px');
    });
</script>


</body>
</html>
