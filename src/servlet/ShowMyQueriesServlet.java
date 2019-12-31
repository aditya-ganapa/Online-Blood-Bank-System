package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmptyQueriesException;
import dao.QueryDao;
import model.QueryGetUser;

@WebServlet("/ShowMyQueries")
public class ShowMyQueriesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userId;
		if (request.getParameter("userId") == null) {
			userId = (int) request.getAttribute("userId");
			request.setAttribute("userId", userId);
		}
		else {
			userId = Integer.parseInt(request.getParameter("userId"));
			request.setAttribute("userId", userId);
		}
		
		QueryDao queryDao = new QueryDao();
		ArrayList<QueryGetUser> queries = new ArrayList<>();
		boolean empty = false;
		try {
			queries = queryDao.getAllQueriesUser(userId);
		} catch (EmptyQueriesException e) {
			request.setAttribute("noQueriesStatus", true);
			empty = true;
		}
		if (!empty) {
			request.setAttribute("queriesExistStatus", true);
			request.setAttribute("queries", queries);
		}
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("my-queries.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}