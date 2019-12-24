package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.ArrayList;

import model.Requirement;

public class RequirementDao {
	public ArrayList<Requirement> getAllRequirements(String state, String city, int pinCode, String bloodGroup) throws EmptyRequirementsException, ParseException {
		Connection connection = ConnectionHandler.getConnection();
		ArrayList<Requirement> requirements = new ArrayList<>();
		PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement("select rq_hospital, rq_date, rq_morning_slot, rq_afternoon_slot, rq_evening_slot from requirement where rq_state=? and rq_city=? and rq_pin_code=? and rq_blood_group=?");
			preparedStatement.setString(1, state);
			preparedStatement.setString(2, city);
			preparedStatement.setInt(3, pinCode);
			preparedStatement.setString(4, bloodGroup);
			ResultSet resultSet = preparedStatement.executeQuery();
			if(!resultSet.next()) {
				throw new EmptyRequirementsException();
			}
			requirements.add(new Requirement(resultSet.getString(1), resultSet.getString(2), resultSet.getBoolean(3), resultSet.getBoolean(4), resultSet.getBoolean(5)));
			while (resultSet.next()) {
				requirements.add(new Requirement(resultSet.getString(1), resultSet.getString(2), resultSet.getBoolean(3), resultSet.getBoolean(4), resultSet.getBoolean(5)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return requirements;
	}
}