<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="R" value="/"/>
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
    <script type="text/javascript">
        $(function(){
            $("#alert-success").hide();
            $("#alert-danger").hide();
            $("input").keyup(function(){
                var pwd1=$("#pwd1").val();
                var pwd2=$("#pwd2").val();
                if(pwd1 != "" || pwd2 != ""){
                    if(pwd1 == pwd2){
                        $("#alert-success").show();
                        $("#alert-danger").hide();
                        $("#submit").removeAttr("disabled");
                    }else{
                        $("#alert-success").hide();
                        $("#alert-danger").show();
                        $("#submit").attr("disabled", "disabled");
                    }
                }
            });
        });
    </script>
    <style>
        #content {
            margin-left: 30%;
            height: 800px;
        }
    </style>

</head>


<body>

<div class="wrapper">
    <%@include file="../menu/menu.jsp" %>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title">관리자 등록</h4>
                            <p class="category">다른 관리자ID를 추가합니다.</p>

                            <br/>
                            <br/>

                            <form:form method="post" modelAttribute="admin">
                                <div class="form-group">
                                    <label>ID(교번)</label>
                                    <input type="text" name="adminid" id="adminid" class="form-control" style="width: 200px"
                                           required="required">
                                </div>
                                <div class="form-group">
                                    <label>이름</label>
                                    <input type="text" name="name" id="name" class="form-control" style="width: 200px"
                                           required="required">
                                </div>
                                <div class="form-group">
                                    <label>비밀번호</label>
                                    <input type="password" name="password" id="pwd1" style="width: 200px"
                                           class="form-control"
                                           required="required">
                                </div>
                                <div class="form-group">
                                    <label>비밀번호 확인</label>
                                    <input type="password" name="password2" id="pwd2" style="width: 200px"
                                           class="form-control"
                                           required="required">
                                </div>
                                <div class="alert alert-success" id="alert-success" style="width: 200px">비밀번호가 일치합니다.</div>
                                <div class="alert alert-danger" id="alert-danger" style="width: 225px">비밀번호가 일치하지 않습니다.</div>

                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-ok"></i>저장</button>
                                    <a href="graduation?type=${member.type}&id=${member.id}" class="btn btn-default">취소</a>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<footer class="footer">
    <div class="container-fluid">

        <p class="copyright pull-right">
            <script>

            </script>

        </p>
    </div>
</footer>


</div>


</body>

<!-- Core JS Files -->
<script src="${R}assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="${R}assets/js/bootstrap.min.js" type="text/javascript"></script>

<!-- Charts Plugin -->
<script src="${R}assets/js/chartist.min.js"></script>

<!-- Notifications Plugin -->
<script src="${R}assets/js/bootstrap-notify.js"></script>

<!-- Google Maps Plugin -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="${R}assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="${R}assets/js/demo.js"></script>
</html>
