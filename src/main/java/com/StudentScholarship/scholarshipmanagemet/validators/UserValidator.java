package com.StudentScholarship.scholarshipmanagemet.validators;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.StudentScholarship.scholarshipmanagemet.repo.UserRepository;
import com.StudentScholarship.scholarshipmanagemet.model.User;

@Component
public class UserValidator implements Validator {

	@Autowired
	UserRepository repo;

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return User.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		User user = (User) target;
		List<User> allusers = repo.findAll();

		if (!user.getPasswordConfirmation().equals(user.getPassword())) {
			errors.rejectValue("passwordConfirmation", "PasswordConfirm");
		}

		for (int i = 0; i < allusers.size(); i++) {
			String email = allusers.get(i).getEmail();
			if (email.equals(user.getEmail())) {
				errors.rejectValue("email", "EmailIsAlreadyThere");
			}
		}
	}
}
