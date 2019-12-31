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
import model.QueryGetAdmin;

@WebServlet("/ShowAdminQueries")
public class ShowAdminQueriesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QueryDao queryDao = new QueryDao();
		ArrayList<QueryGetAdmin> queries = new ArrayList<>();
		boolean empty = false;
		try {
			queries = queryDao.getAllQueriesAdmin();
		} catch (EmptyQueriesException e) {
			empty = true;
			request.setAttribute("noQueriesStatus", true);
		}
		if(!empty) {
			request.setAttribute("queries", queries);
			request.setAttribute("queriesStatus", true);
		}
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("admin-queries.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}