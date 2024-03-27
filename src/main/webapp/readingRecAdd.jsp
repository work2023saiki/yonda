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
        <h2>読書記録を追加</h2>
      	<form action="readingRecAdd" method="post">
	        <input type="text" name="title" class="input-field" placeholder="タイトル">
	        <input type="text" name="author" class="input-field" placeholder="作者">
	        <select name="readStatus" class="input-field" placeholder="読書状況">
				<option value="サンプル1">未登録</option>
				<option value="サンプル2">読みたい</option>
				<option value="サンプル3">積読</option>
				<option value="サンプル1">いま読んでいる</option>
				<option value="サンプル2">読み終わった</option>
				<option value="サンプル3">感想を書いた</option>
			</select><br>
	        <button type="submit" class="cert-btn">OK</button>
	     </form>
  </main>
</body>
</html>