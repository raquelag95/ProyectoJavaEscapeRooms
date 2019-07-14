
<!DOCTYPE html>
<html lang="zxx">
<head>
<!-- Basic Page Needs
	================================================== -->
<title>Escapium - Escape Room Game HTML Template</title>
<meta charset="utf-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style type="text/css">
.img-hover-zoom {
	height: 300px; /* [1.1] Set it as per your need */
	overflow: hidden; /* [1.2] Hide the overflowing of child elements */
}

/* [2] Transition property for smooth transformation of images */
.img-hover-zoom img {
	transition: transform .5s ease;
}

/* [3] Finally, transforming the image when container gets hovered */
.img-hover-zoom:hover img {
	transform: scale(1.5);
}
</style>
</head>
<body>
	<div class="img-hover-zoom">
		<img src="img/room1.jpg" alt="This zooms-in really well and smooth">
	</div>
</body>
</html>