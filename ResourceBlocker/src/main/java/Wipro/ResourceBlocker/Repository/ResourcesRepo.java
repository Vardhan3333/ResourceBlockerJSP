package Wipro.ResourceBlocker.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import Wipro.ResourceBlocker.Model.Employee;
import Wipro.ResourceBlocker.Model.Resources;
@Repository
public interface ResourcesRepo  extends JpaRepository<Resources, Integer>{
	

}
