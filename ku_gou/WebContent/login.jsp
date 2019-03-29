<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>My JSP 'login.jsp' starting page</title>
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
    <form action="login" method="post">
    	<!-- 表单中的数据要提交给服务器处理必须要添加name属性 -->
    	<input type="text" placeholder="userName" name="userName"><br/>
    	<input type="password" placeholder="password" name="pwd"><br/>
    	<input type="submit" value="Login">
    </form>
    	<!--使用El表达式读取传递的数据-->
    <div style="color: yellow">${error }</div>
    <hr/>
    <div class="button button-active" style="width:60px; cursor: pointer;" onclick="press()">Login</div>
  	<a href="login?userName=Joker&pwd=321">Login</a>
  </body>
</html>
<script>
	function press(){
		//使用脚本跳转页面,通过url后缀?key=value传递数据
		location.href="login?userName=tony&pwd=tony123";
	}
</script>