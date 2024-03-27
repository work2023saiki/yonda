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
  
	  <div class="top-container">
	  	<a href="myPage.jsp"><img src="./img/myicon.png" alt="マイページ"></a>
    	<a href="bookShelf.jsp" class="btn">本棚</a>
    	
	  </div>
    	<h3>プロフィール</h3>
		<a href="profileEdit.jsp" class="btn">編集</a>
    	<table class="bookshelf-table">
		    <tr>
		        <th>生年月日</th>
		        <td>1990/1/1</td>
		    </tr>
		    <tr>
		        <th>性別</th>
		        <td>男</td>
		    </tr>
		    <tr>
		        <th>職業</th>
		        <td>会社員</td>
		    </tr>
		    <tr>
		        <th>在住都道府県</th>
		        <td>熊本県</td>
		    </tr>
		    <tr>
		        <th>パーソナルタグ</th>
		        <td></td>
		    </tr>
		    <tr>
		        <th>興味のあるジャンル</th>
		        <td>ミステリー/海外/古典</td>
		    </tr>
		    <tr>
		        <th>タイトル</th>
		        <td>作者</td>
		    </tr>
		    <tr>
		        <th>タイトル</th>
		        <td>作者</td>
		    </tr>
		</table>

</main>

<h1>プロフィール</h1>
<p>アカウント名1<br>
性別<br>
生年月日<br>
職業<br>
在住都道府県<br>
パーソナルタグ<br>
興味のあるジャンル<br>
好きな作家<br>
お気に入りの本ベスト3</p>
<input type="submit" value="編集"><br>
<a href="bookShelf.jsp">本棚</a><br>
<a href="myPage.jsp">マイページ</a><br>
<a href="logout.jsp">ログアウト</a><br>
</body>
</html>