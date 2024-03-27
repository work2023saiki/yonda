package servlet;

import java.io.IOException;

import beans.AccountBean;
import dao.RePassDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/RePass")
public class RePass extends HttpServlet {
  private static final long serialVersionUID = 1L; 

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // リクエストパラメータを取得
    request.setCharacterEncoding("UTF-8");
    
    String password = request.getParameter("password");
    String password2 = request.getParameter("password2");
    
    AccountBean account5 = new AccountBean(password);
	
    if(password.equals(password2)){
    	//セッションスコープからアカウントIDが入ったインスタンスを取得。
    	//RePassIdDAOで取得したアカウントIDを、RePassDAOで使用。
    	HttpSession session = request.getSession();
        AccountBean accountID = (AccountBean)session.getAttribute("accountID111");
        
        RePassDAO dao = new RePassDAO();
    	dao.rePass(account5, accountID); 
    	
    	response.sendRedirect("http://localhost:8080/yonda/rePassResult.jsp");
    }
    
    
    else {
      RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/rePassFailure.jsp");
      dispatcher.forward(request, response);
    } 
  }
}