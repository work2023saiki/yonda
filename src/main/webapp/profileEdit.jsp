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
		        <input type="text" name="birthday" class="input-field" placeholder="生年月日">
		        <select name="gender" class="input-field" placeholder="性別">
					<option value="無回答">無回答</option>
					<option value="男">男</option>
					<option value="女">女</option>
				</select>
		        <input type="text" name="Profession" class="input-field" placeholder="職業"><br>

	        <button type="submit" class="cert-btn">保存</button>
	      	</form>
		
		<a href="logout.jsp" class="logout-btn">ログアウト</a>

</main>
</body>
</html>