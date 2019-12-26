package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Available;

public class AvailableDao {
	public ArrayList<Available> getAllAvailable(String state, String city, int pinCode, String bloodGroup) throws EmptyAvailableException {
		Connection connection = ConnectionHandler.getConnection();
		ArrayList<Available> availables = new ArrayList<>();
		PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement("select av_hospital from available where av_state=? and av_city=? and av_pin_code=? and av_blood_group=?");
			preparedStatement.setString(1, state);
			preparedStatement.setString(2, city);
			preparedStatement.setInt(3, pinCode);
			preparedStatement.setString(4, bloodGroup);
			ResultSet resultSet = preparedStatement.executeQuery();
			if(!resultSet.next()) {
				throw new EmptyAvailableException();
			}
			availables.add(new Available(state, city, pinCode, resultSet.getString(1), bloodGroup));
			while (resultSet.next()) {
				availables.add(new Available(state, city, pinCode, resultSet.getString(1), bloodGroup));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return availables;
	}
}