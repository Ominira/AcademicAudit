<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="userId" value="" scope="session" />
<!doctype html>
<html lang="en" >
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE10,IE=egde,chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
	<link rel="icon" href="images/logos/favicon.ico" type="image/x-icon" />
	<!--<link rel="stylesheet" href="styles/bootstrap.css" media="all" />-->
	<link rel="stylesheet" href="styles/main.css">
	<title>Academic Audit</title>
</head>
<body>
        <!--[if lt IE 7]>
	        <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	        <![endif]-->

	    <!--[if lt IE 9]>
	        <script src="bower/es5-shim/es5-shim.js"></script>
	        <script src="bower/json3/lib/json3.min.js"></script>
	        <![endif]-->
	        <div class="wrapper">
	        	<header id="index_header" class="topmost-header">
	        		<div class="logo-holder"></div>
	        	</header>
	        	<section id="index-section" class="content-wrapper">
	        		<div class="special-inline-wrap">
	        			<div id="login-wrapper" class="tiny-font">
	        				<form id="loginform" name="loginform" method="post" class="ctrl-form" autocomplete="off">
	        					<fieldset class="ctrl-field">
	        						<legend class="ctrl-legend">Login</legend>
	        						<div id="msgbox"></div>
	        						<div class="ctrl-group">
	        							<label for="username" class="ctrl-label">Username</label>
	        							<input type="text" name="username" id="username" class="ctrl-input" required autofocus/>
	        						</div>
	        						<div class="ctrl-group">
	        							<label for="password" class="ctrl-label">Password</label>
	        							<input type="password" name="password" id="password" class="ctrl-input" required/>
	        						</div>
	        						<div class="ctrl-group">
	        							<input type="submit" id="logMeIn" name="logMeIn" class="ctrl-button btn-login" value="Log In" />
	        							<a href="#" class="ctrl-link">Forgot your password?</a>
	        						</div>
	        					</fieldset>
	        				</form>
	        			</div>
	        		</div>
	        		<div class="welcome-panel" id="msg-panel">
	        			<h3>Introduction</h3>
	        			<p>

	        			</p>
	        			<p>

	        			</p>
	        			<h3>Grading Tools</h3>
	        			<p>

	        			</p>
	        			<div style="clear:both;"></div>
	        		</div>
	        		<a class="trigger" href="#">Welcome!</a>
	        	</section>
	        	<footer id="footer">
	        		<ul id="footer_menu">
	        			<li class="homeButton"><a href="#"></a></li>
	        			<li>
	        				<a href="#">External Links</a>
	        				<div class="one_column_layout">
	        					<div class="col_1">
	        						<a class="headerLinks">Links</a>
	        						<a class="headerLinks">University</a>
	        						<a class="listLinks" style="font-weight:bold;color:white;">UNISEL</a>
	        						<a class="listLinks">FCSIT</a>

	        						<a class="headerLinks">Students</a>
	        						<a class="listLinks">Student Portal</a>
	        						<a class="listLinks">Library</a>
	        					</div>
	        				</div>
	        			</li>
	        			<li>
	        				<a href="#">Grade Tools</a>
	        				<ul class="dropup">
	        					<li><a href="#">Grade Calculator</a></li>
	        					<li><a href="#">Grade Forecaster(1)</a></li>
	        					<li><a href="#">Grade Forecaster(2)</a></li>
	        				</ul>
	        			</li>
	        			<li>
	        				<a>About Developer</a>
	        				<div class="three_column_layout">
	        					<div class="col_3">
	        						<h2>A little About Me</h2>
	        					</div>

	        					<div class="col_1">
	        						<p>A tall black dude....</p>             
	        					</div>
	        					<div class="col_1">
	        						<p>Survived a house of</p>             
	        					</div>
	        					<div class="col_1">
	        						<p>Takes interest in Ice-cream and science, and kind of a current affairs guy</p>             
	        					</div>

	        					<div class="clear"></div>

	        					<div class="col_1">
	        						<p class="black_box">Check me out on Facebook, Twitter, Gplus, Pinterest, and Instagram</p>
	        					</div>
	        					<div class="col_2">
	        						<p>This is a bunch of junk I like, malesuada a felis. Vestibulum vitae dictum mauris. Aenean felis nisl, pulvinar quis blandit et, fermentum ut tortor. In condimentum nisi ut leo fermentum ornare. Praesent gravida venenatis felis sed egestas.</p>
	        					</div>

	        					<div class="clear"></div> <!-- Use this clear div to separate rows of content -->

	        					<div class="col_3">
	        						<h2>My Profile</h2>
	        					</div>

	        					<div class="col_3">     <!-- Examples of paragraphs with side images -->
	        						<p>
	        							<img src="images/profile/19-001.jpg" class="img_left whiteBorder" alt="" />
	        							<a style="display:inline;font-weight:bold;color:white;">Mustapha Taiwo</a>
	        							<a href="#">Read more...</a>
	        						</p>
	        					</div>
	        				</div>
	        			</li>
	        			<li><a href="#">FAQs</a></li>
	        			<li class="right"><a class="drop" id="date"></a></li>
	        		</ul>
	        	</footer>
	        </div>
	        <script>
	        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	        	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	        	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

	        ga('create', 'UA-XXXXX-X');
	        ga('send', 'pageview');
	        </script>
	        <script src="bower/jquery/jquery.js"></script>
	        <script src="bower/jquery/jquery-migrate.js"></script>
	        <script src="bower/angular/angular.js"></script>

	        <script type="text/javascript" src="scripts/index.js"></script>
	    </body>
	    </html>
