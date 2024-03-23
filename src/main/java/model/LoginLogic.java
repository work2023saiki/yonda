//「スッキリわかるサーブレット＆JSP入門」P279のコード10-4を参考

package model;

import java.util.List;

import dao.AccountDAO;



public class LoginLogic {
	/*public static void main(String[] args) {
	    // Accountテーブルの全レコードを取得
	    AccountDAO empDAO = new AccountDAO();
	    List<Account> empList = empDAO.findAll();
	    //System.out.println(empList.get(0).getPassword());   //11表示される
	    
	    
	}*/
  public boolean execute(Account account) {
	  AccountDAO empDAO = new AccountDAO();
	  List<Account> empList = empDAO.findAll();
	  
	  //System.out.println(account.getPassword());
	  //System.out.println(empList2.get(1).getPassword());
	  
	 
    if ((account.getPassword()).equals(empList.get(0).getPassword()) && (account.getName()).equals(empList.get(0).getName())) { return true; }
      return false;
  }
}