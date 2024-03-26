//「スッキリわかるサーブレット＆JSP入門」P279のコード10-5を参考

package servlet;

import java.io.IOException;
import java.util.List;

import beans.AccountBean;
import dao.RePassIdDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RePassId")
public class RePassId extends HttpServlet {
  private static final long serialVersionUID = 1L; 

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // 入力した名前、パスワードを取得
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String mailAd = request.getParameter("mailAd");
    String secret_q = request.getParameter("secret_q");
    
    
   
    //LoginDAO.javaでname、passwordを使うため、accountに保存。
    AccountBean account = new AccountBean(name, mailAd, secret_q);
    
    System.out.println(mailAd);
    
    //データベースに接続し、SQL実行。
    RePassIdDAO dao = new RePassIdDAO();
	List<AccountBean> accountID = dao.findAccount(account);
	
	System.out.println(accountID);
	
	// ログイン失敗のとき
	if (accountID.isEmpty()) { 
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/rePassIdFailure.jsp");
        dispatcher.forward(request, response);   //フォワードはjspフォルダ内に置く
	}   
	
    //ログイン成功のとき
    else {
    	response.sendRedirect("http://localhost:8080/yonda/rePass.jsp");    //リダイレクトはWEB-INF直下に置く
    }
	
  }
}