<%@ page session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="criteria" value="${sessionScope.userId}" />
<c:if test="${empty pageContext.session || empty criteria}">
	<c:redirect url="LogoutServlet" />
</c:if>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:ng="http://angularjs.org" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE10,IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0" >
		<link rel="icon" href="images/logos/favicon.ico" type="image/x-icon" />
		<link rel="stylesheet" href="styles/bootstrap.css" media="all" />
		<link rel="stylesheet" href="styles/bootstrap-theme.css" />
		<link rel="stylesheet" href="styles/main.css" media="all">
		<!--<base href="/FA2S_VER3.0/">-->
		<!--css: jquery-utils -->
	        <link rel="stylesheet" href="bower/fancybox/source/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen">
	        <link rel="stylesheet" href="bower/fancybox/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" type="text/css" media="screen">
	        <link rel="stylesheet" href="bower/fancybox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css" media="screen">
	        <link rel="stylesheet" href="bower/colorbox/colorbox.css" type="text/css" media="screen">
        <!--///-->
		<title>Academic Audit</title>
	</head>
	<body data-ng-app="hopApp" id="hopApp">
		 <!--[if lt IE 7]>
      		<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    	<![endif]-->

    	<!--[if lt IE 9]>
     		<script src="bower/es5-shim/es5-shim.js"></script>
      		<script src="bower/json3/lib/json3.min.js"></script>
    	<![endif]-->
		<div class="wrapper">
			<div class="topmost-header topmost-header-page">
				<div class="logo-holder">
				</div>
			</div>
			<div class="nav-left">
				<a id="home" data-ng-href ="#!/">Home</a>
				<a id="users"data-ng-href ="#!/users">users</a>
				<a id="tools"data-ng-href ="#!/tools">Tools</a>
				<a id="log" data-ng-click="executeOrder()" href="LogoutServlet">Logout</a>
			</div>
			<div class="container">
				<div data-ng-view class="view-animate"></div>
			</div>
		</div>
		<script src="bower/jquery/jquery.js"></script>
		<script src="bower/jquery/jquery-migrate.js"></script>
	    <script src="bower/angular/angular.js"></script>
	     <!-- build:js scripts/modules.js -->
        <script src="bower/angular-resource/angular-resource.js"></script>
        <script src="bower/angular-cookies/angular-cookies.js"></script>
        <script src="bower/angular-sanitize/angular-sanitize.js"></script>
        <script src="bower/angular-route/angular-route.js"></script>
        <script src="bower/angular-animate/angular-animate.js"></script>
        <!-- endbuild -->

        <!-- build:js scripts/utilities.js -->
        <script src="bower/bootstrap/dist/bootstrap.js"></script>
        <script src="bower/lodash/dist/lodash.js"></script>
        <script src="bower/moment/moment.js"></script>
        <!-- endbuild -->

        <!--build:js scripts/top_level_system_modules-->
        <script src="scripts/modules/shared/AppConfig.js"></script>
        <script src="scripts/modules/shared/AppRTService.js"></script>
        <script src="scripts/modules/shared/AppCharts.js"></script>
        <script src="scripts/modules/shared/AppDirectives.js"></script>
        <!-- endbuild -->

        <script src="scripts/modules/hop/app.js"></script>

        <!--scripts: controllers -->
        <script type="text/javascript" src="scripts/modules/hop/controllers/main.js"></script>
        <script type="text/javascript" src="scripts/modules/hop/controllers/tools.js"></script>
        <script type="text/javascript" src="scripts/modules/hop/controllers/review.js"></script>
        <!--///-->

        <!--scripts: jquery-utils -->
        <script src="bower/fancybox/lib/jquery.mousewheel-3.0.6.pack.js"></script>
        <script src="bower/fancybox/source/jquery.fancybox.pack.js?v=2.1.5"></script>
        <script src="bower/fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
        <script src="bower/fancybox/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>
        <script src="bower/fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>
        <script src="bower/colorbox/jquery.colorbox.js"></script>
        <!--///-->

	</body>
</html>