package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PostRequirementDao;
import model.PostRequirement;

@WebServlet("/PostRequirement")
public class PostRequirementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		int pinCode = Integer.parseInt(request.getParameter("pinCode"));
		String bloodGroup = request.getParameter("bloodGroup");
		long contactNumber = Long.parseLong(request.getParameter("contactNumber"));
		PostRequirementDao postRequirementDao = new PostRequirementDao();
		postRequirementDao.post(new PostRequirement(state, city, pinCode, bloodGroup, contactNumber));
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("post-notification.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}