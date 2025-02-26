 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<style>
    body {
        margin: 0;
        padding: 0;
        background-image: url(''); /* Replace with your background image URL */
        background-size: cover;
        background-repeat: no-repeat;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .mainContainer {
        width: 400px;
        margin: auto;
        padding: 20px;
        background-color: rgba(255, 255, 255, 1); /* Remove opacity */
        border-radius: 5px;
        text-align: center;
        box-sizing: border-box;
    }

    .headingsContainer {
        margin-bottom: 20px;
    }

    label {
        display: block;
        text-align: left;
    }

    input {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
    }

    button {
        background-color: skyblue;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    button:hover {
        background-color: beige;
        color: black;
    }

    .mainContainer a {
        color: grey;
    }

    .mainContainer a:hover {
        color: black;
    }
</style>
</head>
<body>
<%boolean b1=(boolean)request.getAttribute("b1");%>
<div class="mainContainer">
<%if(b1) { %>
<h1>Password field doesn't Match</h1>
<%} %>
<div class="mainContainer">
    <form action="/register" method="post" onsubmit="return validateForm()">
        <div class="headingsContainer">
            <h2>Sign up</h2>
        </div>
        <label for="Email">Email</label>
        <input name="email" placeholder="Enter Email" id="email" />

        <br>

        <label for="Name">Name</label>
        <input placeholder="Enter Name" name="ename" id="ename" />

        <br>

        <label for="Location">Location</label>
        <input name="location" placeholder="Enter Location" id="location" />

        <br>

        <label for="eid">Employee ID</label>
        <input name="eid" placeholder="Enter Employee Id" id="eid" />

        <br>

        <label for="Designation">Designation</label>
        <input name="designation" placeholder="Enter Designation" id="designation" />

        <br>

        <label for="Password">Create Password</label>
        <input name="password" placeholder="Create Password" id="password" type="password"/>
        
         <br>

        <label for="Password1">Confirm Password</label>
        <input name="password1" placeholder="Confirm Password" id="password1" type="password" />

        <br><br>
        <button type="submit">Sign up now</button>
        <div class="mainContainer">Already have an account? <a href="login" id="login">Login</a></div>
    </form>
    
   <script>
    function validateForm() {
        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;

        // Email validation
        if (!validateEmail(email)) {
            alert("Please enter a valid email address with '@gmail.com'");
            return false;
        }

        // Password validation
        if (!validatePassword(password)) {
            alert("Please enter a valid password with at least 8 characters and one capital letter");
            return false;
        }

        // Name validation
        var name = document.getElementById("ename").value;
        if (!validateName(name)) {
            alert("Name should only contain alphabets");
            return false;
        }

        // Eid validation
        var eid = document.getElementById("eid").value;
        if (!validateEid(eid)) {
            alert("Eid should only contain numbers");
            return false;
        }

        return true;
    }

    function validateEmail(email) {
        var regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return regex.test(email) && email.endsWith("@gmail.com");
    }

    function validatePassword(password) {
        var regex = /^(?=.*[A-Z]).{8,}$/;
        return regex.test(password);
    }

    function validateName(name) {
        var regex = /^[A-Za-z]+$/;
        return regex.test(name);
    }

    function validateEid(eid) {
        var regex = /^\d+$/;
        return regex.test(eid);
    }
</script>
</div>
</body>
</html>
 
 
 