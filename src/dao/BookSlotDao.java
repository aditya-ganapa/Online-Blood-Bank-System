package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.BookSlot;

public class BookSlotDao {
	public void book(BookSlot bookSlot) {
		Connection connection = ConnectionHandler.getConnection();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("insert into book_slot(bs_hospital, bs_date, bs_slot, bs_user_id) values(?,?,?,?)");
			preparedStatement.setString(1, bookSlot.getHospital());
			preparedStatement.setString(2, bookSlot.getDate());
			preparedStatement.setString(3, bookSlot.getSlot());
			preparedStatement.setInt(4, bookSlot.getUserId());
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
	
	@SuppressWarnings("resource")
	public void update(String city, String hospital, String date, boolean morningSlot, boolean afternoonSlot, boolean eveningSlot) {
		Connection connection = ConnectionHandler.getConnection();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("select sl_id from slot where sl_city=? and sl_hospital=? and sl_date=?");
			preparedStatement.setString(1, city);
			preparedStatement.setString(2, hospital);
			preparedStatement.setString(3, date);
			ResultSet resultSet = preparedStatement.executeQuery();
			if(resultSet.next()) {
				preparedStatement = connection.prepareStatement("update slot set sl_morning_slot=?, sl_afternoon_slot=?, sl_evening_slot=? where sl_id=?");
				preparedStatement.setBoolean(1, morningSlot);
				preparedStatement.setBoolean(2, afternoonSlot);
				preparedStatement.setBoolean(3, eveningSlot);
				preparedStatement.setInt(4, resultSet.getInt(1));
				preparedStatement.executeUpdate();
			}
			else {
				preparedStatement = connection.prepareStatement("insert into slot(sl_city, sl_hospital, sl_date, sl_morning_slot, sl_afternoon_slot, sl_evening_slot) values(?,?,?,?,?,?)");
				preparedStatement.setString(1, city);
				preparedStatement.setString(2, hospital);
				preparedStatement.setString(3, date);
				preparedStatement.setBoolean(4, morningSlot);
				preparedStatement.setBoolean(5, afternoonSlot);
				preparedStatement.setBoolean(6, eveningSlot);
				preparedStatement.executeUpdate();
			}
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