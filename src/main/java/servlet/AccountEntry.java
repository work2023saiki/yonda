package servlet;

import java.io.IOException;

import beans.AccountBean;
import dao.AccountEntryDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AccountEntry")
public class AccountEntry extends HttpServlet {
  private static final long serialVersionUID = 1L; 

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // リクエストパラメータを取得
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String mailAd = request.getParameter("mailAd");
    String secret_q = request.getParameter("secret_q");
    
    //Accountインスタンスaccountに入力内容を保存
    AccountBean account = new AccountBean(name, password, mailAd, secret_q);
    
    AccountEntryDAO dao = new AccountEntryDAO();
    boolean a = dao.create(account);
	if(a) {
		response.sendRedirect("http://localhost:8080/yonda/accountResult.jsp"); 
	}
	
	else {
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/accountEntry.jsp");
        dispatcher.forward(request, response);
    }
	
  }
}