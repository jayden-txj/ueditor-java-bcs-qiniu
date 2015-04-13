<#include "/com/uikoo9/util/jfinal/view/common/inc.ftl"/>

<#-- bshead -->
<#macro bshead pos='top' sname='uikoo9.com' shref='http://uikoo9.com/'>
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
					<#if user??>
						<#if user.ucenter_user_type == '010102'>
							<li><a href="${base}/bill">首页</a></li>
							<li class="menus" data="url:/bill/detail;"><a href="javascript:void(0);">收支明细</a></li>
							<li class="menus" data="url:/bill/account;"><a href="javascript:void(0);">账户管理</a></li>
							<li><a href="${base}/diary/list">看日记</a></li>
							<li><a href="${base}/diary/edit">写日记</a></li>
							<li><a href="${base}/blog/listForUser">看博客</a></li>
							<li><a href="${base}/blog/edit">写博客</a></li>
						</#if>
						<#if user.ucenter_user_type == '010101'>
							<#list menus as menu>
								<#if menu.submenus()?size gt 0>
									<li class="dropdown">
										<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">${menu.ucenter_menu_title}<span class="caret"></span></a>
										<ul class="dropdown-menu" role="menu">
											<#list menu.submenus() as item>
												<li role="presentation" class="menus" data="url:${item.ucenter_menu_url};"><a role="menuitem" tabindex="-1" href="javascript:void(0);">${item.ucenter_menu_title}</a></li>
											</#list>
										</ul>
									</li>
								<#else>
									<li class="menus" data="url:${menu.ucenter_menu_url};"><a href="javascript:void(0);">${menu.ucenter_menu_title}</a></li>
								</#if>
							</#list>
						</#if>
					<#else>
						<li><a href="${base}/">首页</a></li>
						<li><a href="${base}/blog/list">博客</a></li>
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">作品<span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li role="presentation"><a role="menuitem" tabindex="-1" target="_blank" href="${base}/dishi">滴石</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" target="_blank" href="${base}/jfinalQ">jfinalQ</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" target="_blank" href="${base}/bootstrapQ">bootstrapQ</a></li>
							</ul>
						</li>
						<li><a href="${base}/version">版本更新</a></li>
						<@uikoo9/>
					</#if>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<#if user??>
						<#if msgcount??>
							<li><a href="${base}/blog/msg">新的评论<span class="badge">${msgcount}</span></a></li>
						</#if>
						<li class="dropdown">
							<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">${user.ucenter_user_name}<span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li role="presentation"><a role="menuitem" tabindex="-1" href="javascript:void(0);" class="modifyPwd">修改密码</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" href="${base}/login/logout">退出系统</a></li>
							</ul>
						</li>
					</#if>
				</ul>
			</div>
		</div>
	</nav>
</#macro>