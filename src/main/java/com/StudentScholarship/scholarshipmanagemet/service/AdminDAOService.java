package com.StudentScholarship.scholarshipmanagemet.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.StudentScholarship.scholarshipmanagemet.model.Admin;
import com.StudentScholarship.scholarshipmanagemet.repo.AdminRepository;

@Service
public class AdminDAOService {

	@Autowired
	AdminRepository adminRepo;

	public Admin registerAdmin(Admin admin) {

		admin.setPassword(admin.getPassword());
		return adminRepo.save(admin);
	}

	public Admin findByEmail(String email) {
		return adminRepo.findByEmail(email);
	}

	public Admin findUserById(Long id) {
		Optional<Admin> ad = adminRepo.findById(id);

		if (ad.isPresent()) {
			return ad.get();
		} else {
			return null;
		}
	}

	public boolean authenticateAdmin(String email, String password) {
		Admin admin = adminRepo.findByEmail(email);

		if (admin == null) {
			return false;
		} else {
			if (password.equals(admin.getPassword())) {
				return true;
			} else {
				return false;
			}
		}
	}

}
