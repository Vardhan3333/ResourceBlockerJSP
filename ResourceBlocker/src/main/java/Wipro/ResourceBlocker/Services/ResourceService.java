package Wipro.ResourceBlocker.Services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Wipro.ResourceBlocker.Model.Resources;
import Wipro.ResourceBlocker.Repository.ResourcesRepo;
@Service
public class ResourceService implements ResourceInterface{
@Autowired
private ResourcesRepo resourcerepo;
public List<Resources> getResources(){
List<Resources> resources=resourcerepo.findAll();
return resources;
}
public List<Resources> searchResources(String location,String rtype,boolean availability){
List<Resources> resources = resourcerepo.findAll();
List<Resources> reso = new ArrayList <Resources>();
for(int i=0; i<resources.size();i++) {
if(location.equals(resources.get(i).getLocation()) && rtype.equals(resources.get(i).getRtype()) && availability==false){
reso.add(resources.get(i));
}
}
return reso;
}
public void find(Integer id) {
Resources resource=resourcerepo.findById(id).get();
Resources newResources=resource;
newResources.setAvailability(true);
resourcerepo.delete(resource);
resourcerepo.save(newResources);
}
public Resources seach(int rid) {
Resources resource=resourcerepo.findById(rid).get();
return resource;
}
}
