package Wipro.ResourceBlocker.Controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import Wipro.ResourceBlocker.Services.EmployeeService;
import Wipro.ResourceBlocker.Services.ReservationService;
import Wipro.ResourceBlocker.Services.ResourceService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller

public class ResourceController {
@Autowired
private HttpSession session;
@Autowired
private ResourceService resourceservice;
@Autowired
private ReservationService reservationservice;
@Autowired
private EmployeeService employeeservice;
@GetMapping("/resources")
public String getResources(Model model) {
String email=(String)session.getAttribute("email");
if(email==null) {
return "redirect:login";
}
List<Resources> resources = resourceservice.getResources();
model.addAttribute("resources",resources);
return "resources";
}
@GetMapping("/searchedresources")
public String searchResources(@RequestParam("location") String location,@RequestParam("rtype") String rtype,Model model,boolean availability) {
String email=(String)session.getAttribute("email");
if(email==null) {
return "redirect:login";
}
List<Resources> resources = resourceservice.searchResources(location,rtype,availability);
model.addAttribute("resources",resources);
return "searched";
}
@GetMapping("/available")
public String find(@RequestParam("id") Integer id, Model model) {
resourceservice.find(id);
return "";
}
@GetMapping("/home")
public String home(HttpServletRequest request, Model model) {
String email=(String)session.getAttribute("email");
if(email==null) {
return "redirect:login";
}
HttpSession session = request.getSession(false);
String email1=(String)session.getAttribute("email");
String ename1=employeeservice.find1(email1);
model.addAttribute("ename",ename1);
//model.addAttribute("user", new Employee());
return "home";
}
@GetMapping("/")
public String login() {
return "login";
}
@GetMapping("/save/{id}")
public String save() {
return "redirect:/res";
}
@GetMapping("/res")
public String res() {
return "res";
}
@GetMapping("/blocking")
public String block(HttpServletRequest request,Model model){
String email=(String)session.getAttribute("email");
if(email==null) {
return "redirect:login";
}
HttpSession session = request.getSession(false);
String email1=(String)session.getAttribute("email");

String ename1=employeeservice.find1(email1);
return "block";
}
@PostMapping("/block")
public String viewbook(@RequestParam("ename")String ename,@RequestParam("location")String location,@RequestParam("eid")int eid1,@RequestParam("designation")String designation,@RequestParam("start_date")String start_date,@RequestParam("end_date")String end_date, HttpServletRequest request, Model model) {
String email=(String)session.getAttribute("email");
if(email==null) {
return "redirect:login";
}
reservationservice.save(ename,location,eid1,designation,start_date,end_date);
HttpSession session = request.getSession(false);
String email1=(String)session.getAttribute("email");
model.addAttribute("employee2",email1);
String ename1=employeeservice.find1(email1);
model.addAttribute("ename",ename1);
return "home";
}
@GetMapping("/mybookings")
public String mybookings(HttpServletRequest request,Model model) {
String email=(String)session.getAttribute("email");
if(email==null) {
return "redirect:login";
}
HttpSession session = request.getSession(false);
String email1=(String)session.getAttribute("email");
int eid=employeeservice.find(email1);
List<Reservation> r= reservationservice.bookings(eid);
model.addAttribute("revlist", r);
return "mybookings";
}
@GetMapping("/cancel")
public String cancelbooking(@RequestParam("revid1")int revid, HttpServletRequest request,Model model) {
String email=(String)session.getAttribute("email");
if(email==null) {
return "redirect:login";
}
HttpSession session = request.getSession(false);
String email1=(String)session.getAttribute("email");
int eid=employeeservice.find(email1);
List<Reservation> r1 = reservationservice.cancel(revid,eid);
model.addAttribute("revlist",r1);
return "mybookings";
}
}
	

