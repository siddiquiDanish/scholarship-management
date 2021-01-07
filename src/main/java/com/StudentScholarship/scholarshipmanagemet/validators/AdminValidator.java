package com.StudentScholarship.scholarshipmanagemet.validators;

/**
 * @author DANISH
 *
 */

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.StudentScholarship.scholarshipmanagemet.model.Admin;
import com.StudentScholarship.scholarshipmanagemet.repo.AdminRepository;

@Component
public class AdminValidator implements Validator {

	@Autowired
	AdminRepository adminRepo;

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Admin.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		Admin admin = (Admin) target;
		List<Admin> alladmins = adminRepo.findAll();

		if (!admin.getPasswordConfirmation().equals(admin.getPassword())) {
			errors.rejectValue("passwordConfirmation", "PasswordConfirm");
		}

		for (int i = 0; i < alladmins.size(); i++) {
			String email = alladmins.get(i).getEmail();
			if (email.equals(admin.getEmail())) {
				errors.rejectValue("email", "EmailIsAlreadyThere");
			}
		}
	}
}
