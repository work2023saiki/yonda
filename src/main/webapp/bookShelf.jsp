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
	  
	<h2>本棚</h2>

	<div class="sortSearch-container">
		<div class="sortSearch-btn">並べ替え</div>
		<input type="text" class="search-box" placeholder="キーワードを入力">
		<div class="sortSearch-btn">検索</div>
	</div>

    	
    	<table class="bookshelf-table">
		    <tr>
		        <th>タイトル</th>
		        <th>作者</th>
		        <th>読書状況</th>
		    </tr>
		    <tr>
		        <td><a href="readingRec.jsp">容疑者Xの献身</a></td>
		        <td>東野圭吾</td>
		        <td>感想を書いた</td>
		    </tr>
		    
		    <tr>
		        <td>傲慢と善良</td>
		        <td>辻村深月</td>
		        <td>いま読んでいる</td>
		    </tr>
		    
		    
		    
		    <tr>
		        <td>告白</td>
		        <td>湊かなえ</td>
		        <td>読み終わった</td>
		    </tr>
		    <tr>
		        <td>キャッチャー・イン・ザ・ライ</td>
		        <td>J・D・サリンジャー</td>
		        <td>いま読んでいる</td>
		    </tr>
		    <tr>
		        <td>老人と海</td>
		        <td>アーネスト・ヘミングウェイ</td>
		        <td>積読</td>
		    </tr>
		    <tr>
		        <td>沈黙</td>
		        <td>遠藤周作</td>
		        <td>感想を書いた</td>
		    </tr>
		    <tr>
		        <td>わかったさんのクッキー</td>
		        <td>寺村輝夫</td>
		        <td>読み終わった</td>
		    <tr>
		        <td>星の王子さま</td>
		        <td>アントワーヌ・ド・サン＝テグジュペリ</td>
		        <td>感想を書いた</td>
		    </tr>
		    <tr>
		        <td>戦争は女の顔をしていない</td>
		        <td>スヴェトラーナ・アレクシエーヴィチ</td>
		        <td>読み終わった</td>
		    </tr>
		    <tr>
		        <td>夜明けのすべて</td>
		        <td>瀬尾まいこ</td>
		        <td>読みたい</td>
		    </tr>
		</table>
		
	<a href="readingRecAdd.jsp" class="btn">本を追加</a><br>
	<a href="logout.jsp" class="logout-btn">ログアウト</a>	

</main>
</body>
</html>