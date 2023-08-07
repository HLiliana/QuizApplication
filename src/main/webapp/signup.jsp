<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ page import="java.util.List" %>
<%@ page import="com.QuizApplication.model.User" %>
<%@ page import="com.QuizApplication.repository.UserRepository" %>
<%@ page import="com.QuizApplication.exception.BusinessException" %>

<html>
<head>
<link rel="stylesheet" href="style2.css">

</head>
<body>
<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #99d9ea;
}

li {
  float: left;
}

li a {
  display: block;
  color: black;
  text-align: center;
  font-weight: bold;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #FFFFFF;
}
</style>


<ul>
  <li><a href="index.jsp">Back</a></li>


</ul>
        <title>SignUp Form</title>
    <h1 style="color:black">Please enter your data: </h1>

    <form action="addUser.jsp">
             <div class="form-outline mb-4">
                 <input type="text" name="username" value="Username..." onclick="this.value=''" required/><br/>
             </div>
             <div class="form-outline mb-4">
                 <input type="text" name="password"  value="Password..." onclick="this.value=''" required/><br/>
             </div>
             <div class="form-outline mb-4">
                 <input type="text" name="confirmPassword" value="Confirm password..." onclick="this.value=''" required/><br/>
             </div>
             <div class="form-outline mb-4">
                 <input type="text" name="email" value="Email..." onclick="this.value=''" required/><br/>
             </div>
             <div class="form-outline mb-4">
                  <input type="text" name="phone" value="Phone number..." onclick="this.value=''" required/><br/>
              </div>
              <br>
             <input type="submit" value="SignUp" class="btn btn-primary">
               <br>
               <br>




</body>
</html>