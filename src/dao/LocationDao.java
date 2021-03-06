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
			PreparedStatement preparedStatement = connection.prepareStatement("select * from location order by lo_state, lo_city, lo_hospital");
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				locations.add(new Location(resultSet.getString(2), resultSet.getString(3), resultSet.getString(4)));
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
	
	public ArrayList<Location> getAllStatesAndCities() {
		Connection connection = ConnectionHandler.getConnection();
		ArrayList<Location> locations = new ArrayList<>();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("select distinct lo_state, lo_city from location order by lo_state, lo_city");
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				locations.add(new Location(resultSet.getString(1), resultSet.getString(2), null));
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

	public ArrayList<String> getAllCities() {
		Connection connection = ConnectionHandler.getConnection();
		ArrayList<String> cities = new ArrayList<>();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("select distinct lo_city from location order by lo_city");
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				cities.add(resultSet.getString(1));
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
		return cities;
	}
}