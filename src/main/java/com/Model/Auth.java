package com.Model;

public class Auth {
	
	public String authenticateUser (User user) {
		String role;
		String username = user.getUsername();
		String password = user.getPassword();
		
		if (username.equals("admin") && password.equals("admin")){
			role = "admin";
		}else if (username.equals("user") && password.equals("user")) {
			role = "coach";
		}else if (username.equals("user1") && password.equals("user1")) {
			role = "trainee";
		}else {
			role = "invalid";
		}
		return role;
		
	}
}