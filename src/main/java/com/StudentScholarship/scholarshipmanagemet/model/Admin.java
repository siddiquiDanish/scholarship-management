package com.StudentScholarship.scholarshipmanagemet.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.Size;

//To user store in table as entities

@Entity
public class Admin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Size(min = 3, message = "Username must be greater than 2 characters")
	private String usernameAdmin;
	@Email(message = "Email must be valid")
	private String email;
	@Size(min = 5, message = "Password must be greater than 4 characters")
	private String password;
	@Transient
	private String passwordConfirmation;
	
	private String designation;

	

	
	public Admin(long id, String username, String email, String password, String passwordConfirmation) {
		super();
		this.id = id;
		this.usernameAdmin = username;
		this.email = email;
		this.password = password;
		this.passwordConfirmation = passwordConfirmation;
	}

	/**
	 empty 
	 */
	public Admin() {
	}
	
	
	/**
	 * @return the usernameAdmin
	 */
	public String getUsernameAdmin() {
		return usernameAdmin;
	}

	/**
	 * @param usernameAdmin the usernameAdmin to set
	 */
	public void setUsernameAdmin(String usernameAdmin) {
		this.usernameAdmin = usernameAdmin;
	}

	

	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}

	/**
	 * @return the username
	 */
	public String getUsername() {
		return usernameAdmin;
	}

	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.usernameAdmin = username;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the passwordConfirmation
	 */
	public String getPasswordConfirmation() {
		return passwordConfirmation;
	}

	/**
	 * @param passwordConfirmation the passwordConfirmation to set
	 */
	public void setPasswordConfirmation(String passwordConfirmation) {
		this.passwordConfirmation = passwordConfirmation;
	}
	/**
	 * @return the designation
	 */
	public String getDesignation() {
		return designation;
	}

	/**
	 * @param designation the designation to set
	 */
	public void setDesignation(String designation) {
		this.designation = designation;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + ", username=" + usernameAdmin + ", email=" + email + ", password=" + password
				+ ", passwordConfirmation=" + passwordConfirmation + "]";
	}

}
