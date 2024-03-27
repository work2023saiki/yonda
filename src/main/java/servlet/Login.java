//「スッキリわかるサーブレット＆JSP入門」P279のコード10-5を参考

package servlet;

import java.io.IOException;
import java.util.List;

import beans.AccountBean;
import dao.LoginDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
  private static final long serialVersionUID = 1L; 

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // 入力した名前、パスワードを取得
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    
    //LoginDAO.javaでname、passwordを使うため、accountに保存。
    AccountBean account = new AccountBean(name, password);
    
    //データベースに接続し、SQL実行。
    LoginDAO dao = new LoginDAO();
	List<AccountBean> accountID = dao.findAccount(account);
	
	// ログイン失敗のとき
	if (accountID.isEmpty()) { 
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/loginFailure.jsp");
        dispatcher.forward(request, response);   //フォワードはjspフォルダ内に置く
	}   
	
    //ログイン成功のとき
    else {
    	//セッションスコープに保存
    	HttpSession session = request.getSession();
    	session.setAttribute("account", account);
    	
    	response.sendRedirect("http://localhost:8080/yonda/myPage.jsp");    //リダイレクトはWEB-INF直下に置く
    }
	
  }
}