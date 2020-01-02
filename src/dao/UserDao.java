package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;

public class UserDao {
	public void addUser(User user) throws DuplicateAccountException {
		Connection connection = ConnectionHandler.getConnection();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("select count(us_contact_number) from user where us_contact_number=? or us_email=?");
			preparedStatement.setLong(1, user.getContactNumber());
			preparedStatement.setString(2, user.getEmail());
			ResultSet resultSet = preparedStatement.executeQuery();
			resultSet.next();
			if (resultSet.getInt(1) != 0) {
				throw new DuplicateAccountException();
			}
			preparedStatement = connection.prepareStatement("insert into user(us_first_name,us_last_name,us_age,us_gender,us_contact_number,us_email,us_password,us_weight,us_state,us_city,us_pin_code,us_blood_group) values(?,?,?,?,?,?,?,?,?,?,?,?)");
			preparedStatement.setString(1, user.getFirstName());
			preparedStatement.setString(2, user.getLastName());
			preparedStatement.setInt(3, user.getAge());
			preparedStatement.setString(4, user.getGender());
			preparedStatement.setLong(5, user.getContactNumber());
			preparedStatement.setString(6, user.getEmail());
			preparedStatement.setString(7, user.getPassword());
			preparedStatement.setInt(8, user.getWeight());
			preparedStatement.setString(9, user.getState());
			preparedStatement.setString(10, user.getCity());
			preparedStatement.setInt(11, user.getPinCode());
			preparedStatement.setString(12, user.getBloodGroup());
/*			preparedStatement.setBoolean(13, user.isUserType());*/
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
	
	public boolean validateUser(String username, String password) {
		Connection connection = ConnectionHandler.getConnection();
		Long contactNumber = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		boolean valid = false;
		try {
			contactNumber = Long.parseLong(username);
		} catch (NumberFormatException e1) {
			try {
				preparedStatement = connection.prepareStatement("select us_password from user where us_email=?");
				preparedStatement.setString(1, username);
				resultSet = preparedStatement.executeQuery();
				if(resultSet.next() && resultSet.getString(1).equals(password))
					valid = true;
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
			return valid;
		} 
		try {
			preparedStatement = connection.prepareStatement("select us_password from user where us_contact_number=?");
			preparedStatement.setLong(1, contactNumber);
			resultSet = preparedStatement.executeQuery();
			if(resultSet.next() && resultSet.getString(1).equals(password))
				valid = true;
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
		return valid;
	}
	
	public boolean getUserType(String username) {
		Connection connection = ConnectionHandler.getConnection();
		Long contactNumber = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		boolean userType = false;
		try {
			contactNumber = Long.parseLong(username);
		} catch (NumberFormatException e1) {
			try {
				preparedStatement = connection.prepareStatement("select us_user_type from user where us_email=?");
				preparedStatement.setString(1, username);
				resultSet = preparedStatement.executeQuery();
				resultSet.next();
				userType = resultSet.getBoolean(1);
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
			return userType;
		} 
		try {
			preparedStatement = connection.prepareStatement("select us_user_type from user where us_contact_number=?");
			preparedStatement.setLong(1, contactNumber);
			resultSet = preparedStatement.executeQuery();
			resultSet.next();
			userType = resultSet.getBoolean(1);
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
		return userType;
	}
	public int getUserId(String username) {
		Connection connection = ConnectionHandler.getConnection();
		Long contactNumber = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		int userId = 0;
		try {
			contactNumber = Long.parseLong(username);
		} catch (NumberFormatException e1) {
			try {
				preparedStatement = connection.prepareStatement("select us_user_id from user where us_email=?");
				preparedStatement.setString(1, username);
				resultSet = preparedStatement.executeQuery();
				resultSet.next();
				userId = resultSet.getInt(1);
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
			return userId;
		} 
		try {
			preparedStatement = connection.prepareStatement("select us_user_id from user where us_contact_number=?");
			preparedStatement.setLong(1, contactNumber);
			resultSet = preparedStatement.executeQuery();
			resultSet.next();
			userId = resultSet.getInt(1);
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
		return userId;
	}
}