<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="R" value="/" />
<!doctype html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet" media="screen">
    <script src="${R}http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="${R}https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${R}res/common.css">
    <script src="res/common.js"></script>
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
        $(document).ready(function(){
            $('#checkbtn').on('click', function(){
                $.ajax({
                    url: './checkSignup',
                    type: 'POST',
                    data: {
                        "id" : $('#id').val()
                    },
                    success: function(data){
                        if($.trim(data) == 0)
                            alert("사용 할 수 있습니다.");
                        else
                            alert("사용 할 수 없습니다");
                    }
                });    //end ajax
            });    //end on
        }); //end ready
    </script>
</head>
<body>

<section class="container">
<article class="full">
    <h1>회원가입</h1>

    <div class="content">
        <div class="signin-cont cont">
            <form:form method="post" modelAttribute="student">
                <div class="form-group">
                <input type="text" name="id" id="id" class="inpt" required="required" placeholder="학번" value="${student.id}">
                    <button type="button"  id="checkbtn">학번 중복 체크</button>
                </div>
                <input type="text" name="name" id="name" class="inpt" required="required" placeholder="이름">
                <div class="form-group">
                    <form:select path="department_Id" class="form-control"
                                 itemValue="id" itemLabel="departmentName" items="${ departments }" />
                </div>
                <input type="password" name="password" id="password" class="inpt" required="required" placeholder="비밀번호">
                <input type="password" name="password2" id="checkPwd" class="inpt" required="required" placeholder="비밀번호 확인">
                <input type="email" name="email" id="email" class="inpt" required="required" placeholder="이메일">
                <input type="text" name="phone" id="phone" class="inpt" required="required" placeholder="핸드폰번호">
                <input type="hidden" name="graduationRule_id" value="1"/>

                <%--OTP가 구현하면 적을 것--%>
<%--                <input type="text" name="otp" id="otp" class="inpt" required="required" placeholder="OTP 입력">--%>

                 <button type="submit" class="btn btn-default">가입하기</button>
                <a href="../login.jsp" class="btn btn-primary">홈</a>
            </form:form>
        </div>
    </div>
</article>
</section>


</body>
</html>
