package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Experience;
import model.ExperienceHome;

public class ExperienceDao {
	public void add(Experience experience) {
		Connection connection = ConnectionHandler.getConnection();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("insert into experience(ex_city, ex_hospital, ex_feedback, ex_user_id) values(?, ?, ?, ?)");
			preparedStatement.setString(1, experience.getCity());
			preparedStatement.setString(2, experience.getHospital());
			preparedStatement.setString(3, experience.getFeedback());
			preparedStatement.setInt(4, experience.getUserId());
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
	
	public ArrayList<ExperienceHome> getAllExperiences() throws EmptyExperiencesException {
		Connection connection = ConnectionHandler.getConnection();
		ArrayList<ExperienceHome> experiences = new ArrayList<>();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("select ex_city,ex_hospital,ex_feedback,us_first_name,us_last_name from experience inner join user on ex_user_id=us_user_id");
			ResultSet resultSet = preparedStatement.executeQuery();
			if(!resultSet.next()) {
				throw new EmptyExperiencesException();
			}
			experiences.add(new ExperienceHome(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5)));
			while (resultSet.next()) {
				experiences.add(new ExperienceHome(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5)));
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
		return experiences;
	}
}