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

    <link href="http://nethna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css"
          rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">

    </script>
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
                            <h4 class="title">공지사항</h4>
                            <div id="content">
                                <%--                        <br />--%>

                                <br />
                                <label>제목</label>
                                <div class="form-group">
                                   ${ notice.title }
                                </div>
                                <label>작성자</label>
                                   ${ notice.admin.name}<br/>
                                <label>내 용</label>
                               <div class="form-group">
                                    <%--											<textArea cols=100 rows=18>						</textArea>--%>
                           <%--         &lt;%&ndash;<textarea name="body" id="body" cols="100" rows="18">&ndash;%&gt;<textArea cols=100 rows=18 >
                                        ${ notice.body}
                                      </textarea>--%>
                                        <textarea style="padding-left:50;padding-right:50;padding-bottom:50;padding-top:50;word-break:break-all" cols=100 rows=10>  ${ notice.body}</textarea>

                               </div>

                                <div>
                                    <label>날짜</label> : <%--<input class="form-control" style="width: 100px" value="--%>${ notice.time}<%--"/>--%>
                                    <br/><br/>
                                    <label>파일 첨부</label>  <input type="file">
                                </div>

<%--                                <div id="info">
                                    <span>no:</span> <span>${ notice.id }</span> <br> <span>글쓴이:</span>
                                    <span>${ notice.admin_id}</span> <br> &lt;%&ndash;<span>글쓴시각:</span>
                                    <span><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss"
                                                          value="${ article.time }" /></span>&ndash;%&gt;
                                </div>
      --%>
                             </div>
                        </div>

<%--                        <form method="post">
                            <input type="hidden" name="type" value="${member.type}"  />
                            <input type="hidden" name="id" value="${member.id}" />
                        </form>--%>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<footer class="footer">
    <div class="container-fluid">

        <p class="copyright pull-right">
            &copy;
            <script>
                document.write(new Date().getFullYear())
            </script>
            <a href="http://www.creative-tim.com">Creative Tim</a>, made with
            love for a better web
        </p>
    </div>
</footer>


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
