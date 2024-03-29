//「スッキリわかるサーブレット＆JSP入門」P279のコード10-5を参考
//パスワード変更のための本人確認


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
import jakarta.servlet.http.HttpSession;

@WebServlet("/RePassId")
public class RePassId extends HttpServlet {
  private static final long serialVersionUID = 1L; 

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // 入力した名前、メールアドレス、秘密の質問を取得
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String mailAd = request.getParameter("mailAd");
    String secret_q = request.getParameter("secret_q");
    
    //入力した情報をaccountインスタンスに保存
    AccountBean account = new AccountBean(name, mailAd, secret_q);
    
    
    //データベースに接続し、該当するアカウントIDを取得。
    RePassIdDAO dao = new RePassIdDAO();
	List<AccountBean> accountID = dao.findAccountID(account);
	
	// アカウントIDが見つからず、取得できなかったとき。
	// 失敗
	if (accountID.isEmpty()) { 
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/rePassIdFailure.jsp");
        dispatcher.forward(request, response); 
	}
	
	//アカウントIDが見つかったとき
    //パスワード再設定画面へ
    else {
    	//セッションスコープに保存
    	HttpSession session = request.getSession();
    	session.setAttribute("accountID111", accountID.get(0));  //accountID.get(0)にあるaccount3インスタンスを保存。
    	
    	//リダイレクト
    	response.sendRedirect("http://localhost:8080/yonda/rePass.jsp");    
    }
	
  }
}