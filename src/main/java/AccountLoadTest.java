

import java.util.List;

import dao.AccountDAO;
import model.Account;

public class AccountLoadTest {
  public static void main(String[] args) {
    // Accountテーブルの全レコードを取得
    AccountDAO empDAO = new AccountDAO();
    List<Account> empList = empDAO.findAll();
    System.out.println(empList.get(0).getPassword());   //11表示される
    
    // 取得したレコードの内容を出力
    for (Account emp : empList) {
      System.out.println("ID:" + emp.getAccountId());
      System.out.println("名前:" + emp.getName());
      System.out.println("秘密の質問:" + emp.getSecret_q() + "\n");
    }
  }
}