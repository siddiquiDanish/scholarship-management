package com.StudentScholarship.scholarshipmanagemet.controller;

/**
 * @author Danish
 *
 */
import java.sql.Date;
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

import com.StudentScholarship.scholarshipmanagemet.model.User;
import com.StudentScholarship.scholarshipmanagemet.service.UserDAOService;
import com.StudentScholarship.scholarshipmanagemet.validators.UserValidator;

@Controller
public class UserController {

	@Autowired
	UserDAOService userDaoService;

	@Autowired
	UserValidator userValidator;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String userRolePage() {
		return "firstpage";
	}

//	New Student Registration 
	@RequestMapping("/newUser")
	public String newUserRegister(ModelMap model) {
		model.addAttribute("user", new User());
		return "newUser";
	}

	@PostMapping(value = "/newUser")
	public String newUserRegister(@Valid @ModelAttribute("user") User user, BindingResult result, HttpSession session) {
		userValidator.validate(user, result);
		if (result.hasErrors()) {
			return "newUser";
		}
		userDaoService.registerUser(user);
		session.setAttribute("userid", user.getId());
		return "studentLogin";
	}

//	 Student Login
	@RequestMapping(value = "/studentLogin", method = RequestMethod.GET)
	public String studentLoginPage(ModelMap model) {
		model.addAttribute("user", new User());
		return "studentLogin";
	}

	@PostMapping(value = "/studentLogin")
	public String login(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpSession session, RedirectAttributes r, ModelMap model) {
		boolean success = userDaoService.authenticateUser(email, password);

		if (email.length() < 1) {
			r.addFlashAttribute("error", "Email field cannot be blank.");
			return "redirect:/studentLogin";
		} else if (password.length() < 1) {
			r.addFlashAttribute("error", "Please enter your password.");
			return "redirect:/studentLogin";
		} else if (!success) {
			r.addFlashAttribute("error", "Email and password do not match.");
			return "redirect:/studentLogin";
		} else {
			User user = userDaoService.findByEmail(email);
			Long id = user.getId();
			session.setAttribute("userid", id);
			model.addAttribute("user", user);
			return "studentHome";
		}
	}

//	Student HomePage
	@RequestMapping("/studenthome")
	public String studentHomePage(HttpSession session, ModelMap model) {
		Long userid = (Long) session.getAttribute("userid");
		User user = userDaoService.findUserById(userid);
		model.addAttribute("user", user);
		return "studentHome";
	}

// 	Application Form
	@GetMapping("/apply")
	public String applyOnline(@Valid User user, ModelMap model) {
		model.addAttribute("application", new User());
		return "applicationform";
	}

	@PostMapping("/apply")
	public String applyOnline(HttpSession session, @Valid User user, @RequestParam("mobileNumber") String mobileNumber,
			@RequestParam("aadharNumber") String aadharNumber, @RequestParam("dateOfBirth") Date dateOfBirth,
			@RequestParam("gender") String gender, @RequestParam("stateOfDomecile") String stateOfDomecile,
			@RequestParam("percentMarks") double percentMarks, @RequestParam("familyIncome") double familyIncome,
			@RequestParam("haveCertificates") String haveCertificates,
			@RequestParam("haveBankkAccount") String haveBankkAccount, @RequestParam("category") String category) {
		Long userid = (Long) session.getAttribute("userid");
		user = userDaoService.findUserById(userid);

		userDaoService.application(user, mobileNumber, aadharNumber, dateOfBirth, gender, stateOfDomecile, percentMarks,
				familyIncome, haveCertificates, haveBankkAccount, category);
		return "redirect:/submitted";
	}

	@RequestMapping(value = "/submitted", method = RequestMethod.GET)
	public String submission() {
		return "submitted";
	}

// 	Application HISTORY
	@RequestMapping(value = "/applicationhistory", method = RequestMethod.GET)
	public String viewApplicationHistory(ModelMap model, HttpSession session) {
		Long userid = (Long) session.getAttribute("userid");
		User user = userDaoService.findUserById(userid);
//		String email = user.findByEmail();
		model.addAttribute("user", user);

		return "viewhistory";
	}

// 	Check Status
	@RequestMapping(value = "/status", method = { RequestMethod.GET, RequestMethod.POST })
	public String checkStatus(ModelMap model, HttpSession session) {
		Long id = (Long) session.getAttribute("userid");
		User user = userDaoService.findUserById(id);
		model.addAttribute("user", user);
		return "status";
	}

// 	Logout
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

//	FOR EXCEPTION HANDLING
	@ExceptionHandler(value = Exception.class)
	public String exceptionHandling() {
		return "exceptionPage";

	}

}
