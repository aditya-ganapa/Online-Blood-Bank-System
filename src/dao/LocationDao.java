package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Location;

public class LocationDao {
	public ArrayList<Location> getAllLocations() {
		Connection connection = ConnectionHandler.getConnection();
		ArrayList<Location> locations = new ArrayList<>();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("select * from location order by lo_state, lo_city");
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				locations.add(new Location(resultSet.getString(2), resultSet.getString(3)));
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
		return locations;
	}
	
	public ArrayList<String> getAllStates() {
		Connection connection = ConnectionHandler.getConnection();
		ArrayList<String> states = new ArrayList<>();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("select distinct lo_state from location order by lo_state");
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				states.add(resultSet.getString(1));
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
		return states;
	}
}