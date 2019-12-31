package model;

public class Query {
	private String query;
	private int userId;

	public Query() {
		super();
	}

	public Query(String query, int userId) {
		super();
		this.query = query;
		this.userId = userId;
	}

	public String getQuery() {
		return query;
	}

	public void setQuery(String query) {
		this.query = query;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
}