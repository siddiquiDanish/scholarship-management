package com.StudentScholarship.scholarshipmanagemet.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.StudentScholarship.scholarshipmanagemet.model.Admin;
import com.StudentScholarship.scholarshipmanagemet.model.User;
import com.StudentScholarship.scholarshipmanagemet.repo.AdminRepository;
import com.StudentScholarship.scholarshipmanagemet.repo.UserRepository;
import com.StudentScholarship.scholarshipmanagemet.service.AdminDAOService;
import com.StudentScholarship.scholarshipmanagemet.service.UserDAOService;
import com.StudentScholarship.scholarshipmanagemet.validators.AdminValidator;

@Controller
public class AdminController {

	@Autowired
	AdminRepository adminRepo;

	@Autowired
	UserRepository repo;

	@Autowired
	AdminValidator adminValidator;

	@Autowired
	AdminDAOService adminDaoService;

	@Autowired
	UserDAOService userDaoService;

	@RequestMapping("/newAdmin")
	public String newAdminRegister(ModelMap model) {
		model.addAttribute("admin", new Admin());
		return "newAdmin";
	}

	@PostMapping(value = "/newAdmin")
	public String newAdminRegister(@Valid @ModelAttribute("admin") Admin admin, BindingResult result,
			HttpSession session) {
		adminValidator.validate(admin, result);
		if (result.hasErrors()) {
			return "newAdmin";
		}
		adminDaoService.registerAdmin(admin);
		session.setAttribute("adminid", admin.getId());
		return "adminLogin";
	}

	@RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
	public String adminLoginPage() {
		return "adminLogin";
	}

	@PostMapping(value = "/adminLogin")
	public String adminLogin(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpSession session, RedirectAttributes r) {
		boolean success = adminDaoService.authenticateAdmin(email, password);

		if (email.length() < 1) {
			r.addFlashAttribute("error", "Email field cannot be blank.");
			return "redirect:/adminLogin";
		} else if (password.length() < 1) {
			r.addFlashAttribute("error", "Please enter your password.");
			return "redirect:/adminLogin";
		} else if (!success) {
			r.addFlashAttribute("error", "Email and password do not match.");
			return "redirect:/adminLogin";
		} else {
			Admin admin = adminDaoService.findByEmail(email);
			Long id = admin.getId();
			session.setAttribute("admin", id);
			return "redirect:/adminhome";
		}
	}

	@RequestMapping("/adminhome")
	public String studentHomePage(HttpSession session, ModelMap model) {
		Long adminid = (Long) session.getAttribute("admin");
		Admin admin = adminDaoService.findUserById(adminid);
		model.addAttribute("admin", admin);

		List<User> userall = repo.findAll();
		model.put("list", userall);

		
		return "adminHome";

	}

	@GetMapping("/adminReview")
	public String viewApplicationDetails(ModelMap model, @RequestParam long id) {

		User user = repo.findById(id).get();
		model.put("user", user);

		return "adminReview";
	}

	@PostMapping("/adminReview")
	public String status(HttpSession session, @RequestParam long id, @Valid User user, BindingResult result) {
		if (result.hasErrors()) {
			return "/adminReview";
		}
		repo.save(user);
		return "statusAdmin";

	}

	@GetMapping("/statusAdmin")
	public String statusCheck(HttpSession session, @RequestParam("status") String status) {
		return "statusAdmin";
	}
	
//	Exception handling 
	@ExceptionHandler(value=Exception.class)
	public String exceptionHandlerGeneric() {
		return "exceptionPage";
		
	}
}
