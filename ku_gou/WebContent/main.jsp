<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="css/Initial.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<title>酷狗音乐 - 就是歌多</title>
	</head>

	<body>
		<!--容器层-->
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
			<!--广告导航栏-->
			<div class="sliderWrap">
				<div class="sliderWrap-ad">
					<div class="sliderWrap-ad-nav">
						<div class="sliderWrap-download clearfix">
							<div class="f-l">
								<div class="pc"></div>
								<a href="#">下载PC版</a>
								<span class="line"></span>
							</div>
							<div class="f-l">
								<div class="iphone"></div>
								<a href="#">下载iPhone版</a>
								<span class="line"></span>
							</div>
							<div class="f-l">
								<div class="android"></div>
								<a href="#">下载Android版</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--中部歌单榜单-->
			<div class="content clearfix">
				<!--歌单第一部分-->
				<div class="subContent">
					<!--精选歌单 -->
					<div class="selectsongList">
						<!-- 歌单菜单 -->
						<div class="itemtitle clearfix">
							<div><span>精选</span>歌单</div>
							<div>更多</div>
						</div>
						<!-- 歌单主体部分 -->
						<div class="itemcontent clearfix">
							<c:forEach items="${list}" var="allbum" varStatus="status">
								<div  onclick="showAllbum(${allbum.albumId})"class="itemcontent-${status.index+1 } clearfix" style="background-image: url(img/${allbum.image })">
									<div>
										<span class="sp">${allbum.clickCount/10000 }万</span>
									</div>
									<div class="pl">
										<p>${allbum.albumName }</p>
										<p>${allbum.createUser }</p>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
					<!--精选歌单结尾 -->
					<!--热门榜单-->
					<div class="hotsongList">
						<div class="itemtitle clearfix">
							<div><span>热门</span>榜单</div>
							<div>更多</div>
						</div>
						<!-- 热门榜单主体 -->
						<div class="hotsongList-body">
							<div class="hotsongList-1 clearfix">
								<div class="f-l">
									<div class="picmu">
										<div class="btn-3"></div>
									</div>
								</div>
								<div class="f-l">
									<div class="third">
										<dl>
											<dt>酷狗飙升榜</dt>
											<dd>1 . Alan Walker、火箭少...</dd>
											<dd>2 . 雨一直下、张宇</dd>
										</dl>
									</div>
								</div>
							</div>
							<div class="hotsongList-2 clearfix">
								<div class="f-l">
									<div class="picmu">
										<div class="btn-3"></div>
									</div>
								</div>
								<div class="f-l">
									<div class="third">
										<dl>
											<dt>酷狗TOP500</dt>
											<dd>1 . 光年之外、邓紫棋</dd>
											<dd>2 . 珊瑚海、周杰伦</dd>
										</dl>
									</div>
								</div>
							</div>
							<div class="hotsongList-3 clearfix">
								<div class="f-l">
									<div class="picmu">
										<div class="btn-3"></div>
									</div>
								</div>
								<div class="f-l">
									<div class="third">
										<dl>
											<dt>网络红歌榜</dt>
											<dd>1 . 刘珂矣-风筝误</dd>
											<dd>2 . 金南玲-逆流成河【我...</dd>
										</dl>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--歌单第二部分-->
				<div>
					<div style="margin-top: 30px;">
						<a href=""><img src="img/882bc0a31220c311370028c1fe5b49c6.jpg"/></a>
					</div>
				</div>
				<div class="subContent">
					<!--新歌首发-->
					<div class="newsongList f-l">
						<div class="itemtitle-1 clearfix">
							<h3 class="f-l"><span>新歌</span>首发</h3>
							<div class="tabT f-l">
								<span>华语</span>
								<span>欧美</span>
								<span>韩国</span>
								<span>日本</span>
							</div>
							<button class="playAll f-r clearfix">
								<div class="icon-play f-l"></div>
								<p class="f-r">全部播放</p>
							</button>
						</div>
						<div class="itemContent">
							<div class="tabC">
								<ul class="tabCN">
									<li>
										<a href="" class="clearfix">
											<div class="songName">汪苏泷 - 不负【火王之破晓之战电视剧插曲】</div>
											<div class="songtips"></div>	
											<div class="f-r">02:48</div>
											<div class="icon-play2 f-r"></div>
											<div class="icon-play1 f-r"></div>
										</a>
									</li>
									<li>
										<a href="" class="clearfix">
											<div class="songName">张碧晨 - 漂流【惊涛飓浪电影中国区推广曲】</div>
											<div class="songtips"></div>
											<div class="f-r">04:25</div>
											<div class="icon-play2 f-r"></div>
											<div class="icon-play1 f-r"></div>
										</a>
									</li>
									<li>
										<a href="" class="clearfix">
											<div class="songName">王凯 - 大江大河【大江大河电视剧推广曲】</div>
											<div class="songtips"></div>
											<div class="f-r">02:48</div>
											<div class="icon-play2 f-r"></div>
											<div class="icon-play1 f-r"></div>
										</a>
									</li>
									<li>
										<a href="" class="clearfix">
											<div class="songName">Dalton Harris - The Power of Love</div>
											<div class="songtips"></div>
											<div class="f-r">03:13</div>
											<div class="icon-play2 f-r"></div>
											<div class="icon-play1 f-r"></div>
										</a>	
									</li>
									<li>
										<a href="" class="clearfix">
											<div class="songName">Clean Bandit、Ellie Goulding - Mama</div>
											<div class="songtips"></div>
											<div class="f-r">03:09</div>
											<div class="icon-play2 f-r"></div>
											<div class="icon-play1 f-r"></div>
										</a>
									</li>
									<li>
										<a href="" class="clearfix">
											<div class="songName">Los Unidades、Pharrell Williams - E-Lo</div>
											<div class="songtips"></div>
											<div class="f-r">03:34</div>
											<div class="icon-play2 f-r"></div>
											<div class="icon-play1 f-r"></div>
										</a>
									</li>
									<li>
										<a href="" class="clearfix">
											<div class="songName">THE SxPLAY(菅原纱由理) - Anzen Na Kusuri</div>
											<div class="songtips"></div>
											<div class="f-r">03:14</div>
											<div class="icon-play2 f-r"></div>
											<div class="icon-play1 f-r"></div>
										</a>
									</li>
									<li>
										<a href="" class="clearfix">
											<div class="songName">林俊杰、G.E.M.邓紫棋 - 手心的蔷薇" </div>
											<div class="songtips"></div>
											<div class="f-r">04:40</div>
											<div class="icon-play2 f-r"></div>
											<div class="icon-play1 f-r"></div>
										</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="pages">
							<div class="page f-r">
								<span>1</span> /
								<span>3</span>
							</div>
						</div>
					</div>
					<!--推荐MV-->
					<div class="albumList f-l clearfix">
						<div class="itemtitle-2">
							<h3 class="f-l"><span>推荐</span>MV</h3>
							<div class="f-r">更多</div>
						</div>
						<div class="clearfix">
							<div class="cpt">
								<div class="cpt-n1">
									<div class="btn-1">
									</div>
									<div class="cpt-n2">
										<p>未说完的秘密【你好，旧时光】</p>
										<p>孙子涵</p>
									</div>
								</div>
							</div>
							<div class="cpt-1 f-l">
								<div class="cptA">
									<div class="cptA-n">
										<div class="btn-2"></div>
									</div>
								</div>
								<div class="cptB">
									<p>城市之光</p>
									<p>李健</p>
								</div>
							</div>
							<div class="cpt-2 f-l">
								<div class="cptC">
									<div class="cptC-n">
										<div class="btn-2"></div>
									</div>
								</div>
								<div class="cptD">
									<p>三人戏</p>
									<p>阿悄</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div>
					<div style="margin-top: 40px;">
						<a href=""><img src="img/882bc0a31220c311370028c1fe5b49c6.jpg"/></a>
					</div>
				</div>
				<!--歌单第三部分-->
				<div class="subContent-1 clearfix">
					<!--热门电台-->
					<div class="hotradio f-l clearfix">
						<div class="itemtitle-3 clearfix f-l">
							<h3 class="f-l"><span>热门</span>电台</h3>
							<div class="f-r">
								<a href="">更多</a>
							</div>
						</div>
						<div class="itemContents f-l">
							<ul class="menulist clearfix">
								<li>
									<a>
										<div class="cover same">
											<div class="piccover">
												<div class="btn"></div>
											</div>
										</div>
										<div class="radiokind">
											<p>KTV必点曲目</p>
										</div>
									</a>
								</li>
								<li>
									<a>
										<div class="cover-1 same">
											<div class="piccover">
												<div class="btn"></div>
											</div>
										</div>
										<div class="radiokind">
											<p>中文DJ</p>
										</div>
									</a>
								</li>
								<li>
									<a>
										<div class="cover-2 same">
											<div class="piccover">
												<div class="btn"></div>
											</div>
										</div>
										<div class="radiokind">
											<p>酷狗热歌</p>
										</div>
									</a>
								</li>
								<li>
									<a>
										<div class="cover-3 same">
											<div class="piccover">
												<div class="btn"></div>
											</div>
										</div>
										<div class="radiokind">
											<p>网络红歌</p>
										</div>
									</a>
								</li>
								<li>
									<a>
										<div class="cover-4 same">
											<div class="piccover">
												<div class="btn"></div>
											</div>
										</div>
										<div class="radiokind">
											<p>经典</p>
										</div>
									</a>
								</li>
								<li>
									<a>
										<div class="cover-5 same">
											<div class="piccover">
												<div class="btn"></div>
											</div>
										</div>
										<div class="radiokind">
											<p>老情歌</p>
										</div>
									</a>
								</li>
								<li>
									<a>
										<div class="cover-6 same">
											<div class="piccover">
												<div class="btn"></div>
											</div>
										</div>
										<div class="radiokind">
											<p>新歌</p>
										</div>
									</a>
								</li>
								<li>
									<a>
										<div class="cover-7 same">
											<div class="piccover">
												<div class="btn"></div>
											</div>
										</div>
										<div class="radiokind">
											<p>动漫</p>
										</div>
									</a>
								</li>
								<li>
									<a>
										<div class="cover-8 same">
											<div class="piccover">
												<div class="btn"></div>
											</div>
										</div>
										<div class="radiokind">
											<p>轻音乐</p>
										</div>
									</a>
								</li>
								<li>
									<a>
										<div class="cover-9 same">
											<div class="piccover">
												<div class="btn"></div>
											</div>
										</div>
										<div class="radiokind">
											<p>最爱成名曲</p>
										</div>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<!--热门歌手-->
					<div class="hotsinger f-r clearfix">
						<div class="itemtitle-4 clearfix f-l">
							<h3 class="f-l"><span>热门</span>歌手</h3>
							<div class="list f-l">
								<span>华语</span>
								<span>欧美</span>
								<span>日韩</span>
							</div>
							<div class="f-r list-1">
								<a href="">更多</a>
							</div>
						</div>
						<div class="itemContent-2">
							<ul class="clearfix">
								<li>
									<div class="fg">
										<div><span>薛之谦</span></div>
									</div>
								</li>
								<li>
									<div class="fg">
										<div><span>张碧晨</span></div>
									</div>
								</li>
								<li>
									<div class="fg-l">
										<div><span>张杰</span></div>
									</div>
								</li>
								<li>
									<div class="fg-l">
										<div>
											<span>毛不易</span>
										</div>	
									</div>
								</li>
								<li>
									<div class="fg-l">
										<div><span>周杰伦</span></div>
									</div>
								</li>
							</ul>
						</div>
						<div class="circle"></div>
					</div>
				</div>
				<div>
					<div style="margin-top: 20px;">
						<a href=""><img src="img/882bc0a31220c311370028c1fe5b49c6.jpg"/></a>
					</div>
				</div>
				<!--音乐合作伙伴-->
				<div class="partner clearfix">
					<div class="itemtitle-5">
						<h3><span>合作</span>伙伴</h3>
					</div>
					<div class="itemContent-3">
						<a href="">
							<img src="img/partner1.jpg" />
						</a>
						<a href="">
							<img src="img/partner2.jpg" />
						</a>
						<a href="">
							<img src="img/partner3.jpg" />
						</a>
						<a href="">
							<img src="img/partner4.jpg" />
						</a>
						<a href="">
							<img src="img/partner5.jpg" />
						</a>
						<a href="">
							<img src="img/partner6.jpg" />
						</a>
						<a href="">
							<img src="img/partner7.jpg" />
						</a>
						<a href="">
							<img src="img/partner8.jpg" />
						</a>
						<a href="">
							<img src="img/partner9.jpg" />
						</a>
						<a href="">
							<img src="img/partner10.jpg" />
						</a>
						<a href="">
							<img src="img/partner11.jpg" />
						</a>
						<a href="">
							<img src="img/partner12.jpg" />
						</a>
						<a href="">
							<img src="img/partner13.jpg" />
						</a>
						<a href="">
							<img src="img/partner14.jpg" />
						</a>
						<a href="">
							<img src="img/partner15.jpg" />
						</a>
						<a href="">
							<img src="img/partner16.jpg" />
						</a>
						<a href="">
							<img src="img/partner17.jpg" />
						</a>
						<a href="">
							<img src="img/partner18.jpg" />
						</a>
						<a href="">
							<img src="img/partner19.jpg" />
						</a>
						<a href="">
							<img src="img/partner20.jpg" />
						</a>
						<a href="">
							<img src="img/partner21.jpg" />
						</a>
					</div>
				</div>
				<!--友情链接-->
				<div class="friendLink clearfix">
					<div class="itemtitle-6">
						<h3>
							<span>友情</span>链接
							<div class="f-r">
								<a>更多</a>
							</div>
						</h3>
					</div>
					<div class="itemContent-4">
						<a href="">爱美网</a>
						<a href="">央视网综艺频道</a>
						<a href="">汽车论坛</a>
						<a href="">IT之家</a>
						<a href="">iPhone游戏</a>
						<a href="">旅游攻略</a>
						<a href="">悦声无限</a>
						<a href="">华为商城</a>
						<a href="">365音乐网</a>
						<a href="">软件下载</a>
						<a href="">漫漫看漫画</a>
						<a href="">手机游戏</a>
						<a href="">5sing原创音乐</a>
						<a href="">腾讯音乐人</a>
						<a href="">豌豆荚</a>
					</div>
				</div>
			</div>
			<!--页脚-->
			<div class="footWrapper">
				<div class="footer">
					<div class="link">
						<a href="">关于酷狗</a>| 
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
		</div>
	</body>
	
	<!--播放图片-->
	<script type="text/javascript">
		//获取作用了sliderWrap-ad类样式的标签对象
		var sa = document.querySelector(".sliderWrap-ad");
		//图片索引
		var index = 1;
		//轮播图片函数
		function playImage() {
			sa.style.backgroundImage = "url(img/" + index + ".jpg)";
			sa.style.transition = ".5s";
			//递增图片索引
			index++;
			//如果图片索引超出了最大范围
			if(index > 4) {
				//图片回到第一张
				index = 1;
			}
			//开启定时器
			//第一个参数表示要执行的函数名
			//第二个参数表示间隔的毫秒值
			window.setTimeout("playImage()", 2000);
		}
		playImage();
		function showAllbum(albumId){
			location.href="searchAllbum?albumId="+albumId;
		}
	</script>
</html>
