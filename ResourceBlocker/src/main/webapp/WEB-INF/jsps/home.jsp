<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
    <%-- <%@ page import ="Wipro.ResourceBlocker.Model.Employee"  %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content "width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Resources</title>
<style>

</style>
</head>
<body>
<%String ename = (String)request.getAttribute("ename"); %>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Resource Blocker</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <!-- <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home"><b>Home</b></a>
        </li> -->
        <li class="nav-item">
          <a class="nav-link" href="resources"><b>resources</b></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/mybookings"><b>My bookings</b></a>
        </li>
      </ul>
      </div>
      <div class="dropdown">

	<button class ="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><%=ename %></button>
	
	<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
	
	<a class ="dropdown-item" href="/forget">Password Update</a>
	
	
	<!-- <div class="dropdown-menu" aria-labelledby="dropdownMenuButton"> -->
	
	<a class ="dropdown-item" href="/updateemp">update profile</a>
	
	<!-- </div> -->
	</div>
	
	</div>
      
     <!--  <div>
      <a style="color:black" class="nav-link" href="/forget"> Password Update</a>
     </div>
     <div>
      <a style="color:black" class="nav-link" href="/updateemp">update profile</a>
      </div> -->
      <div>
      <a style="color:black" class="nav-link" href="/logout">Logout</a>
      </div>
      
    
  </div>
  
</nav>
<div class=wel>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>