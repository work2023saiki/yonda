<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>本棚</title>
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

<h1>本棚</h1>
<form action="???" method="post">　<%-- getか？ --%>
<input type="text" name="serch">
<input type="submit" value="検索"><br>
<p>読書記録の一覧<br>
<p>タイトル1　作者1<br>
<p>タイトル2　作者2<br>
<p>タイトル3　作者3<br>
<p>タイトル4　作者4</p>
<a href="profile.jsp">プロフィール</a><br>
<a href="myPage.jsp">マイページ</a><br>
<a href="logout.jsp">ログアウト</a><br>
</body>
</html>