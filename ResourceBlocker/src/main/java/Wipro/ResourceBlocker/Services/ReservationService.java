package Wipro.ResourceBlocker.Services;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Wipro.ResourceBlocker.Model.Reservation;
import Wipro.ResourceBlocker.Repository.ReservationRepo;
@Service
public class ReservationService {
	@Autowired
	private ReservationRepo reservationrepo;
	public List<Reservation> reserver(int revid, String designation , int eid, String ename, String location, String start_date, String end_date){
	Reservation res = new Reservation();
	res.setRevid(revid);
	res.setEid(eid);
	res.setEname(ename);
	res.setLocation(location);
	res.setStart_date(start_date);
	res.setEnd_date(end_date);
	reservationrepo.save(res);
	List<Reservation> reserved = reservationrepo.findAll();
	return reserved;
	}
	public List<Reservation> bookings(int eid){
	List<Reservation> emplist = reservationrepo.findAll();
	List<Reservation> mybook = new ArrayList<>();
	for(int i=0;i<emplist.size();i++) {
	if(emplist.get(i).getEid()==eid){
	mybook.add(emplist.get(i));
	}
	}
	return mybook;
	}
	public List<Reservation> cancel(int revid,int eid){
	List<Reservation> emplist = reservationrepo.findAll();
	List<Reservation> mybook = new ArrayList<>();
	for(int i=0;i<emplist.size();i++) {
	if(emplist.get(i).getEid()==eid) {
	mybook.add(emplist.get(i));
	}
	}
	for(int i=0;i<mybook.size();i++) {
	if(mybook.get(i).getRevid()==revid) {
	mybook.remove(i);
	reservationrepo.deleteById(revid);
	}
	}
	return mybook;
	}
	public void save(String ename,String location, int eid1, String designation, String start_date, String end_date) {
	Reservation r1=new Reservation();
	r1.setEid(eid1);
	r1.setDesignation(designation);
	r1.setEname(ename);
	r1.setStart_date(start_date);
	r1.setEnd_date(end_date);
	r1.setLocation(location);
	reservationrepo.save(r1);

	}
	
	}
