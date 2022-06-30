<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>개발자 모집</title>
<script>
	window.onload = function() {
		const urlParams = new URL(location.href).searchParams;
		const status = urlParams.get('status');
		if (status == "false") {
			alert("비정상적인 접근입니다. (ERROR - 세션없음)");
		}
	}
</script>
<link href="../css/webstyle.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<header>
			<%@include file="../intro/header.jsp"%>
		</header>
		<div class="slide">
			<div>
				<a href="#none"><img src="../images/slide-01.png" alt="slide-01"></a>
				<a href="#none"><img src="../images/slide-02.png" alt="slide-02"></a>
				<a href="#none"><img src="../images/slide-03.png" alt="slide-03"></a>
				<a href="#none"><img src="../images/slide-04.png" alt="slide-04"></a>
				<a href="#none"><img src="../images/slide-05.png" alt="slide-05"></a>
			</div>
		</div>
		<div class="items">
			<div class="news">
				<div class="tab-inner">
					<div class="btn">
						<a href="#none" class="active">새소식</a> <a href="#none">갤러리</a>
					</div>
					<div class="tabs">
						<div class="tab1">
							<a href="#none" class="open-modal"><em>제1회 웹 개발자 공모전 시작.</em><b>2022.06.29</b></a>
							<a href="#none"><em>같이 협업할 개발자를 찾습니다.</em><b>2022.06.30</b></a> <a
								href="#none"><em>청소년 대상 전문교실 오픈.</em><b>2022.07.01</b></a> <a
								href="#none"><em>홈페이지 시스템 구축 사람 모집합니다.</em><b>2022.07.02</b></a>
							<a href="#none"><em>의견을 들려주세요. 같이 만들어요</em><b>2022.07.03</b></a>
						</div>
						<div class="tab2">
							<a href="#none"> <img src="../images/gallery-01.png"
								alt="gallery-01"> <img src="../images/gallery-02.png"
								alt="gallery-02"> <img src="../images/gallery-03.png"
								alt="gallery-03">
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="banner">
				<a href="#none"> <img src="../images/rocket.gif" alt="rocket"></a>
			</div>
			<div class="shortcut">
				<a href="#none"> <img src="../images/banner-02.png"
					alt="banner-02">
				</a>
			</div>
		</div>
			<footer>
				<%@include file="../intro/footer.jsp"%>
			</footer>
	</div>
	<script src="../script/jquery-1.12.4.js"></script>
	<script src="../script/point.js"></script>
</body>
</html>