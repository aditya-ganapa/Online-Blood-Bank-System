package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.PostRequirement;

public class PostRequirementDao {
	public void post(PostRequirement postRequirement) {
		Connection connection = ConnectionHandler.getConnection();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("insert into post_requirement(pr_state, pr_city, pr_pin_code, pr_blood_group, pr_contact_number) values(?,?,?,?,?)");
			preparedStatement.setString(1, postRequirement.getState());
			preparedStatement.setString(2, postRequirement.getCity());
			preparedStatement.setInt(3, postRequirement.getPinCode());
			preparedStatement.setString(4, postRequirement.getBloodGroup());
			preparedStatement.setLong(5, postRequirement.getContactNumber());
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