package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmptyExperiencesException;
import dao.EmptyRequirementsException;
import dao.ExperienceDao;
import dao.RequirementDao;
import model.ExperienceHome;
import model.RequirementHome;

@WebServlet("/ShowHome")
public class ShowHomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequirementDao requirementDao = new RequirementDao();
		ArrayList<RequirementHome> requirements = new ArrayList<>();
		boolean emptyRequirements = false;
		try {
			requirements = requirementDao.getAllRequirements();
		} catch (EmptyRequirementsException e) {
			emptyRequirements = true;
		}
		if (!emptyRequirements) {
			request.setAttribute("requirementsStatus", true);
			request.setAttribute("requirements", requirements);
		}
		
		ExperienceDao experienceDao = new ExperienceDao();
		ArrayList<ExperienceHome> experiences = new ArrayList<>();
		boolean emptyExperiences = false;
		try {
			experiences = experienceDao.getAllExperiences();
		} catch (EmptyExperiencesException e) {
			emptyExperiences = true;
		}
		if (!emptyExperiences) {
			request.setAttribute("experiencesStatus", true);
			request.setAttribute("experiences", experiences);
		}
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("home.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}