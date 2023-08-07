
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
  <li><a href="mainQuestion.jsp">Back</a></li>
  <li style="float:right"><a href="welcomeUser.jsp">Homepage</a></li>

</ul>
<h1 style="color:black">Find question</h1>

     <form action="findQuestionById.jsp">

         <div class="form-outline mb-4">
         <input type="text" name="id" value="Enter question number..." onclick="this.value=''" required/><br/>
         </div>
         <br/>
         <input type="submit" value="Find" class="btn btn-primary btn-block"/>
         </form>

</body>
</html>