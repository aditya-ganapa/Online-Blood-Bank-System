package model;

public class QueryGetUser {
	private String question;
	private String answer;
	public QueryGetUser() {
		super();
	}
	public QueryGetUser(String question, String answer) {
		super();
		this.question = question;
		this.answer = answer;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
}