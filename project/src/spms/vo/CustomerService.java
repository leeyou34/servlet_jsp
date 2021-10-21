package spms.vo;

import java.sql.Date;

public class CustomerService {
	protected int qna_no;
	protected String email;
	protected String title;
	protected String qna_content;
	protected Date regdate;
	
	
	public int getQna_no() {
		return qna_no;
	}
	public CustomerService setQna_no(int qna_no) {
		this.qna_no = qna_no;
		return this;
	}
	public String getEmail() {
		return email;
	}
	public CustomerService setEmail(String email) {
		this.email = email;
		return this;
	}
	public String getTitle() {
		return title;
	}
	public CustomerService setTitle(String title) {
		this.title = title;
		return this;
	}
	public String getQna_content() {
		return qna_content;
	}
	public CustomerService setQna_content(String qna_content) {
		this.qna_content = qna_content;
		return this;
	}
	public Date getRegdate() {
		return regdate;
	}
	public CustomerService setRegdate(Date regdate) {
		this.regdate = regdate;
		return this;
	}
}
	