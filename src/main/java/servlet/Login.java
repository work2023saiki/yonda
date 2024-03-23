//「スッキリわかるサーブレット＆JSP入門」P279のコード10-5を参考

package servlet;

import java.io.IOException;
import java.util.List;

import dao.AccountDAO;
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
    //String errorMsg = "";
    
  //Accountテーブルの全レコードを取得
    AccountDAO empDAO = new AccountDAO();
    List<Account> empList = empDAO.findAll();

    
    Account account = new Account(name2, password2);
    
    //System.out.println(name2);
    //System.out.println(account.getPassword());
    System.out.println(empList.get(0));

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
      //RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/myPage.jsp");
      //dispatcher.forward(request, response);       // URLがMyPageにならない、jspフォルダ内に置く
    	
    	response.sendRedirect("http://localhost:8080/yonda/myPage.jsp");    //WEB-INF直下に置く
    
    }
    else {
    	RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/login.jsp");
        dispatcher.forward(request, response);
    	
        /*if (name2 == null || name2.length() == 0) {
          errorMsg += "名前が入力されていません<br>";
        }
        if (password2 == null || password2.length() == 0) {
          errorMsg += "パスワードが選択されていません<br>";
        }//RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/myPage.jsp");
        //dispatcher.forward(request, response);
         * 
         */
      }
   }
}