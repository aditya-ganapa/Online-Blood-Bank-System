package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ExperienceDao;
import model.Experience;

@WebServlet("/Experience")
public class ExperienceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String city = request.getParameter("city");
		String hospital = request.getParameter("hospital");
		String feedback = request.getParameter("feedback");
		int userId = Integer.parseInt(request.getParameter("userId"));
		ExperienceDao experienceDao = new ExperienceDao();
		experienceDao.add(new Experience(city, hospital, feedback, userId));
		
		request.setAttribute("userId", userId);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("experience-notification.jsp");
		requestDispatcher.forward(request, response);
	}
}