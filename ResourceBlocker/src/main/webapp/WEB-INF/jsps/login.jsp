<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('https://t4.ftcdn.net/jpg/04/54/57/63/360_F_454576300_AN2dAthqhFl11iIoqHBgl3mpyXyzREnx.jpg');
            background-size: cover;
            background-repeat: no-repeat;
        }

        .container {
            padding: 20px;
            border-radius: 5px;
            text-align: center;
        }

        .container-email-password {
            background-color: rgba(255, 255, 255, 0.8); /* Opacity: 0.8 */
            padding: 20px;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .container-email-password label {
            display: block;
            text-align: left;
        }

        .container-email-password input[type="text"],
        .container-email-password input[type="password"]
        .container-email-password input[type="email"]
         {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
        }

        .container-email-password .forgot-password a {
            color: black;
        }

        .container-email-password .button-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }

        .container-email-password .button-container button {
            background-color: skyblue;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .container-email-password .button-container button:hover {
            background-color: beige;
            color: black;
        }

        .container p.register {
            margin-top: 10px;
        }

        .container a {
            color: grey;
        }

        .container a:hover {
            color: black;
        }
    </style>
</head>
<body>
<%boolean l1=(boolean)request.getAttribute("l1"); %>
<%if(l1) { %>
<div class="headingsContainer">
<p>username or password is wrong :(</p>
<%} %>
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <form:form action="logintest" modelAttribute="user" method="post">
            <div class="headingsContainer">
                <h3>Sign in</h3>
                <div><p>Sign in with your Email and Password</p></div>
            </div>
            <div class="container-email-password">
                <label for="Email">EMAIL</label>
                <input type="email" placeholder="Enter Email" name="email" required />

                <br><br>

                <label for="password">PASSWORD</label>
                <input type="password" placeholder="Enter Password" name="password" required />

                <!-- <div class="forgot-password"><a href="forget">Forgot password?</a></div>
 -->
                <div class="button-container">
                    <button type="submit">Login</button>
                    <p class="register">Not a member? <a href="/registration">Account signup</a></p>
                </div>
            </div>
        </form:form>
    </div>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js">
 
    
    </script>
</body>
</html>
