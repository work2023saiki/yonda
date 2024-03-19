<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>アカウント新規登録</title>
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

<h1>アカウント新規登録</h1>
<form action="AccountEntry" method="post">
ユーザー名：<input type="text" name="name"><br>
パスワード：<input type="password" name="password"><br>
メールアドレス：<input type="text" name="mailAd"><br>
秘密の質問：<br>
自分で初めて買った本は？<br>
<input type="text" name="secret_q"><br>
<input type="submit" value="登録">
</form>
</body>
</html>