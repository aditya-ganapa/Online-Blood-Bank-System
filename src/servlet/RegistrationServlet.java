package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DuplicateAccountException;
import dao.UserDao;
import model.User;

@WebServlet("/Registration")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		long contactNumber = Long.parseLong(request.getParameter("contactNumber"));
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		int weight = Integer.parseInt(request.getParameter("weight"));
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		int pinCode = Integer.parseInt(request.getParameter("pinCode"));
		String bloodGroup = request.getParameter("bloodGroup");
		boolean userType = request.getParameter("userType").equals("Recepient");
		User user = new User(firstName, lastName, age, gender, contactNumber, email, password, weight, state, city, pinCode, bloodGroup, userType);
		UserDao userDao = new UserDao();
		boolean userExists = false;
		try {
			userDao.addUser(user);
		} catch (DuplicateAccountException e) {
			request.setAttribute("userExistsStatus", true);
			request.setAttribute("userExistsMessage", "Account already exists with given contact number or email.");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("ShowLoginRegistration");
			requestDispatcher.forward(request, response);
			userExists = true;
		}
		if (!userExists) {
			if(!userType) {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("ShowDonor");
				requestDispatcher.forward(request, response);
			}
			else {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("ShowRecipient");
				requestDispatcher.forward(request, response);
			}
		}
	}
}