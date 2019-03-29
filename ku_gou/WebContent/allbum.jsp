<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 导入格式化标签库 -->
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!-- 导入核心标签库 -->
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<html>
  <head>
    <title>歌单</title>
	<meta charset="utf-8" />
	<link rel="stylesheet"  type="text/css"  href="css/allbum.css"/>
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
		<div class="wrap clearfix">
			<div class="mbx">
				我的位置 &gt; 
				<a href="https://www.kugou.com/">首页</a> &gt; 
				<a href="https://www.kugou.com/yy/html/special.html">精选辑</a> &gt; 
				<span>我能喝下最烈的酒，却忘不掉最爱的人</span>
			</div>
			<div class="l">
				<!-- 歌单信息 -->
		    	<div class="pic">
		    		 <img src="img/${allbum.image }" width="160" height="160"><br/>
		    	</div>
		    	<div class="detail">
		    		<p>名称 : ${allbum.albumName }</p>
		    		<p> 创建人 : ${allbum.createUser }</p>
		    		<p>更新时间 : <fmt:formatDate value="${allbum.modifyTime }" pattern="yyyy-MM-dd"/></p>
		    	</div>
		    	<div class="intro">
		    		<p>简介 : ${allbum.summary }</p>
		    	</div>
			</div>
			<div class="r">
				<div class="songs">
					<p>&lt;${allbum.albumName }&gt; - 歌曲列表</p>
					<div class="dq">
						<input type="checkbox" checked="checked"> 全选
					</div>
					<div class="dl">		
			    		<c:forEach items="${musicList}" var="music">
				    		<div class="music1">
					    		<input type="checkbox" checked="checked">
					    		<a href="play?musicId=${music.musicId }">${music.singer }-${music.musicName }</a>
				    		</div>
				    		<div class="tab"></div>
			    		</c:forEach>
					</div>
				</div>
			</div>
		</div>
		<div class="footWrapper">
				<div class="footer">
					<div class="link">
						<a href="">关于酷狗&nbsp;&nbsp;</a>| 
						<a href="">&nbsp;&nbsp;监督举报</a>|
						<a href="">&nbsp;&nbsp;广告服务</a>|
						<a href="">&nbsp;&nbsp;版权指引</a>|
						<a href="">&nbsp;&nbsp;隐私政策</a>|
						<a href="">&nbsp;&nbsp;用户服务协议</a>|
						<a href="">&nbsp;&nbsp;推广合作</a>|
						<a href="">&nbsp;&nbsp;酷狗音乐人</a>|
						<a href="">&nbsp;&nbsp;酷狗音乐推</a>|
						<a href="">&nbsp;&nbsp;招聘信息</a>|
						<a href="">&nbsp;&nbsp;客服中心</a>|
						<a href="">&nbsp;&nbsp;用户体验提升计划</a>
					</div>
				</div>
				<div class="copyright clearfix">
						<p>我们致力于推动网络正版音乐发展，相关版权合作请联系copyrights@kugou.com</p>
						<p>信息网络传播视听节目许可证 1910564 增值电信业务经营许可证粤B2-20060339 &nbsp;&nbsp;&nbsp;<a href=""class="footericon">粤ICP备09017694号-2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
						</p>
						<p>广播电视节目制作经营许可证（粤）字第01270号&nbsp;&nbsp;&nbsp;&nbsp;营业性演出许可证穗天演440106026</p>
						<p>穗公网监备案证第44010650010167&nbsp;&nbsp;&nbsp;&nbsp;互联网药品信息服务资格证编号（粤）-非经营性-2012-0018&nbsp;&nbsp;&nbsp;<a href="">粤公网安备 44010602000141号</a>
						</p>
						<p>不良信息举报邮箱：jubao_music@kugou.net&nbsp;&nbsp;&nbsp;&nbsp;客服邮箱：kefu@kugou.net</p>
						<p>Copyright&nbsp;&nbsp;©&nbsp;&nbsp;2004-2018 KuGou-Inc.All Rights Reserved
							<a class="office-v"></a>
                        </p>
				</div>
		</div>
	</div>	 
  </body>
</html>