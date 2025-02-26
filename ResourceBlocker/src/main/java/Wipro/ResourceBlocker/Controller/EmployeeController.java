package Wipro.ResourceBlocker.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.bind.BindResult;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Wipro.ResourceBlocker.Model.Employee;
import Wipro.ResourceBlocker.Model.Reservation;
import Wipro.ResourceBlocker.Model.Resources;
import Wipro.ResourceBlocker.Model.UserLogin;
import Wipro.ResourceBlocker.Repository.EmployeeRepo;
import Wipro.ResourceBlocker.Services.EmployeeService;
import Wipro.ResourceBlocker.Services.ReservationService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class EmployeeController {
	@Autowired
	private EmployeeService employeeservice;
	
	@Autowired
	private ReservationService reservationservice;
	
	@Autowired
	private EmployeeRepo employeerepo;
	@Autowired
	private HttpSession session;
	
	
//	@GetMapping("/employee")
//	public String getEmployee(Model model) {
//		List<Employee> employee = employeeservice.getEmployee();
//		model.addAttribute("employee",employee);
//		return "employee";
//	}
	
	@GetMapping("/login")

	public String login(Model model) {
	model.addAttribute("user", new Employee());
	model.addAttribute("l1", false);
	return "login";
	}
	@PostMapping("/logintest")
	public String loginTest(@ModelAttribute("user") Employee employee,BindingResult result, ModelMap model, HttpServletRequest request, @RequestParam String email, @RequestParam String password ) {
	Employee employee2=employeeservice.getEmp(email);
	if(result.hasErrors()) {
	model.addAttribute("l1", true);
	return "login";
	}
	else {
	if(employeeservice.logintest(employee)) {
	HttpSession session = request.getSession(false);
	session.setAttribute("email", employee.getEmail());
	model.addAttribute("employee2",employee2);
	model.addAttribute("ename", employeeservice.getByEmail(email));
	String email1=(String)session.getAttribute("email");
	String ename1=employeeservice.find1(email1);
	model.addAttribute("ename",ename1);
	return "home";
	}
	else {
	model.addAttribute("user", new Employee() );
	model.addAttribute("l1", true);
	return "login";
	}
	}
	}
	@GetMapping("/registration")
	public String registration(Model model) {
	model.addAttribute("user",new Employee());
	model.addAttribute("b1",false);
	return "registration";
	}
	@PostMapping("/register")
	public String register(@RequestParam("eid") int eid ,@RequestParam("email") String email,@RequestParam("ename") String ename,@RequestParam("location") String location,@RequestParam("designation") String designation,@RequestParam("password") String password ,@RequestParam("password1") String password1,HttpServletRequest request,Model model) {
	if(password.equals(password1)) {
	employeeservice.register(email,ename,location,designation,password,eid);
	model.addAttribute("user",new Employee());
	model.addAttribute("l1", false);
	return "login";
	}
	else {
	model.addAttribute("b1",true);
	return "registration";
	}
	}
   @GetMapping("/updateemp")
	public String updatepro(HttpServletRequest request,Model model) {
	String email=(String)session.getAttribute("email");
	if(email==null) {
	return "redirect:login";
	}
	HttpSession session = request.getSession(false);
	String email1=(String)session.getAttribute("email");
	int eid=employeeservice.find(email1);
	Employee e=employeeservice.hel(eid);
	model.addAttribute("e", e);
	model.addAttribute("eid",eid);
	model.addAttribute("user", new Employee());
	return "updateemp";
	}
	@GetMapping("/forget")
	public String changepass1(Model model) {
	String email=(String)session.getAttribute("email");
	if(email==null) {
	return "redirect:login";
	}
	model.addAttribute("b", false);
	model.addAttribute("changepass", new Employee());
	return "changepass";
	}
	@GetMapping("/logout")
	public String logout(Model model) {
	model.addAttribute("user",new Employee());
	model.addAttribute("l1", false);
	session.removeAttribute("email");
	session.invalidate();
	String name =(String)session.getAttribute("email");
	return "/login";
	}
	
	
	@PostMapping("/saveprofile")
	public String saveprofile(@RequestParam("email") String email,@RequestParam("ename") String ename,@RequestParam("location") String location,@RequestParam("designation") String designation,HttpServletRequest request,Model model) {
	HttpSession session = request.getSession(false);
	String email1=(String)session.getAttribute("email");
	model.addAttribute("employee2",email1);
	model.addAttribute("employee2",ename);
	String ename1=employeeservice.find1(email1);
	model.addAttribute("ename",ename1);
	employeeservice.saveprofile(email1,email,ename,location,designation);
	return "home";
	}
	
	
	@GetMapping("/change")
	public String change(@RequestParam("password1") String password1,@RequestParam("password2") String password2, @RequestParam("password3") String password3,HttpServletRequest request, Model model) {
	if(password2.equals(password3) && !password1.equals(password2)) {
	HttpSession session = request.getSession(false);
	String email1=(String)session.getAttribute("email");
	model.addAttribute("employee2",email1);
	employeeservice.changepass1(email1,password2);
	String ename1=employeeservice.find1(email1);
	model.addAttribute("ename",ename1);
	return "home";
	}
	else {
	model.addAttribute("b", true);
	return "changepass";
	}
	}
	}