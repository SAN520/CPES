<!DOCTYPE html>
<html lang="en-us">	
	<head>
		<meta charset="utf-8">
		<title> ATGUIGU</title>
		<meta name="description" content="">
		<meta name="author" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<link rel="stylesheet" type="text/css" media="screen" href="${APP_PATH}/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="${APP_PATH}/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="${APP_PATH}/css/smartadmin-production-plugins.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="${APP_PATH}/css/smartadmin-production.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="${APP_PATH}/css/smartadmin-skins.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="${APP_PATH}/css/smartadmin-rtl.min.css"> 
		<link rel="stylesheet" type="text/css" media="screen" href="${APP_PATH}/css/demo.min.css">
		<link rel="shortcut icon" href="${APP_PATH}/img/favicon/favicon.ico" type="image/x-icon">
		<link rel="icon" href="${APP_PATH}/img/favicon/favicon.ico" type="image/x-icon">
		<link rel="apple-touch-icon" href="${APP_PATH}/img/splash/sptouch-icon-iphone.png">
		<link rel="apple-touch-icon" sizes="76x76" href="${APP_PATH}/img/splash/touch-icon-ipad.png">
		<link rel="apple-touch-icon" sizes="120x120" href="${APP_PATH}/img/splash/touch-icon-iphone-retina.png">
		<link rel="apple-touch-icon" sizes="152x152" href="${APP_PATH}/img/splash/touch-icon-ipad-retina.png">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<link rel="apple-touch-startup-image" href="${APP_PATH}/img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
		<link rel="apple-touch-startup-image" href="${APP_PATH}/img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
		<link rel="apple-touch-startup-image" href="${APP_PATH}/img/splash/iphone.png" media="screen and (max-device-width: 320px)">
		<script>
		homePage = "profile";
		</script>
	</head>
	<body class="">

		<!-- #HEADER -->
		<header id="header">
			<div id="logo-group">
				<span id="logo"> <img src="${APP_PATH}/img/logo.png" alt="SmartAdmin"> </span>
			</div>			
			<!-- #TOGGLE LAYOUT BUTTONS -->
			<!-- pulled right: nav area -->
			<div class="pull-right">
				
				<!-- collapse menu button -->
				<div id="hide-menu" class="btn-header pull-right">
					<span> <a href="javascript:void(0);" data-action="toggleMenu" title="Collapse Menu"><i class="fa fa-reorder"></i></a> </span>
				</div>

				<!-- logout button -->
				<div id="logout" class="btn-header transparent pull-right">
					<span> <a href="login.html" title="Sign Out" data-action="userLogout" data-logout-msg="You can improve your security further after logging out by closing this opened browser"><i class="fa fa-sign-out"></i></a> </span>
				</div>
				<!-- end logout button -->

				<!-- search mobile button (this is hidden till mobile view port) -->
				<div id="search-mobile" class="btn-header transparent pull-right">
					<span> <a href="javascript:void(0)" title="Search"><i class="fa fa-search"></i></a> </span>
				</div>
				<!-- end search mobile button -->
				
				<!-- #SEARCH -->
				<!-- input: search field -->
				<form action="#" class="header-search pull-right">
					<input id="search-fld" type="text" name="param" placeholder="Find reports and more">
					<button type="submit">
						<i class="fa fa-search"></i>
					</button>
					<a href="javascript:void(0);" id="cancel-search-js" title="Cancel Search"><i class="fa fa-times"></i></a>
				</form>
				<div id="fullscreen" class="btn-header transparent pull-right">
					<span> <a href="javascript:void(0);" data-action="launchFullscreen" title="Full Screen"><i class="fa fa-arrows-alt"></i></a> </span>
				</div>
			</div>
			<!-- end pulled right: nav area -->

		</header>
		<!-- END HEADER -->

		<!-- #NAVIGATION -->
		<!-- Left panel : Navigation area -->
		<!-- Note: This width of the aside area can be adjusted through LESS/SASS variables -->
		<aside id="left-panel">

			<!-- User info -->
			<div class="login-info">
				<span> <!-- User image size is adjusted inside CSS, it should stay as is --> 
					
					<a href="javascript:void(0);" id="show-shortcut" data-action="toggleShortcut">
						<img src="${APP_PATH}/img/avatars/sunny.png" alt="me" class="online" /> 
						<span>
							${loginUser.name}
						</span>
						<i class="fa fa-angle-down"></i>
					</a> 
					
				</span>
			</div>
			<!-- end user info -->

			<!-- NAVIGATION : This navigation is also responsive

			To make this navigation dynamic please make sure to link the node
			(the reference to the nav > ul) after page load. Or the navigation
			will not initialize.
			-->
			<nav>
				<!-- 
				NOTE: Notice the gaps after each icon usage <i></i>..
				Please note that these links work a bit different than
				traditional href="" links. See documentation for details.
				-->

				<ul>
					<li class="">
						<a href="#" title="Dashboard"><i class="fa fa-lg fa-fw fa-desktop"></i> <span class="menu-item-parent">控制面板</span></a>
					</li>
					<li>
						<a href="#"><i class="fa fa-lg fa-fw fa-bar-chart-o"></i> <span class="menu-item-parent">权限管理</span></a>
						<ul>
							<li>
								<a href="ajax/flot.html">用户管理</a>
							</li>
							<li>
								<a href="ajax/morris.html">角色管理</a>
							</li>
							<li>
								<a href="${APP_PATH}/system/permission/index.htm">许可管理</a>
							</li>
						</ul>
					</li>
				</ul>
			</nav>
			<span class="minifyme" data-action="minifyMenu"> <i class="fa fa-arrow-circle-left hit"></i> </span>
		</aside>
		<!-- END NAVIGATION -->
		
		<!-- #MAIN PANEL -->
		<div id="main" role="main">

			<!-- RIBBON -->
			<div id="ribbon">

				<span class="ribbon-button-alignment"> 
					<span id="refresh" class="btn btn-ribbon" data-action="resetWidgets" data-title="refresh" rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings." data-html="true" data-reset-msg="Would you like to RESET all your saved widgets and clear LocalStorage?"><i class="fa fa-refresh"></i></span> 
				</span>
				<ol class="breadcrumb"></ol>
			</div>
			<div id="content"></div>
		</div>
		<div class="page-footer">
			<div class="row">
				<div class="col-xs-12 col-sm-6">
					<span class="txt-color-white">SmartAdmin 1.5 <span class="hidden-xs"> - Web Application Framework</span> © 2014-2015</span>
				</div>
			</div>
			<!-- end row -->
		</div>
		<!-- END FOOTER -->

		<!-- END SHORTCUT AREA -->

		<!--================================================== -->

		<script src="${APP_PATH}/js//libs/jquery-2.1.1.min.js"></script>
		<script src="${APP_PATH}/js//libs/jquery-ui-1.10.3.min.js"></script>
		<script src="${APP_PATH}/js//app.config.js"></script>
		<script src="${APP_PATH}/js//plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> 
		<script src="${APP_PATH}/js//bootstrap/bootstrap.min.js"></script>
		<script src="${APP_PATH}/js//notification/SmartNotification.min.js"></script>
		<script src="${APP_PATH}/js//smartwidgets/jarvis.widget.min.js"></script>
		<script src="${APP_PATH}/js//plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>
		<script src="${APP_PATH}/js//plugin/sparkline/jquery.sparkline.min.js"></script>
		<script src="${APP_PATH}/js//plugin/jquery-validate/jquery.validate.min.js"></script>
		<script src="${APP_PATH}/js//plugin/masked-input/jquery.maskedinput.min.js"></script>
		<script src="${APP_PATH}/js//plugin/select2/select2.min.js"></script>
		<script src="${APP_PATH}/js//plugin/bootstrap-slider/bootstrap-slider.min.js"></script>
		<script src="${APP_PATH}/js//plugin/msie-fix/jquery.mb.browser.min.js"></script>
		<script src="${APP_PATH}/js//plugin/fastclick/fastclick.min.js"></script>
		<script src="${APP_PATH}/js//demo.min.js"></script>
		<script src="${APP_PATH}/js//app.min.js"></script>
		<script src="${APP_PATH}/js//speech/voicecommand.min.js"></script>
		<script src="${APP_PATH}/js//smart-chat-ui/smart.chat.ui.min.js"></script>
		<script src="${APP_PATH}/js//smart-chat-ui/smart.chat.manager.min.js"></script>
		<script src="${APP_PATH}/js/plugin/layer/layer.js"></script>
		<script src="${APP_PATH}/js/libs/jquery-form.min.js"></script>
	</body>
</html>