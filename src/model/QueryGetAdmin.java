package model;

public class QueryGetAdmin {
	private String question;
	private int queryId;
	public QueryGetAdmin() {
		super();
	}
	public QueryGetAdmin(String question, int queryId) {
		super();
		this.question = question;
		this.queryId = queryId;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public int getQueryId() {
		return queryId;
	}
	public void setQueryId(int queryId) {
		this.queryId = queryId;
	}
}