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

    <style>
        #content {
            margin-left: 25%;
            height: 800px;
        }
    </style>
</head>
<body>


<br>
<br>
<div id="content">
<form id="excelUploadForm" name="excelUploadForm" enctype="multipart/form-data" method="post"
      action= "${pageContext.request.contextPath}/main/excelUploadAjax?type=${member.type}&userId=${member.id}&${pagination.queryString}">
    <div class="contents">
        <div>
            <h3>수업 엑셀 업로드</h3>
            <p style="color: #9368E9">c드라이브에 upload 폴더를 만든 후<br>
                엑셀파일을 넣고 파일을 불러와 주세요</p>
            <br>
            <p>첨부파일은 한개만 등록 가능합니다.</p>

        </div>

        <dl class="vm_name">
            <dt class="down w90">첨부 파일</dt>
            <dd><input id="excelFile" type="file" name="excelFile" /></dd>
        </dl>
    </div>

    <div class="bottom">
        <button type="submit" id="addExcelImpoartBtn" class="btn btn-info" onclick="check()"><span>추가</span></button>
    </div>
</form>
</div>
</body>

</html>
