<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>プロフィールの編集</title>
</head>
<body>
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
    	<h3>プロフィールの編集</h3>
	    	<form action="profile" method="post">
	        	<input type="submit" class="btn" value="保存">
	      	</form>

<p>アカウント名1<br>
性別<br>
生年月日<br>
職業<br>
在住都道府県<br>
パーソナルタグ<br>
興味のあるジャンル<br>
好きな作家<br>
お気に入りの本ベスト3</p>


<a href="profile.jsp">プロフィールに戻る</a><br>
<a href="bookShelf.jsp">本棚</a><br>
<a href="myPage.jsp">マイページ</a><br>
<a href="logout.jsp">ログアウト</a><br>
</main>
</body>
</html>