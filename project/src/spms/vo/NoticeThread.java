package spms.vo;

public class NoticeThread {
	protected int thread_no;
	protected String email;
	protected String title;
	protected String content;
	protected int hit;
	
	
	public int getThread_no() {
		return thread_no;
	}
	public NoticeThread setThread_no(int thread_no) {
		this.thread_no = thread_no;
		return this;
		
	}
	public String getEmail() {
		return email;
	}
	public NoticeThread setEmail(String email) {
		this.email = email;
		return this;
	}
	public String getTitle() {
		return title;
	}
	public NoticeThread setTitle(String title) {
		this.title = title;
		return this;
	}
	public String getContent() {
		return content;
	}
	public NoticeThread setContent(String content) {
		this.content = content;
		return this;
	}
	public int getHit() {
		return hit;
	}
	public NoticeThread setHit(int hit) {
		this.hit = hit;
		return this;
	}
}
