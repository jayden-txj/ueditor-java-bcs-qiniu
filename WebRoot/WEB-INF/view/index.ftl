<!DOCTYPE html>
<html>
<head>
	<!-- 编码 -->
	<meta charset="UTF-8" />
	
	<!-- ie -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge;chrome=1"/>
	
	<!-- for mobile -->
	<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	
	<!-- for search-->
	<meta name="keywords" content="uikoo9.com"/>
	<meta name="description" content="uikoo9.com"/>
	<meta name="author" contect="qiaowenbin"/>
	<meta name="robots" contect="all"/>
	
	<!-- title -->
	<title>uikoo9.com</title>
	
	<!-- favicon.ico -->
	<link href="${base}/favicon.ico" type="image/x-icon" rel="bookmark"/> 
	<link href="${base}/favicon.ico" type="image/x-icon" rel="icon"/> 
	<link href="${base}/favicon.ico" type="image/x-icon" rel="shortcut icon"/> 
	
	<!-- fill -->
	<style type="text/css">
		html,body{height: 100%;}
		#wrap{min-height: 100%;height: auto !important;height: 100%;margin: 0 auto -60px;}
		#push,#footer{height: 60px;}
		#footer{background-color: #f5f5f5;text-align:center;}
		@media ( max-width : 767px){#footer {margin-left:-20px;padding-left:20px;}}
	</style>

	<!-- base -->
	<script type="text/javascript">var base = '${base}';</script>
	
	<!-- jquery -->
	<script type="text/javascript" src="http://cdn.staticfile.org/jquery/1.11.1/jquery.min.js"></script>
	
	<!-- bootstrap -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<link rel="stylesheet" href="http://cdn.staticfile.org/twitter-bootstrap/3.2.0/css/bootstrap.min.css">
	<script type="text/javascript" src="http://cdn.staticfile.org/twitter-bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
	<script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<div id="wrap">
		<nav role="navigation" class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button data-target="#bsnav" data-toggle="collapse" class="navbar-toggle" type="button">
						<span class="sr-only">导航条</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a href="http://uikoo9.com/" class="navbar-brand"><strong class="text-primary">uikoo9.com</strong></a>
				</div>
				
				<div class="collapse navbar-collapse" id="bsnav">
					<ul class="nav navbar-nav">
						<li><a href="http://uikoo9/">首页</a></li>
						<li><a href="http://uikoo9/blog/list">博客</a></li>
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">作品<span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li role="presentation"><a role="menuitem" tabindex="-1" target="_blank" href="http://uikoo9/dishi">滴石</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" target="_blank" href="http://uikoo9/jfinalQ">jfinalQ</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" target="_blank" href="http://uikoo9/bootstrapQ">bootstrapQ</a></li>
							</ul>
						</li>
						<li><a href="http://uikoo9/version">版本更新</a></li>
						<li><a href="http://uikoo9/donate" target="_blank">捐助</a></li>
						<li><a href="http://uikoo9/me" target="_blank">关于我</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right"></ul>
				</div>
			</div>
		</nav>
	
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
					<script type="text/javascript" charset="utf-8" src="${base}/WUI/ueditor-min-1.4.3/ueditor.config.js"></script>
				    <script type="text/javascript" charset="utf-8" src="${base}/WUI/ueditor-min-1.4.3/ueditor.all.min.js"> </script>
				    <script type="text/javascript" charset="utf-8" src="${base}/WUI/ueditor-min-1.4.3/lang/zh-cn/zh-cn.js"></script>
				    <script type="text/javascript" charset="utf-8">
							var ue = UE.getEditor('ueditor', {toolbars: [['simpleupload','insertvideo','attachment']]});
				    </script>
	    
					<script id="ueditor" type="text/plain"></script>
				</div>
			</div>
		</div>

		<div id="push"></div>
	</div>
	
    <div id="footer">
		<div class="container">
			<p class="text-muted" style="margin:20px 0;">
				<a target="_blank" href="http://uikoo9.com/">uikoo9.com</a>&nbsp;&nbsp;&nbsp;
				<a target="_blank" href="http://www.miibeian.gov.cn/">京ICP备14036391号</a>
			</p>
		</div>
	</div>
</body>
</html>