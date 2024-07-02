package com.cjc.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.Model.Employee;
import com.cjc.Service.EmployeeService;

@Controller
public class HomeController {

	@Autowired
	private EmployeeService service;

	public HomeController() {
		System.out.println("HomeController :: cont");
	}

	@RequestMapping("/")
	public String landingPage() {
		System.out.println("landingPage :: call");
		return "index";
	}

	@RequestMapping("/logpage")
	public String loadingPage() {
		System.out.println("loadingPage :: call");

		return "login";
	}

	@RequestMapping("/log")
	public String loginCheck(@RequestParam String uname, @RequestParam String pass, Model model) {

		System.out.println("loginCheck :: call");
		if (uname.equals("admin") && pass.equals("admin@123")) {
			List<Employee> empList = service.getAllEmployeeDetails();
			System.out.println(empList);
			model.addAttribute("data", empList);
			return "success";
		} else {

			return "login";

		}
	}

	@RequestMapping("/regpage")
	public String registerPage() {
		System.out.println("registerPage :: call");

		return "register";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String registerEmployee(@ModelAttribute Employee employee) {
		System.out.println("registerEmployee :: call");
		System.out.println(employee);
		service.registerEmployee(employee);
		return "login";
	}

	@RequestMapping("/delete")
	public String deleteEmployee(@RequestParam int eid, Model model) {
		System.out.println("We are deleteting Employee" + eid);
		List<Employee> empList = service.deleteEmployee(eid);
		model.addAttribute("data", empList);
		return "success";
	}

	@RequestMapping("/edit")
	public String editEmployee(@RequestParam int eid, Model model) {
		System.out.println("editEmployee :: call");
		Employee emp = service.editeEmployee(eid);
		model.addAttribute("data",emp);

		return "update";
	}

	@RequestMapping("/up")
	public String updateEmployee(@ModelAttribute Employee employee) {
		System.out.println("updateEmployee :: call");
		service.updateEmployee(employee);
		return "login";
	}
}
