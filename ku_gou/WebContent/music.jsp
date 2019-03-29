<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>歌曲播放界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet"  type="text/css"  href="css/music.css"/>
	<link rel="stylesheet"  type="text/css"  href="css/Initial.css"/>
  </head>
  
  <body>
  		<div class="container">
  			<!--登录搜索栏-->
			<div class="header clearfix">
				<div class="logo f-l">
					<a href="">
						<img src="img/logo.png">
					</a>
				</div>
				<div class="search f-l clearfix">
					<input class="search_input f-l" type="text" placeholder="此生不换">
					<div class="shimg f-r"></div>
				</div>
				<div class="topNav_fr f-l clearfix">
					<ul class="ul clearfix">
						<li>
							<a href="#">客服中心</a>
						</li>
						<li>
							<a href="#">招贤纳士</a>
						</li>
						<li>
							<a href="#">会员中心</a>
						</li>
					</ul>
					<div class="login_area f-l">
						
						<a href="#" class="login_btn">登录</a>
						<a href="#" class="regin_btn">注册</a>
					</div>
				</div>
			</div>
			<!--菜单导航栏-->
			<div class="navWrap">
				<div class="nav clearfix">
					<ul class="homeNav f-l clearfix">
						<li>
							<a href="">首页</a>
						</li>
						<li>
							<a href="">榜单</a>
						</li>
						<li>
							<a href="">下载客户端</a>
						</li>
						<li class="more">
							<a href="">更多</a>
							<div class="bgI f-r"></div>
							<ul class="secondMenu f-l">
								<li>
									<a href="">电台</a>
								</li>
								<li>
									<a href="">MV</a>
								</li>
								<li>
									<a href="">歌单</a>
								</li>
								<li>
									<a href="">歌手</a>
								</li>
							</ul>
						</li>
					</ul>
					<ul class="subNav f-r clearfix">
						<li>
							<div class="menuimg f-l"></div>
							<a href="">音乐直播</a>
						</li>
						<li>
							<div class="menuimg-1 f-l"></div>
							<a href="">酷狗LIVE</a>
						</li>
						<li>
							<div class="menuimg-2 f-l"></div>
							<a href="">音乐人</a>
						</li>
						<li>
							<div class="menuimg-3 f-l"></div>
							<a href="">商城</a>
						</li>
					</ul>
				</div>
			</div>
  			<div class="content">
  				<div class="singerContent clearfix">
  					<div class="album f-l">
  						<div><img src="img/${music.image }" width="262" height="262"></div>
  						<div class="icon">
  							<div class="icon1">
  								<input type="button" value="下载这首歌">
  							</div>
  						</div>
  					</div>
  					<div class="songcontent f-l">
  						<div class="songName">
  							<span>${music.musicName }</span>
  						</div>
  						<div class="songDetail clearfix">
  							<p class="albumName f-l">专辑 :&nbsp;&nbsp;&nbsp;&nbsp;${music.special }</p>
  							<p class="singerName f-l">歌手 :&nbsp;&nbsp;&nbsp;&nbsp;${music.singer }</p>
  						</div>
			   			<div class="songWordContent">
			   				${music.words }<br/>
			   			</div>
			 	 		  
  					</div>
  				</div>
  				<div class="blurBgMask"></div>
  			</div>
  			<div class="audio">
  				<audio src="music/${music.musicPath }" loop="3" autoplay="autoplay" controls="" style="width:100%"></audio>
  			</div>
  		</div>
  </body>
</html>
