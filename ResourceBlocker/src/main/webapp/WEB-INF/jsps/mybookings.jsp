<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
    <%@ page import ="Wipro.ResourceBlocker.Model.Reservation"  %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content "width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Resources</title>
<style type="text/css">
	.ser{
	padding-left: 350px;
		
	}
	.fo{
		align-items: center;
	}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Resource Blocker</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active " aria-current="page" href="home">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="resources">resources</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/mybookings">My bookings</a>
        </li>
      </ul>
      
    </div>
  </div>
</nav>
<%List<Reservation> res=(List<Reservation>)request.getAttribute("revlist"); %>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Revid</th>
      <th scope="col">Eid</th>
      <th scope="col">Ename</th>    
      <th scope="col">Designation</th>
      <th scope="col">Start_Date</th>
      <th scope="col">End_Date</th>
      <th scope="col">Cancel</th>
    </tr>
  </thead>
  <tbody>
    <tr>  <%for(int i=0;i<res.size();i++) { %>
      <td><%= res.get(i).getRevid() %></td>
    <td><%= res.get(i).getEid() %></td> 
    <td><%= res.get(i).getEname()%></td>
    <td><%= res.get(i).getDesignation() %></td>
    <td><%= res.get(i).getStart_date() %></td>
    <td><%= res.get(i).getEnd_date() %></td>
    <form action="/cancel" method="get" onSubmit="return click1()" >
    <td><input type="submit" value="cancel" /></td>
    <input type="hidden"   name="revid1" value="<%= res.get(i).getRevid()%>" id="revid1" />
   <script>
    var v = document.getElementById("revid1").value;
    function click1(){
    if(confirm("Confirm Cancel Booking  ")){
    return true;
    }
    else{
    return false;
    }
    }
    </script>
    </form>
    </tr>
    <%} %>
  </tbody>
</table>
<br><br>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>