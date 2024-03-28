package servlet;

import java.io.IOException;
import java.util.List;

import beans.ReadingRecBean;
import dao.ReadingRecAddDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ReadingRecAdd")
public class ReadingRecAdd extends HttpServlet {
  private static final long serialVersionUID = 1L; 

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // リクエストパラメータを取得
    request.setCharacterEncoding("UTF-8");
    String title = request.getParameter("title");
    String author = request.getParameter("author");
    String readStatus = request.getParameter("readStatus");
    
    
    ReadingRecBean readingRec = new ReadingRecBean(title, author, readStatus);
    
    ReadingRecAddDAO dao = new ReadingRecAddDAO();
    boolean a = dao.create(readingRec);
	if(a) {
		
		List<ReadingRecBean> readingRecList = dao.findAll();
		System.out.println(readingRecList);
		//セッションスコープに保存
    	HttpSession session = request.getSession();
    	session.setAttribute("readingRecList", readingRecList);
		
		response.sendRedirect("http://localhost:8080/yonda/readingRecAddResult.jsp"); 
	}
	
	else {
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/readingRecAddFailure.jsp");
        dispatcher.forward(request, response);
    }
	
  }
}