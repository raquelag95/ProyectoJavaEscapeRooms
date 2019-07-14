
<!DOCTYPE html>
<html lang="zxx">
<head>
<!-- Basic Page Needs
	================================================== -->
<title>Escapium - Escape Room Game HTML Template</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="HTML Template for Escape Room Game">
<meta name="author" content="Dan Fisher">
<meta name="keywords"
	content="escape, room, quest, real, game, life, puzzle, real-life">
<!-- Favicons
	================================================== -->
<link rel="shortcut icon" href="assets/img/favicons/favicon.ico">
<link rel="apple-touch-icon" sizes="120x120"
	href="assets/img/favicons/favicon-120.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="assets/img/favicons/favicon-152.png">
<!-- Mobile Specific Metas
	================================================== -->
<meta name="viewport" content="width=device-width,initial-scale=1">
<!-- Google Web Fonts
	================================================== -->
<link
	href="https://fonts.googleapis.com/css?family=Anton%7CHind:400,700%7CMontserrat:400,700"
	rel="stylesheet">
<!-- CSS
	================================================== -->
<!-- Vendor CSS -->
<link href="assets/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="assets/vendor/animate/animate.css" rel="stylesheet">
<link href="assets/vendor/aos/aos.css" rel="stylesheet">
<link
	href="assets/font-icon/simple-line-icons/css/simple-line-icons.css"
	rel="stylesheet">
<link href="assets/font-icon/ionicons/css/ionicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/magnific-popup/magnific-popup.css"
	rel="stylesheet">
<link href="assets/vendor/slick/slick.css" rel="stylesheet">
<!-- Template CSS-->
<link href="assets/css/style.css" rel="stylesheet">
<!-- Booked CSS-->
<link href="assets/css/booked.css" rel="stylesheet">
<!-- Custom CSS-->
<link href="assets/css/custom.css" rel="stylesheet">

<style type="text/css">
html {
	overflow-y: scroll;
}

.container {
	position: relative;
	width: 960px;
	margin: 0 auto;
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-o-transition: all 1s ease;
	transition: all 1s ease;
}

#filters {
	margin: 1%;
	padding: 0;
	list-style: none;
}

#filters li {
	float: left;
}

#filters li span {
	display: block;
	padding: 5px 20px;
	text-decoration: none;
	color: #666;
	cursor: pointer;
}

#filters li span.active {
	background: #e95a44;
	color: #fff;
}

#portfoliolist .portfolio {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-o-box-sizing: border-box;
	width: 23%;
	margin: 1%;
	display: none;
	float: left;
	overflow: hidden;
}

.portfolio-wrapper {
	overflow: hidden;
	position: relative !important;
	background: #666;
	cursor: pointer;
}

.portfolio img {
	max-width: 100%;
	position: relative;
	top: 0;
	-webkit-transition: all 600ms cubic-bezier(0.645, 0.045, 0.355, 1);
	transition: all 600ms cubic-bezier(0.645, 0.045, 0.355, 1);
}

.portfolio .label {
	position: absolute;
	width: 100%;
	height: 40px;
	bottom: -40px;
	-webkit-transition: all 300ms cubic-bezier(0.645, 0.045, 0.355, 1);
	transition: all 300ms cubic-bezier(0.645, 0.045, 0.355, 1);
}

.portfolio .label-bg {
	background: #e95a44;
	width: 100%;
	height: 100%;
	position: absolute;
	top: 0;
	left: 0;
}

.portfolio .label-text {
	color: #fff;
	position: relative;
	z-index: 500;
	padding: 5px 8px;
}

.portfolio .text-category {
	display: block;
	font-size: 9px;
}

.portfolio:hover .label {
	bottom: 0;
}

.portfolio:hover img {
	top: -30px;
}
</style>

</head>
<body>
	<ul id="filters" class="clearfix">
		<li><span class="filter active"
			data-filter=".app, .card, .icon, .logo, .web">All</span></li>
		<li><span class="filter" data-filter=".app">App</span></li>
		<li><span class="filter" data-filter=".card">Card</span></li>
		<li><span class="filter" data-filter=".icon">Icon</span></li>
		<li><span class="filter" data-filter=".logo">Logo</span></li>
		<li><span class="filter" data-filter=".web">Web</span></li>
	</ul>
	<div id="portfoliolist">
		<div class="portfolio logo" data-cat="logo">
			<div class="portfolio-wrapper">
				<img src="img/portfolios/logo/5.jpg" alt="" />
				<div class="label">
					<div class="label-text">
						<a class="text-title">Bird Document</a> <span
							class="text-category">Logo</span>
					</div>
					<div class="label-bg"></div>
				</div>
			</div>
		</div>
		.........
	</div>
	<script type="text/javascript">
		$(function() {

			var filterList = {

				init : function() {

					// MixItUp plugin
					// http://mixitup.io
					$('#portfoliolist').mixItUp({
						selectors : {
							target : '.portfolio',
							filter : '.filter'
						},
						load : {
							filter : '.app' // show app tab on first load
						}
					});

				}

			};

			// Run the show!
			filterList.init();

		});
	</script>
</body>
</html>