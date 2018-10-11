
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" href="assets/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>SKHU 졸업관리</title>

<
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
									<p class="category">졸업요건 등록</p>


									<div id="content">
										<br />
										<h1>졸업요건 등록</h1>
										<br /> <label>구분</label>
										<div class="form-group">
											<select class="form-control" style="width: 20%">
												<option>소프트웨어공학과</option>
												<option>타과학생</option>
											</select>

										</div>
										<label>적용학번</label>
										<div class="form-group">
											<input class="form-control" type="number"
												style="width: 100px" ;/>
										</div>
										<label>전공이름</label>
										<div class="form-group">
											<input class="form-control" type="text" style="width: 200px" ;/>
										</div>

										<label>졸업조건</label>
										<div class="form-group">
											<textArea cols=80 rows=10></textArea>
										</div>
										<label>기타 졸업조건:</label>
										<div class="form-group">
											<textArea cols=80 rows=10></textArea>
										</div>

										<div id="buttons">
											<a class="btn btn-primary"> <i
												class="glyphicon glyphicon-ok"></i> 저장
											</a> <a class="btn btn-default"> <i
												class="glyphicon glyphicon-list"></i> 목록으로
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
