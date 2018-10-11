<<<<<<< HEAD
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/defer/header.jsp"%>
<%@include file="/defer/tap.jsp"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet" media="screen">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${R}res/common.js"></script>
    <link rel="stylesheet" href="${R}res/common.css">

    <style type="text/css" media="screen">
        #content{
            margin-left: 30%;
            height: 800px;

        }

    </style>
</head>
<body>





<div id="content" >
    <br/>
    <h1>졸업요건 수정</h1>
    <br/>

    <label>전공이름</label>
    <div class="form-group">
        <input type="text" style="width: 200px" value="주전공"/>
    </div>
    <label>졸업조건</label>
    <div class="form-group">
        <textArea cols=80 rows=10 >[2008~2013학번까지]전필37학점 포함하여 전공 60학점 이상 이수
                [2014학번부터]전필31학점 포함하여 전공 60학점 이상 이수
        </textArea>
    </div>
    <label>기타 졸업조건</label>
    <div class="form-group">
        <textArea cols=80 rows=10 >
        전공기초과정(이산수학, 대학수학, 정보사회론, 컴퓨터 활용 중 2과목 이상을 포함하여 교양 15학점 이상 이수, 총 교양 47학점 이상)전공심화과정(전공 15학점 이상 추가 이수, 총 전공 75학점 이상)<br/>타과수전공과정, 타과부전공과정, 연계전공과정, 자기설계과정, 해외창과정 등의 특별과정 중 한 과정 이상 이수
        </textArea>
    </div>

    <div id="buttons">
        <a class="btn btn-primary">
            <i class="glyphicon glyphicon-ok"></i> 저장</a>

        <a class="btn btn-danger" href="#"><i class=" glyphicon glyphicon-remove"></i> 삭제</a>
        <a  href="#" class="btn btn-default" >
            <i class="glyphicon glyphicon-list"></i> 졸업요건으로</a>

    </div>

</div>

</body>
</html>
=======

<c:url var="R" value="/" />
<head>
<meta charset="utf-8" />

<style>
#content {
	margin-left: 30%;
	height: 800px;
}
</style>
</head>
<body>

	<div class="wrapper">
        <%@include file="menu.jsp"%>

			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="header">
									<h4 class="title">졸업 관리</h4>
									<p class="category">졸업요건 수정</p>

									<div id="content">
										<br />
										<h1>졸업요건 수정</h1>
										<br />
										<label>구분</label>
										<div class="form-group">
											<input type="text" style="width: 200px" value="소프트웨어공학과" />
										</div>

										<label>전공이름</label>
										<div class="form-group">
											<input type="text" style="width: 200px" value="주전공" />
										</div>
										<label>졸업조건</label>
										<div class="form-group">
											<textArea cols=80 rows=10>
											[2008~2013학번까지]전필37학점 포함하여 전공 60학점 이상 이수 [2014학번부터]전필31학점 포함하여 전공 60학점 이상 이수
											</textArea>
										</div>
										<label>기타 졸업조건</label>
										<div class="form-group">
											<textArea cols=80 rows=10>
        전공기초과정(이산수학, 대학수학, 정보사회론, 컴퓨터 활용 중 2과목 이상을 포함하여 교양 15학점 이상 이수, 총 교양 47학점 이상)전공심화과정(전공 15학점 이상 추가 이수, 총 전공 75학점 이상)<br />타과수전공과정, 타과부전공과정, 연계전공과정, 자기설계과정, 해외창과정 등의 특별과정 중 한 과정 이상 이수
        </textArea>
										</div>

										<div id="buttons">
											<a class="btn btn-primary"> <i
												class="glyphicon glyphicon-ok"></i> 저장
											</a> <a class="btn btn-danger" href="#"><i
												class=" glyphicon glyphicon-remove"></i> 삭제</a> <a href="#"
												class="btn btn-default"> <i
												class="glyphicon glyphicon-list"></i> 졸업요건으로
											</a>

										</div>

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
<script src="${R}assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="${R}assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="${R}assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="${R}assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="${R}assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="${R}assets/js/demo.js"></script>

</html>
>>>>>>> cbb51c552d2cbac933173f0b35ab5b7698cd1d32
