<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="R" value="/" />
<!doctype html>
<head>
    <title>skhu 졸업요건</title>
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
            <span class="tab guest"><a href="#">guest</a></span>
        </div>
        <div class="content">
            <div class="signin-cont cont">
                <form action="graduation" method="post" modetAttribute="User">

                    <input type="text" name="id" id="id" value="${user.id}" class="inpt" required="required" placeholder="학번">
                    <input type="password" name="password" id="password" class="inpt" required="required" placeholder="비밀번호">

                    <a href="signUp" id="remember" class="btn btn-default">
                        <label>회원가입</label></a>

                    <%--<input type="checkbox" id="remember" class="checkbox" checked>--%>
                    <%--<label for="remember">Remember me</label>--%>
                    <div class="submit-wrap">
                        <input type="submit" value="로그인" class="submit">
                        <a href="findPassword" class="more">비밀번호를 잃어버리셧나요?</a>
                    </div>
                    <div>
                        <c:if test="${ error != null }">
                            <div style="color: #bb0502 ">아이디 or 비밀번호를 잘못 입력하셧습니다</div>
                        </c:if>
                    </div>
                </form>
            </div>

            <br/>

            <div class="content">
                <div class="guest-cont cont">
                        <a href="/main/login" id="guest" class="btn btn-default">
                            <label for="remember">게스트로그인</label>
                        </a>
                </div>
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
        if ($(this).hasClass('guest')) {
            $('.tabs .tab').removeClass('active');
            $(this).addClass('active');
            $('.cont').hide();
            $('.guest-cont').show();
        }
    });
    $('.container .bg').mousemove(function(e){
        $(this).css('background-position', -60 + 'px ' + 20 + 'px');
    });
</script>


</body>
</html>


