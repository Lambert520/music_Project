<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    首页歌单<br>
    <!-- 遍历集合数据需要使用JSTL核心标签库来访问读取 -->
    <!-- forEach标签用于遍历集合
    	items表示被遍历的集合对象（必须使用EL表达式获取）
    	var表示遍历的每个元素的名称 -->
    <c:forEach items="${list}" var="album">
    	歌单名：${album.albumName}<br/>
    	封面图片:<a href="searchAllbum?albumId=${album.albumId}"><img src="img/${album.image}" width="100" height="100"/></a> <br/>
  		创建人:${album.createUser}<br/>
  		播放量:${album.clickCount}
  	<hr/>
    </c:forEach>
  </body>
</html>
