<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>マイページ</title>
</head>

<body>
  <header>
    <h1>
      <a href="index.jsp">yonda！</a>
    </h1>
    <nav>
      <ul>
        <li><a href="bbs.jsp">掲示板</a></li>
        <li><a href="hontaiNews.jsp">本屋大賞通信</a></li>
      </ul>
    </nav>
  </header>
  
  <main>
    <h2>abcdさん</h2>
    <ul>
      <li><a href="bookShelf.jsp">本棚</a></li>
      <li><a href="profile.jsp">プロフィール</a></li>
    </ul>
    <div>読書状況</div>
        <ul>
          <li>すべて<br>147</li>
          <li>読みたい<br>3</li>
          <li>積読<br>5</li>
        </ul>
        <ul>
          <li>今読んでいる<br>2</li>
          <li>読了<br>105</li>
          <li>感想を書いた<br>32</li>
        </ul>
    <div>友達</div>
      <ul>
          <li>フォロー<br>86</li>
          <li>フォロワー<br>31</li>
          <li>いいねされた感想<br>15</li>
        </ul>
    <div>今週のランキング</div>
  </main>
</body>
</html>
