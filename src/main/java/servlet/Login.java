package servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Account;
import model.LoginLogic;

@WebServlet("/Login")
public class Login extends HttpServlet {
  private static final long serialVersionUID = 1L; 

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // リクエストパラメータを取得
    request.setCharacterEncoding("UTF-8");
    String name2 = request.getParameter("name");
    String password2 = request.getParameter("pass");
    System.out.println(name2);
 // Accountテーブルの全レコードを取得
    //AccountDAO empDAO = new AccountDAO();
    //List<Account> empList = empDAO.findAll();

    
    Account account = new Account(name2, password2);
    account.setName(name2);
    account.setPassword(password2);
    
    
    System.out.println(account.getPassword());
    

    // ログイン処理
    LoginLogic loginLogic = new LoginLogic();
    boolean isLogin = loginLogic.execute(account);
    
    
    
    
    // リクエストパラメータをチェック
    /*String errorMsg = "";
    if (name == null || name.length() == 0) {
      errorMsg += "名前が入力されていません<br>";
    }
    if (password == null || password.length() == 0) {
      errorMsg += "パスワードが選択されていません<br>";
    } 
    */
    if (isLogin) {
      RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/myPage.jsp");
      dispatcher.forward(request, response);
    }
   }
}