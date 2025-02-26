<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
    <%@ page import ="Wipro.ResourceBlocker.Model.Resources"  %>
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
          <a class="nav-link active" aria-current="page" href="home">Home</a>
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
<%List<Resources> resource=(List<Resources>)request.getAttribute("resources"); %>
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">rid</th>
      <th scope="col">Location</th>
      <th scope="col">rtype</th>
      <th scope="col">rname</th>
      <th scope="col">capacity</th>
    </tr>
  </thead>
  <tbody>
  <%for(int i=0;i<resource.size();i++){ %>
    <tr>
      <td><%=resource.get(i).getRid() %></td>
    <td><%=resource.get(i).getLocation() %></td> 
    <td><%=resource.get(i).getRtype()%></td>
    <td><%=resource.get(i).getRname()%></td>
    <td><%=resource.get(i).getCapacity()%></td>
      <%} %>
    </tr>
  </tbody>
</table>
<br><br>
<div class=ser>
<form class=fo action="/searchedresources" method="get">
	<input type="text" name="location" placeholder="Enter Location"/>
	<input type="text" name="rtype" placeholder="Enter type" />
	
	
	<input type="submit" value="search" />
	
</form>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>