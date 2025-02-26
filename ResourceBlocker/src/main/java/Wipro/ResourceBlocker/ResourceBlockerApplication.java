package Wipro.ResourceBlocker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Component;

import Wipro.ResourceBlocker.Model.Employee;
import Wipro.ResourceBlocker.Repository.EmployeeRepo;


@SpringBootApplication
@Component
public class ResourceBlockerApplication {

	public static void main(String[] args) {
		SpringApplication.run(ResourceBlockerApplication.class, args);
	}
	@Autowired
	private EmployeeRepo emp1;
	public void run(String ...args)throws Exception{
		Employee u1 = new Employee();
		//System.out.print("Hello");
		u1.setEid(100);
		u1.setEname("Srikanth");
		u1.setDesignation("Project Engineer");
		u1.setLocation("Bangalore");
		emp1.save(u1);
	}
	

}
