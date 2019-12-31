package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QueryDao;

@WebServlet("/ShowLoginHome")
public class ShowLoginHomeServlet extends HttpServlet {
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
		if (queryDao.showNotification(userId)) {
			request.setAttribute("showNotificationStatus", true);
		}
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("login-home.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}