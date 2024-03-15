<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>アカウント新規登録</title>
</head>
<body>
<h1>アカウント新規登録</h1>
<form action="Formservlet" method="post">
ユーザー名：<input type="text" name="name"><br>
パスワード：<input type="password" name="password"><br>
メールアドレス：<input type="text" name="mailAd"><br>
秘密の質問：<br>
3つの内いずれかにチェックを入れ、答えを入力してください。<br>
<input type="radio" name="secret_q" value="0">好きな本のタイトルは？<br>
<input type="radio" name="secret_q" value="1">好きな食べ物は？<br>
<input type="radio" name="secret_q" value="1">母校の名前は？<br>
<input type="text" name="secret_q"><br>
<input type="submit" value="登録">
</form>
</body>
</html>