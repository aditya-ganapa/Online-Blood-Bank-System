package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Requirement;
import model.RequirementAdmin;
import model.RequirementHome;

public class RequirementDao {
	public ArrayList<Requirement> getRequirements(String state, String city, int pinCode, String bloodGroup) throws EmptyRequirementsException {
		Connection connection = ConnectionHandler.getConnection();
		ArrayList<Requirement> requirements = new ArrayList<>();
		PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement("select sl_hospital,sl_date,sl_morning_slot,sl_afternoon_slot,sl_evening_slot from post_requirement inner join slot on pr_city=sl_city where pr_state=? and pr_city=? and pr_pin_code=? and pr_blood_group=?");
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
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return requirements;
	}
	
	public ArrayList<Requirement> getAllBloodBanks(String city) throws EmptyRequirementsException {
		Connection connection = ConnectionHandler.getConnection();
		ArrayList<Requirement> allRequirements = new ArrayList<>();
		PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement("select sl_hospital,sl_date,sl_morning_slot,sl_afternoon_slot,sl_evening_slot from slot where sl_city=?");
			preparedStatement.setString(1, city);	
			ResultSet resultSet = preparedStatement.executeQuery();
			if(!resultSet.next()) {
				throw new EmptyRequirementsException();
			}
			allRequirements.add(new Requirement(resultSet.getString(1), resultSet.getString(2), resultSet.getBoolean(3), resultSet.getBoolean(4), resultSet.getBoolean(5)));
			while (resultSet.next()) {
				allRequirements.add(new Requirement(resultSet.getString(1), resultSet.getString(2), resultSet.getBoolean(3), resultSet.getBoolean(4), resultSet.getBoolean(5)));
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
		return allRequirements;
	}
	
	public ArrayList<RequirementHome> getAllRequirements() throws EmptyRequirementsException {
		Connection connection = ConnectionHandler.getConnection();
		ArrayList<RequirementHome> requirements = new ArrayList<>();
		PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement("select pr_state,pr_city,pr_blood_group,us_first_name,us_contact_number from post_requirement inner join user on pr_user_id=us_user_id");
			ResultSet resultSet = preparedStatement.executeQuery();
			if(!resultSet.next()) {
				throw new EmptyRequirementsException();
			}
			requirements.add(new RequirementHome(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getLong(5)));
			while (resultSet.next()) {
				requirements.add(new RequirementHome(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getLong(5)));
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
		return requirements;
	}

	public ArrayList<RequirementAdmin> getAllRequirementsAdmin() throws EmptyRequirementsException {
		Connection connection = ConnectionHandler.getConnection();
		ArrayList<RequirementAdmin> requirements = new ArrayList<>();
		PreparedStatement preparedStatement;
		try {
			preparedStatement = connection.prepareStatement("select pr_state,pr_city,pr_blood_group,us_first_name,us_contact_number,pr_id from post_requirement inner join user on pr_user_id=us_user_id");
			ResultSet resultSet = preparedStatement.executeQuery();
			if(!resultSet.next()) {
				throw new EmptyRequirementsException();
			}
			requirements.add(new RequirementAdmin(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getLong(5), resultSet.getInt(6)));
			while (resultSet.next()) {
				requirements.add(new RequirementAdmin(resultSet.getString(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getLong(5), resultSet.getInt(6)));
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
		return requirements;
	}

	public void delete(int requirementId) {
		Connection connection = ConnectionHandler.getConnection();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("delete from post_requirement where pr_id=?");
			preparedStatement.setInt(1, requirementId);
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