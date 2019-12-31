package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Query;
import model.QueryAnswer;
import model.QueryGetAdmin;
import model.QueryGetUser;

public class QueryDao {
	public void add(Query query) {
		Connection connection = ConnectionHandler.getConnection();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("insert into query(qu_question, qu_user_id) values(?,?)");
			preparedStatement.setString(1, query.getQuery());
			preparedStatement.setInt(2, query.getUserId());
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
	
	public void answer(QueryAnswer queryAnswer) {
		Connection connection = ConnectionHandler.getConnection();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("insert into query_answer(qa_query_id, qa_query_answer, qa_seen) values(?,?,?)");
			preparedStatement.setInt(1, queryAnswer.getQueryId());
			preparedStatement.setString(2, queryAnswer.getQueryAnswer());
			preparedStatement.setBoolean(3, false);
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
	
	public ArrayList<QueryGetAdmin> getAllQueriesAdmin() throws EmptyQueriesException {
		Connection connection = ConnectionHandler.getConnection();
		ArrayList<QueryGetAdmin> queries = new ArrayList<>();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("select qu_question,qu_id from query left join query_answer on qu_id=qa_query_id where qa_query_id is null");
			ResultSet resultSet = preparedStatement.executeQuery();
			if(!resultSet.next()) {
				throw new EmptyQueriesException();
			}
			queries.add(new QueryGetAdmin(resultSet.getString(1), resultSet.getInt(2)));
			while (resultSet.next()) {
				queries.add(new QueryGetAdmin(resultSet.getString(1), resultSet.getInt(2)));
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
		return queries;
	}

	public boolean showNotification(int userId) {
		Connection connection = ConnectionHandler.getConnection();
		boolean show = false;
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("select count(qa_seen) from query inner join query_answer on qu_id=qa_query_id where qu_user_id=? and qa_seen=?");
			preparedStatement.setInt(1, userId);
			preparedStatement.setBoolean(2, false);
			ResultSet resultSet = preparedStatement.executeQuery();
			resultSet.next();
			if (resultSet.getInt(1) > 0) {
				show = true;
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
		return show;
	}
	
	public ArrayList<QueryGetUser> getAllQueriesUser(int userId) throws EmptyQueriesException {
		Connection connection = ConnectionHandler.getConnection();
		ArrayList<QueryGetUser> queries = new ArrayList<>();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement("select qu_question,qa_query_answer from query left join query_answer on qu_id=qa_query_id where qu_user_id=?");
			preparedStatement.setInt(1, userId);
			ResultSet resultSet = preparedStatement.executeQuery();
			if(!resultSet.next()) {
				throw new EmptyQueriesException();
			}
			if (resultSet.getString(2) == null) {
				queries.add(new QueryGetUser(resultSet.getString(1), "This query is yet to be answered."));
			}
			else {
				queries.add(new QueryGetUser(resultSet.getString(1), resultSet.getString(2)));
			}
			while (resultSet.next()) {
				if (resultSet.getString(2) == null) {
					queries.add(new QueryGetUser(resultSet.getString(1), "This query is yet to be answered."));
				}
				else {
					queries.add(new QueryGetUser(resultSet.getString(1), resultSet.getString(2)));
				}
			}
			preparedStatement = connection.prepareStatement("select qa_id from query_answer inner join query on qa_query_id=qu_id where qu_user_id=?");
			preparedStatement.setInt(1, userId);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				preparedStatement = connection.prepareStatement("update query_answer set qa_seen=? where qa_id=?");
				preparedStatement.setBoolean(1, true);
				preparedStatement.setInt(2, resultSet.getInt(1));
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
		return queries;
	}
}