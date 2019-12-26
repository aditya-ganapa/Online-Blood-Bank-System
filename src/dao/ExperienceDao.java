package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Experience;

public class ExperienceDao {
	public void add(Experience experience) {
		Connection connection = ConnectionHandler.getConnection();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("insert into experience(ex_city, ex_hospital, ex_feedback) values(?, ?, ?)");
			preparedStatement.setString(1, experience.getCity());
			preparedStatement.setString(2, experience.getHospital());
			preparedStatement.setString(3, experience.getFeedback());
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