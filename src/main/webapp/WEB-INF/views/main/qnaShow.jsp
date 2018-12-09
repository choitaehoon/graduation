<%--
  Created by IntelliJ IDEA.
  User: JiEun
  Date: 2018-10-14
  Time: 오전 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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

    <style>
        #content {
            margin-left: 30%;
            height: 800px;
        }
    </style>

</head>


<body>
<div class="wrapper">
    <%@include file="../menu/menu.jsp"%>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title">Q & A</h4>
                                <div id="content">
                                    <%--<h4>질문 수정</h4>--%>
                                        <br/>
                                    <table class="table table-condensed">

                                        <h5>제목</h5>
                                    <div class="form-group" style="width: 50%">
                                        ${qna.title}
                                    </div>
                                    <label>작성자</label>
                                    <div class="form-group">
                                        ${qna.student.name}
                                    </div>
                                        <br/>
                                    <label>내 용</label>
                                        <br/>
                                    <div class="form-group" colspan="2" style="min-height: 350px ; text-align: left;">
                                       ${qna.body}
                                    </div>

                                    <div>
                                        날짜 :${qna.wtime}<br/>
                                    </div>
                                        <br/>
                                        <div id="buttons">
                                            <a class="btn btn-success" href="qnaaShow?qnaId=${qna.id}&type=${member.type}&id=${member.id}">답변 보기</a>
                                            <a href="qna?type=${member.type}&id=${member.id}" class="btn btn-default"> <i class="glyphicon glyphicon-list"></i> 목록으로</a>
                                        </div>
                                    </table>

                          <form>

                                <input type="hidden" name="type" value="${member.type}"  />
                                <input type="hidden" name="id" value="${member.id}" />
                              <input type="hidden" name="qnaId" value="${qna.id}" />
                            </form>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>



</div>
</div>


</body>

<!--   Core JS Files   -->
<script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>

</html>
