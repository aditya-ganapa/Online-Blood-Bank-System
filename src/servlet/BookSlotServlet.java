package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookSlotDao;
import model.BookSlot;

@WebServlet("/BookSlot")
public class BookSlotServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hospital = request.getParameter("hospital");
		String date = request.getParameter("date");
		String slot = request.getParameter("slot");
		int userId = Integer.parseInt(request.getParameter("userId"));
		BookSlotDao bookSlotDao = new BookSlotDao();
		bookSlotDao.book(new BookSlot(hospital, date, slot, userId));
		
		request.setAttribute("userId", userId);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("slot-notification.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}