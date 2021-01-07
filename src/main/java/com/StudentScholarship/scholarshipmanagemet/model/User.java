package com.StudentScholarship.scholarshipmanagemet.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

//To user store in table as entities

@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	@Size(min = 3, message = "Username must be greater than 2 characters")
	private String username;
	@Email(message = "Email must be valid")
	private String email;
	@Size(min = 5, message = "Password must be greater than 4 characters")
	private String password;
	@Transient
	private String passwordConfirmation;

	@Size(min = 10, max = 10, message = "Phone number must be exactly 10 digits long")
	@Pattern(regexp = "[0-9]+", message = "Must contain only numbers")
	private String mobileNumber;

	@Size(min = 12, max = 12, message = "Aadhar number must be exactly 12 digits long")
	@Pattern(regexp = "[0-9]+", message = "Must contain only numbers")
	private String aadharNumber;

	private Date dateOfBirth;

	private String gender;

	private String stateOfDomecile;

	private double percentMarks;

	private double familyIncome;

	private String haveCertificates;

	private String haveBankkAccount;

	private String category;
	
	private String status="Pending";

	/**
	 * @return the category
	 */
	public String getCategory() {
		return category;
	}

	/**
	 * @param category the category to set
	 */
	public void setCategory(String category) {
		this.category = category;
	}

	/**
	 * @return the mobileNumber
	 */
	public String getMobileNumber() {
		return mobileNumber;
	}

	/**
	 * @param mobileNumber the mobileNumber to set
	 */
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	/**
	 * @return the aadharNumber
	 */
	public String getAadharNumber() {
		return aadharNumber;
	}

	/**
	 * @param aadharNumber the aadharNumber to set
	 */
	public void setAadharNumber(String aadharNumber) {
		this.aadharNumber = aadharNumber;
	}

	/**
	 * @return the dateOfBirth
	 */
	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	/**
	 * @param dateOfBirth the dateOfBirth to set
	 */
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}

	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}

	/**
	 * @return the stateOfDomecile
	 */
	public String getStateOfDomecile() {
		return stateOfDomecile;
	}

	/**
	 * @param stateOfDomecile the stateOfDomecile to set
	 */
	public void setStateOfDomecile(String stateOfDomecile) {
		this.stateOfDomecile = stateOfDomecile;
	}

	/**
	 * @return the percentMarks
	 */
	public double getPercentMarks() {
		return percentMarks;
	}

	/**
	 * @param percentMarks the percentMarks to set
	 */
	public void setPercentMarks(double percentMarks) {
		this.percentMarks = percentMarks;
	}

	/**
	 * @return the familyIncome
	 */
	public double getFamilyIncome() {
		return familyIncome;
	}

	/**
	 * @param familyIncome the familyIncome to set
	 */
	public void setFamilyIncome(double familyIncome) {
		this.familyIncome = familyIncome;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPasswordConfirmation() {
		return passwordConfirmation;
	}

	public void setPasswordConfirmation(String passwordConfirmation) {
		this.passwordConfirmation = passwordConfirmation;
	}

	/**
	 * @return the haveCertificates
	 */
	public String getHaveCertificates() {
		return haveCertificates;
	}

	/**
	 * @param haveCertificates the haveCertificates to set
	 */
	public void setHaveCertificates(String haveCertificates) {
		this.haveCertificates = haveCertificates;
	}

	/**
	 * @return the haveBankkAccount
	 */
	public String getHaveBankkAccount() {
		return haveBankkAccount;
	}

	/**
	 * @param haveBankkAccount the haveBankkAccount to set
	 */
	public void setHaveBankkAccount(String haveBankkAccount) {
		this.haveBankkAccount = haveBankkAccount;
	}

	public User() {
	}

	/**
	 * @param username
	 * @param email
	 * @param password
	 * @param passwordConfirmation
	 * @param mobileNumber
	 * @param aadharNumber
	 * @param dateOfBirth
	 * @param gender
	 * @param stateOfDomecile
	 * @param percentMarks
	 * @param familyIncome
	 * @param haveCertificates
	 * @param haveBankkAccount
	 */
	public User(String username, String email, String password, String passwordConfirmation, String mobileNumber,
			String aadharNumber, Date dateOfBirth, String gender, String stateOfDomecile, double percentMarks,
			double familyIncome, String haveCertificates, String haveBankkAccount, String category) {
		this.username = username;
		this.email = email;
		this.password = password;
		this.passwordConfirmation = passwordConfirmation;
		this.mobileNumber = mobileNumber;
		this.aadharNumber = aadharNumber;
		this.dateOfBirth = dateOfBirth;
		this.gender = gender;
		this.stateOfDomecile = stateOfDomecile;
		this.percentMarks = percentMarks;
		this.familyIncome = familyIncome;
		this.haveCertificates = haveCertificates;
		this.haveBankkAccount = haveBankkAccount;
		this.category = category;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", email=" + email + ", password=" + password
				+ ", passwordConfirmation=" + passwordConfirmation + ", mobileNumber=" + mobileNumber
				+ ", aadharNumber=" + aadharNumber + ", dateOfBirth=" + dateOfBirth + ", gender=" + gender
				+ ", stateOfDomecile=" + stateOfDomecile + ", percentMarks=" + percentMarks + ", familyIncome="
				+ familyIncome + "]";
	}

	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}

	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	}

