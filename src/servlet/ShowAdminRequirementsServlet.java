package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EmptyRequirementsException;
import dao.RequirementDao;
import model.RequirementAdmin;

@WebServlet("/ShowAdminRequirements")
public class ShowAdminRequirementsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequirementDao requirementDao = new RequirementDao();
		ArrayList<RequirementAdmin> requirements = new ArrayList<>();
		
		if(request.getParameter("requirementId") != null) {
			int requirementId = Integer.parseInt(request.getParameter("requirementId"));
			requirementDao.delete(requirementId);
			request.setAttribute("requirementRemovedStatus", true);
		}
		
		boolean emptyRequirements = false;
		try {
			requirements = requirementDao.getAllRequirementsAdmin();
		} catch (EmptyRequirementsException e) {
			emptyRequirements = true;
			request.setAttribute("noRequirementsStatus", true);
		}
		if (!emptyRequirements) {
			request.setAttribute("requirementsStatus", true);
			request.setAttribute("requirements", requirements);
		}
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("admin-update-requirements.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}