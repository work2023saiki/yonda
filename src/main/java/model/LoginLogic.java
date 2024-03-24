//「スッキリわかるサーブレット＆JSP入門」P279のコード10-4を参考
// https://teratail.com/questions/81694  ←メソッドisEmpty()を参考

package model;

import java.util.List;

import dao.AccountDAO;



public class LoginLogic {
  public boolean execute(Account account) {
	  AccountDAO accountDAO = new AccountDAO();
	  List<Account> accountID = accountDAO.findAccount(account);
	  
    if (accountID.isEmpty()) { return false; }   //ログイン失敗のとき
      return true;      //ログイン成功のとき
  }
}