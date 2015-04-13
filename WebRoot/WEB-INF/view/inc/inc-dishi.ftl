<#include "/com/uikoo9/util/jfinal/view/common/inc.ftl"/>

<#-- bshead -->
<#macro bshead pos='top' sname='滴石' shref='http://uikoo9.com/dishi'>
	<nav role="navigation" class="navbar navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button data-target="#bsnav" data-toggle="collapse" class="navbar-toggle" type="button">
					<span class="sr-only">导航条</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="${shref}" class="navbar-brand"><strong class="text-primary">${sname}</strong></a>
			</div>
			
			<div class="collapse navbar-collapse" id="bsnav">
				<ul class="nav navbar-nav">
					<li><a href="${base}/dishi">首页</a></li>
					<li><a href="${base}/dishi/download">下载</a></li>
					<@uikoo9/>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<#if user??>
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">${user.ucenter_user_name}<span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:void(0);" class="modifyPwd">修改密码</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" href="${base}/login/logout">退出系统</a></li>
							</ul>
						</li>
					<#else>
						<li><a href="${base}/dishi/reg">注册</a></li>
						<li><a href="${base}/dishi/login">登录</a></li>
					</#if>
				</ul>
			</div>
		</div>
	</nav>
</#macro>