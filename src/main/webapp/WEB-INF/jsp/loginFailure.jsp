<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>ログイン</title>
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

<h1>yonda！へログイン</h1>
<form action="Login" method="post">
ユーザー名：<input type="text" name="name"><br>
パスワード：<input type="password" name="pass"><br>
<input type="submit" value="ログイン"><br>
<a href="rePassId.jsp">パスワードを忘れた場合はこちら</a><br>
<a href="index.jsp">トップページ</a><br>
</form>
</body>
</html>