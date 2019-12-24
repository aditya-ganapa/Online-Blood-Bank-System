package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		UserDao userDao = new UserDao();
		if (userDao.validateUser(username, password)) {
			if(!userDao.getUserType(username)) {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("ShowDonor");
				requestDispatcher.forward(request, response);
			}
			else {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("ShowRecipient");
				requestDispatcher.forward(request, response);
			}
		}
		else {
			request.setAttribute("errorStatus", true);
			request.setAttribute("errorMessage", "Invalid Credentials.");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("ShowLoginRegistration");
			requestDispatcher.forward(request, response);
		}
	}
}