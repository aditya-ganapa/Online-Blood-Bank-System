package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QueryDao;
import model.Query;

@WebServlet("/Query")
public class QueryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String query = request.getParameter("query");
		QueryDao queryDao = new QueryDao();
		queryDao.add(new Query(query));
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("query-notification.jsp");
		requestDispatcher.forward(request, response);
	}
}