package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ShowTipsOnDonating")
public class ShowTipsOnDonatingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (request.getParameter("userId") == null) {
			request.setAttribute("notSignedInStatus", true);
		}
		else {
			request.setAttribute("signedInStatus", true);
			request.setAttribute("userId", request.getParameter("userId"));
		}
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("tips-on-donating.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}