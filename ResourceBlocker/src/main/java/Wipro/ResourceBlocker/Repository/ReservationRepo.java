package Wipro.ResourceBlocker.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import Wipro.ResourceBlocker.Model.Employee;
import Wipro.ResourceBlocker.Model.Reservation;
@Repository
public interface ReservationRepo  extends JpaRepository<Reservation, Integer>{

}
