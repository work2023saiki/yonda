<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>パスワード再設定</title>
</head>
<body>
<h1>パスワード再設定のための本人確認</h1>
<form action="Formservlet" method="post">
ユーザー名：<input type="text" name="name"><br>
メールアドレス：<input type="text" name="mailAd"><br>
秘密の質問：<br>
自分で初めて買った本は？<br>
<input type="text" name="secret_q"><br>
<input type="submit" value="確認">
</form>
</body>
</html>