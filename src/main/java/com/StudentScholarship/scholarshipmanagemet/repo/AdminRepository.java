package com.StudentScholarship.scholarshipmanagemet.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.StudentScholarship.scholarshipmanagemet.model.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Long> {
	List<Admin> findAll();
	
	Admin findByEmail(String email);
}

