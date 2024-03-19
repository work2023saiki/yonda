//「スッキリわかるサーブレット＆JSP入門」P392のコード13-3を参考

package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Account;

public class AccountDAO {
  // データベース接続に使用する情報
  private final String JDBC_URL = "jdbc:mysql://localhost:3306/yonda";
  private final String DB_USER = "root";
  private final String DB_PASS = "adminadmin";

  public List<Account> findAll() {
    List<Account> empList = new ArrayList<Account>();
    //JDBCドライバを読み込む
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        throw new IllegalStateException("JDBCドライバを読み込めませんでした");
    }
    
    // データベースへ接続
    try (Connection conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS)) {

      // SELECT文を準備
      String sql = "SELECT アカウントID, アカウント名, パスワード, メールアドレス, 秘密の質問, プロフィールID  FROM アカウント";
      PreparedStatement pStmt = conn.prepareStatement(sql);

      // SELECTを実行し、結果表を取得
      ResultSet rs = pStmt.executeQuery();

      // 結果表に格納されたレコードの内容を
      // Accountインスタンスに設定し、ArrayListインスタンスに追加
      while (rs.next()) {
        int id = rs.getInt("アカウントID");
        String name = rs.getString("アカウント名");
        String password = rs.getString("パスワード");
        String mailAd = rs.getString("メールアドレス");
        String secret_q = rs.getString("秘密の質問");
        int profileID = rs.getInt("プロフィールID");
        Account account = new Account(id, name, password, mailAd, secret_q, profileID);
        empList.add(account);
      }
      
      
    } catch (SQLException e) {
      e.printStackTrace();
      return null;
    }
    return empList;
  }
}