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
	  	<h3>${account.name}さん</h3>
    	<a href="bookShelf.jsp" class="btn">本棚</a>
    	<a href="profile.jsp" class="btn">プロフィール</a>
	  </div>
	  
    	<h2>プロフィールの編集</h2>

	    	<form action="profile" method="post">


   	<table class="bookshelf-table">
	        <input type="text" name="birthday" class="input-field" placeholder="生年月日">
	        <input type="text" name="gender" class="input-field" placeholder="性別">
	        <input type="text" name="title" class="input-field" placeholder="タイトル">
	        <input type="text" name="author" class="input-field" placeholder="作者">
	        <input type="text" name="title" class="input-field" placeholder="タイトル">
	        <input type="text" name="author" class="input-field" placeholder="作者">
	        <input type="text" name="title" class="input-field" placeholder="タイトル">
	        <input type="text" name="author" class="input-field" placeholder="作者">
	        <input type="text" name="title" class="input-field" placeholder="タイトル">
	        <input type="text" name="author" class="input-field" placeholder="作者">
	        <input type="text" name="author" class="input-field" placeholder="作者">
	        	<input type="submit" class="crt-btn" value="保存">
	      	</form>
		
		<a href="profileEdit.jsp" class="btn">編集</a><br>
		<a href="logout.jsp" class="logout-btn">ログアウト</a>

</main>
</body>
</html>