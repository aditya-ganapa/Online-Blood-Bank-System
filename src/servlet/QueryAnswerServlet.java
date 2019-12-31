package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QueryDao;
import model.QueryAnswer;

@WebServlet("/QueryAnswer")
public class QueryAnswerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int queryId = Integer.parseInt(request.getParameter("queryId"));
		String queryAnswer = request.getParameter("queryAnswer");
		QueryDao queryDao = new QueryDao();
		queryDao.answer(new QueryAnswer(queryId, queryAnswer));
		
		request.setAttribute("userId", request.getParameter("userId"));
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("query-answer-notification.jsp");
		requestDispatcher.forward(request, response);
	}
}