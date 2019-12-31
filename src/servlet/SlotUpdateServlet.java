package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookSlotDao;

@WebServlet("/SlotUpdate")
public class SlotUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String city = request.getParameter("city");
        String hospital = request.getParameter("hospital");
        String date = request.getParameter("date");
        boolean morningSlot = request.getParameter("morningSlot") != null;
        boolean afternoonSlot = request.getParameter("afternoonSlot") != null;
        boolean eveningSlot = request.getParameter("eveningSlot") != null;
        BookSlotDao bookSlotDao = new BookSlotDao();
        bookSlotDao.update(city, hospital, date, morningSlot, afternoonSlot, eveningSlot);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("update-slot-notification.jsp");
        requestDispatcher.forward(request, response);
	}
}