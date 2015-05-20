<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%>

<%@page import="bean.UsuarioBean"%>



<html>
<head>
<script src="js/vendors.js"></script>
<script src="js/styleswitcher.js"></script> 

<!-- Syntaxhighlighter -->
<script src="js/syntaxhighlighter/shCore.js"></script>
<script src="js/syntaxhighlighter/shBrushXml.js"></script>
<script src="js/syntaxhighlighter/shBrushJScript.js"></script>
<script src="js/app.js"></script>
<script src="js/index.js"></script>
<script src="js/commerce.js" ></script>
<sj:head jqueryui="true" jquerytheme="blitzer" locale="es" />

<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/screen.css" />
 -->

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>Tortas Encantada</title>

<link rel="shortcut icon" href="../img/favicon.png">

<meta name="description" content="">

<link rel="stylesheet" type="text/css" href="css/preload.css" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="css/animate.min.css" rel="stylesheet" type="text/css" />
<link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.bxslider.css" rel="stylesheet" type="text/css" />
<link href="css/buttons.css" rel="stylesheet" type="text/css" />
<link href="css/vendors.css" rel="stylesheet" type="text/css" />
<link href="css/syntaxhighlighter/shCore.css" rel="stylesheet" type="text/css" />
<link href="css/style-orange.css" rel="stylesheet" title="default" 	type="text/css" />
<link href="css/width-full.css" rel="stylesheet" title="default"	type="text/css" />
</head>


<body style="overflow: visible;">

	<div style="position: fixed; top: 0px; left: 0px; width: 0; height: 0;" id="scrollzipPoint"></div>
	<div id="preloader" style="display: none;">
		<div id="status" style="display: none;">&nbsp;</div>
	</div>
	<div id="sb-site" style="min-height: 352px;">
		<div class="boxed">
			<div id="idPrincipal">
				<div id="idCabecera">
					<tiles:insertAttribute name="cabecera" />
				</div>
				<div id="idCuerpo">
					<div id="idMenu">
						<tiles:insertAttribute name="menu" />
					</div>
					<div id="idCentralConMenu">
						<tiles:insertAttribute name="central" />
					</div>
				</div>
				<div id="idPie">
						<tiles:insertAttribute name="pie" />
				</div>
			</div>

		</div>
	</div>
	




</body>
</html>