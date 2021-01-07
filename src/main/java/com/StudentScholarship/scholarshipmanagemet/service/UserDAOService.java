package com.StudentScholarship.scholarshipmanagemet.service;

import java.sql.Date;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.StudentScholarship.scholarshipmanagemet.model.User;
import com.StudentScholarship.scholarshipmanagemet.repo.UserRepository;

@Service
public class UserDAOService {

	@Autowired
	UserRepository repo;

	public User registerUser(User user) {

		// user.setPassword(user.getPassword());
		return repo.save(user);
	}

	public User findByEmail(String email) {
		return repo.findByEmail(email);
	}

	public User findUserById(Long id) {
		Optional<User> u = repo.findById(id);

		if (u.isPresent()) {
			return u.get();
		} else {
			return null;
		}
	}

	public boolean authenticateUser(String email, String password) {
		User user = repo.findByEmail(email);

		if (user == null) {
			return false;
		} else {
			if (password.equals(user.getPassword())) {
				return true;
			} else {
				return false;
			}
		}
	}

	public User application(User user, String mobileNumber, String aadharNumber, Date dateOfBirth, String gender,
			String stateOfDomecile, double percentMarks, double familyIncome, String haveCertificates,
			String haveBankkAccount, String category) {
		user.setAadharNumber(aadharNumber);
		user.setMobileNumber(mobileNumber);
		user.setDateOfBirth(dateOfBirth);
		user.setGender(gender);
		user.setFamilyIncome(familyIncome);
		user.setStateOfDomecile(stateOfDomecile);
		user.setHaveBankkAccount(haveBankkAccount);
		user.setHaveCertificates(haveCertificates);
		user.setPercentMarks(percentMarks);
		user.setCategory(category);

		return repo.save(user);
	}

}
