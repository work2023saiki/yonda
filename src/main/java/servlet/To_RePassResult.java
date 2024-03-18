package servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/To_RePassResult")
public class To_RePassResult extends HttpServlet {
  private static final long serialVersionUID = 1L; 

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // リクエストパラメータを取得
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String password = request.getParameter("password");

    // リクエストパラメータをチェック
    String errorMsg = "";
    if (name == null || name.length() == 0) {
      errorMsg += "名前が入力されていませんよ<br>";
    }
    if (password == null || password.length() == 0) {
      errorMsg += "パスワードが選択されていません<br>";
    } 
    
    
    RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/rePass.jsp");
    dispatcher.forward(request, response);

   }
}