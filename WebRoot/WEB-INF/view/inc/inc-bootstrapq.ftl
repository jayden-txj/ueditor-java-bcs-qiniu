<#include "/com/uikoo9/util/jfinal/view/common/inc.ftl"/>

<#-- bshead -->
<#macro bshead pos='top' sname='bootstrapQ' shref='http://uikoo9.com/bootstrapQ'>
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
					<li><a href="${base}/bootstrapQ" id="bstro-home">首页</a></li>
					<li><a href="${base}/bootstrapQ/docs">文档</a></li>
					<@uikoo9/>
				</ul>
			</div>
		</div>
	</nav>
</#macro>