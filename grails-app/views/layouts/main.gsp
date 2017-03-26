<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0" />
	<title>Quản lí nhà trọ</title>

	<!--=== CSS ===-->

	<!-- Bootstrap -->
	<link href="${resource(dir: 'bootstrap/css', file: 'bootstrap.min.css')}" rel="stylesheet" type="text/css"/>

	<!-- jQuery UI -->
	<!--<link href="plugins/jquery-ui/jquery-ui-1.10.2.custom.css" rel="stylesheet" type="text/css" />-->
	<!--[if lt IE 9]>
		<link rel="stylesheet" type="text/css" href="plugins/jquery-ui/jquery.ui.1.10.2.ie.css"/>
	<![endif]-->

	<!-- Theme -->
	<link href="${resource(dir: 'assets/css', file: 'main.css')}" rel="stylesheet" type="text/css" />
	<link href="${resource(dir: 'assets/css', file: 'plugins.css')}" rel="stylesheet" type="text/css" />
	<link href="${resource(dir: 'assets/css', file: 'responsive.css')}" rel="stylesheet" type="text/css" />
	<link href="${resource(dir: 'assets/css', file: 'icons.css')}" rel="stylesheet" type="text/css" />

	<link href="${resource(dir: 'assets/css/fontawesome', file: 'font-awesome.min.css')}" rel="stylesheet" type="text/css" />
	<!--[if IE 7]>
		<link rel="stylesheet" href="assets/css/fontawesome/font-awesome-ie7.min.css">
	<![endif]-->

	<!--[if IE 8]>
		<link href="assets/css/ie8.css" rel="stylesheet" type="text/css" />
	<![endif]-->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>

	<link href="${resource(dir: 'assets/css', file: 'qlnhatro.css')}" rel="stylesheet" type="text/css"/>

	<!--=== JavaScript ===-->
	%{--<script type="text/javascript" src="${resource(dir: 'bootstrap/js', file: 'bootstrap.js')}"></script>--}%

	<script type="text/javascript" src="${resource(dir: 'assets/js/libs', file: 'jquery-1.10.2.min.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/jquery-ui', file: 'jquery-ui-1.10.2.custom.min.js')}"></script>

	<script type="text/javascript" src="${resource(dir: 'bootstrap/js', file: 'bootstrap.min.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'bootstrap/js', file: 'bootstrap.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/js/libs', file: 'lodash.compat.min.js')}"></script>

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
		<script src="assets/js/libs/html5shiv.js"></script>
	<![endif]-->

	<!-- Smartphone Touch Events -->
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/touchpunch', file: 'jquery.ui.touch-punch.min.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/event.swipe', file: 'jquery.event.move.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/event.swipe', file: 'jquery.event.swipe.js')}"></script>

	<!-- General -->
	<script type="text/javascript" src="${resource(dir: 'assets/js/libs', file: 'breakpoints.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/respond', file: 'respond.min.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/cookie', file: 'jquery.cookie.min.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/slimscroll', file: 'jquery.slimscroll.min.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/slimscroll', file: 'jquery.slimscroll.horizontal.min.js')}"></script>

	<!-- Page specific plugins -->
	<!-- Charts -->
	<!--[if lt IE 9]>
		<script type="text/javascript" src="plugins/flot/excanvas.min.js"></script>
	<![endif]-->
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/sparkline', file: 'jquery.sparkline.min.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/flot', file: 'jquery.flot.min.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/flot', file: 'jquery.flot.tooltip.min.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/flot', file: 'jquery.flot.resize.min.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/flot', file: 'jquery.flot.time.min.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/flot', file: 'jquery.flot.growraf.min.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/easy-pie-chart', file: 'jquery.easy-pie-chart.min.js')}"></script>

	<script type="text/javascript" src="${resource(dir: 'assets/plugins/daterangepicker', file: 'moment.min.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/daterangepicker', file: 'daterangepicker.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/blockui', file: 'jquery.blockUI.min.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/fullcalendar', file: 'fullcalendar.min.js')}"></script>


	<!-- Noty -->
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/noty', file: 'jquery.noty.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/noty/layouts', file: 'top.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/noty/themes', file: 'default.js')}"></script>

	<!-- Form Validation -->
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/validation', file: 'jquery.validate.min.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/validation', file: 'additional-methods.min.js')}"></script>

	<!-- Forms -->
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/uniform', file: 'jquery.uniform.min.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/select2', file: 'select2.min.js')}"></script>

	<!-- Bootbox -->
	<script type="text/javascript" src="${resource(dir: 'assets/plugins/bootbox', file: 'bootbox.js')}"></script>

	<!-- App -->
	<script type="text/javascript" src="${resource(dir: 'assets/js', file: 'app.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/js', file: 'plugins.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'assets/js', file: 'plugins.form-components.js')}"></script>

	<script>
		$(document).ready(function(){
			"use strict";

			App.init(); // Init layout and core plugins
			Plugins.init(); // Init all plugins
			FormComponents.init(); // Init all form-specific plugins
		});
	</script>

	<!-- Demo JS -->
	<script type="text/javascript" src="${resource(dir: 'assets/js', file: 'custom.js')}"></script>

	%{--qlnhatro--}%
	<script type="text/javascript" src="${resource(dir: 'assets/js', file: 'qlnhatro.js')}"></script>
</head>

<body>

<!-- Header -->
<g:render template="/layouts/navbar"/>
<!-- /.header -->

<div id="container">
	<g:render template="/layouts/sidebar"/>
	<!-- /Sidebar -->

	<div id="content">
		<div class="container">
			<g:layoutBody/>
		</div>
	</div>
</div>
</body>
</html>