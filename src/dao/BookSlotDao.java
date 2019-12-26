package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.BookSlot;

public class BookSlotDao {
	public void book(BookSlot bookSlot) {
		Connection connection = ConnectionHandler.getConnection();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("insert into book_slot(bs_hospital, bs_date, bs_slot, bs_contact_number) values(?,?,?,?)");
			preparedStatement.setString(1, bookSlot.getHospital());
			preparedStatement.setString(2, bookSlot.getDate());
			preparedStatement.setString(3, bookSlot.getSlot());
			preparedStatement.setLong(4, bookSlot.getContactNumber());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}