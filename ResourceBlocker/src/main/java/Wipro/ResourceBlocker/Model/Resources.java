package Wipro.ResourceBlocker.Model;

import org.springframework.stereotype.Component;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
@Component
public class Resources {
	@Id
	@GeneratedValue
	private int Rid;
	private String Rtype;
	private String Rname;
	private String Location;
	private int Capacity;
	private boolean availability;
	public boolean getAvialability() {
		return availability;
	}
	public void setAvailability(boolean Availability) {
		Availability=availability;
	}
	public int getRid() {
		return Rid;
	}
	public void setRid(int rid) {
		Rid = rid;
	}
	public String getRtype() {
		return Rtype;
	}
	public void setRtype(String rtype) {
		Rtype = rtype;
	}
	public String getRname() {
		return Rname;
	}
	public void setRname(String rname) {
		Rname = rname;
	}
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
	public int getCapacity() {
		return Capacity;
	}
	public void setCapacity(int capacity) {
		Capacity = capacity;
	}
	@Override
	public String toString() {
		return "Resources [Rid=" + Rid + ", Rtype=" + Rtype + ", Rname=" + Rname + ", Location=" + Location
				+ ", Capacity=" + Capacity + "]";
	}
	

}
