//「スッキリわかるサーブレット＆JSP入門」P391のコード13-2を参考

package model;

public class Account {
  private int accountID;
  private String name;
  private String password;
  private String mailAd;
  private String secret_q;
  private int profileID;

  public Account(int accountID, String name, String password, String mailAd, String secret_q, int profileID) {
    this.accountID = accountID;
    this.name = name;
    this.password = password;
    this.mailAd = mailAd;
    this.secret_q = secret_q;
    this.profileID = profileID;
    
  }
  
  //ログイン用
  public Account(String name, String password) {
	    this.name = name;
	    this.password = password;
	    
	  }
  //ログイン用
  public Account(int accountID) {
	    this.accountID = accountID;
	  }
  
  
  public int getAccountId() { return accountID; }
  public String getName() { return name; }  
  public String getPassword() { return password; }
  public String getMailAd() { return mailAd; }
  public String getSecret_q() { return secret_q; }
  public int getAge() { return profileID; }
}