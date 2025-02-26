package Wipro.ResourceBlocker.Services;

import java.util.List;

import Wipro.ResourceBlocker.Model.Employee;

public interface EmployeeInterface {
	public List<Employee> getEmployee();
	//public  Employee getUser(Integer id);
	public Employee save(Employee e);
	public Employee findByEmail(String email);
	public Employee findByEmailAndPassword(String email,String password);
	
}
