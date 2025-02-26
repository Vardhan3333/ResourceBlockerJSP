package Wipro.ResourceBlocker.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Wipro.ResourceBlocker.Model.Employee;
import Wipro.ResourceBlocker.Model.Reservation;
import Wipro.ResourceBlocker.Model.UserLogin;
import Wipro.ResourceBlocker.Repository.EmployeeRepo;
import jakarta.validation.Valid;
@Service
public class EmployeeService implements EmployeeInterface{
@Autowired
private EmployeeRepo employeerepo;
public List<Employee> getEmployee(){
List<Employee> employee = employeerepo.findAll();
return employee;
}
public Boolean logintest(Employee employee) {
List<Employee> emp = employeerepo.findAll();
for(int i=0;i<emp.size();i++) {
if(emp.get(i).getEmail().equals(employee.getEmail()) && emp.get(i).getPassword().equals(employee.getPassword())){
return true;
}
}
return false;
}
public String getByEmail(String email) {
Employee employee=employeerepo.findByEmail(email);
return employee.getEname();
}
public void saveprofile(String email1,String email, String ename, String location, String designation) {
Employee emp = employeerepo.findByEmail(email1);
emp.setEmail(email);
emp.setEname(ename);
emp.setLocation(location);
emp.setDesignation(designation);
employeerepo.save(emp);
}

public int find(String email) {
List<Employee> t = employeerepo.findAll();
for(int i=0;i<t.size();i++) {
if(t.get(i).getEmail().equals(email)) {
return t.get(i).getEid();
}
}
return 0;
}

public String find1(String st) {
List<Employee> t = employeerepo.findAll();
for(int i=0;i<t.size();i++) {
if(t.get(i).getEmail().equals(st)) {
return t.get(i).getEname();
}
}
return "";
}


public Employee getEmp(String email) {
Employee employee=employeerepo.findByEmail(email);
return employee;
}
public void register(String email, String ename, String location, String designation, String password, int eid) {
Employee emp=new Employee();
emp.setEid(eid);
emp.setEmail(email);
emp.setEname(ename);
emp.setLocation(location);
emp.setDesignation(designation);
emp.setPassword(password);
employeerepo.save(emp);
}
public void changepass1(String email, String password) {
List<Employee> emp = employeerepo.findAll();
for(int i=0;i<emp.size();i++) {
	if(emp.get(i).getEmail().equals(email)) {
emp.get(i).setPassword(password);
}
}
employeerepo.saveAll(emp);
//return null;
}
public Employee hel(int eid) {
	List<Employee> emp = employeerepo.findAll();
	for(int i=0;i<emp.size();i++) {
		if(emp.get(i).getEid()==eid) {
			return emp.get(i);
}
}
return null;
}
@Override
public Employee save(Employee e) {
	// TODO Auto-generated method stub
	return null;
}
@Override
public Employee findByEmail(String email) {
	// TODO Auto-generated method stub
	return null;
}
@Override
public Employee findByEmailAndPassword(String email, String password) {
	// TODO Auto-generated method stub
	return null;
}
}