package com.StudentScholarship.scholarshipmanagemet.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.StudentScholarship.scholarshipmanagemet.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	List<User> findAll();
	
	User findByEmail(String email);
}

