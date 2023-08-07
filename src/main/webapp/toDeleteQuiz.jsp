
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
  <li><a href="userQuiz.jsp">Back</a></li>
  <li style="float:right"><a href="welcomeUser.jsp">Homepage</a></li>

</ul>
<h1 style="color:black"> Delete a quiz </h1>

<form action="deleteQuiz.jsp">
         <div class="form-outline mb-4">
             <input type="text" name="name" value="Name..." onclick="this.value=''" required/><br/>
         </div>
         </br>
          <input type="submit" value="Delete a quiz"/>
         </form>

</body>
</html>