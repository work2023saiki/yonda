<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>パスワード再設定</title>
</head>
<body>
<header>
	<div class="header-logo">yonda！</div>
	<div class="header-list">
		<ul>
		<li><a href="bbs.jsp">掲示板</a></li>
		<li><a href="hontaiNews.jsp">本屋大賞通信</a></li>
		</ul>
	</div>
</header>

<h1>パスワード再設定</h1>
<form action="Formservlet" method="post">
パスワード：<input type="password" name="password"><br>
<input type="submit" value="設定">
</form>
</body>
</html>