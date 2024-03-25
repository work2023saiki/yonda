//「スッキリわかるサーブレット＆JSP入門」P279のコード10-4を参考
// https://teratail.com/questions/81694  ←メソッドisEmpty()を参考

package model;

import java.util.List;

import dao.LoginDAO;



public class LoginLogic {
  public boolean execute(Account account) {
	  LoginDAO loginDAO = new LoginDAO();
	  List<Account> accountID = loginDAO.findAccount(account);
	  
    if (accountID.isEmpty()) { return false; }   //ログイン失敗のとき
      return true;      //ログイン成功のとき
  }
}