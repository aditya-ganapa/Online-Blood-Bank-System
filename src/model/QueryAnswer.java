package model;

public class QueryAnswer {
	private int queryId;
	private String queryAnswer;
	public QueryAnswer() {
		super();
	}
	public QueryAnswer(int queryId, String queryAnswer) {
		super();
		this.queryId = queryId;
		this.queryAnswer = queryAnswer;
	}
	public int getQueryId() {
		return queryId;
	}
	public void setQueryId(int queryId) {
		this.queryId = queryId;
	}
	public String getQueryAnswer() {
		return queryAnswer;
	}
	public void setQueryAnswer(String queryAnswer) {
		this.queryAnswer = queryAnswer;
	}
}