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
	  	<h3>${account.name}さん</h3>
    	<a href="bookShelf.jsp" class="btn">本棚</a>
    	<a href="profile.jsp" class="btn">プロフィール</a>
	  </div>
    
    <div class="center-container">
      <p>本の追加完了</P>
      <a href="bookShelf.jsp" class="btn">本棚</a>
    </div>
  </main>
</body>
</html>