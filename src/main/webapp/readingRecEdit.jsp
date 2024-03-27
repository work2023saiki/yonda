<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>yonda！</title>
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

<h1>読書記録の編集</h1>
<p>タイトル<p>
<p>作者、出版社</p>
<p>読書状況</p>
      <form action="readingrec" method="post">
        <input type="submit" class="btn" value="保存">
      </form>

<a href="readingRec.jsp">読書記録に戻る</a><br>
<a href="bookShelf.jsp">本棚</a><br>
<a href="myPage.jsp">マイページ</a><br>
<a href="logout.jsp">ログアウト</a><br>
</main>
</body>
</html>