package spms.vo;

import java.util.Date;

public class User {
	
		protected int userNo;
		protected String email;
		protected String pwd;
		protected String name;
		public int getUserNo() {
			return userNo;
		}
		public User setUserNo(int userNo) {
			this.userNo = userNo;
			return this;
		}
		public String getEmail() {
			return email;
		}
		public User setEmail(String email) {
			this.email = email;
			return this;
		}
		public String getPwd() {
			return pwd;
		}
		public User setPwd(String pwd) {
			this.pwd = pwd;
			return this;
		}
		public String getName() {
			return name;
		}
		public User setName(String name) {
			this.name = name;
			return this;
		}
		
}
