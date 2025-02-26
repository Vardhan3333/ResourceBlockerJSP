package Wipro.ResourceBlocker.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import Wipro.ResourceBlocker.Model.Employee;
@Repository
public interface EmployeeRepo extends JpaRepository<Employee,Integer>{
	public Employee save(Employee e);
	public Employee findByEmail(String email);
	public Employee findByEmailAndPassword(String ename,String password);

}