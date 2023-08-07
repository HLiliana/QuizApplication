<html>
<head>
<link rel="stylesheet" href="style2.css">
    <Title> Update quiz </title>
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

<h1 style="color:black"> Update quiz by name </h1>
<form action="updateQuizByName.jsp" method="post">
<div class="form-outline mb-4">
                             <input type="text" name="name" value="Name..." onclick="this.value=''" required/>
                             <br/>
                         </div>
    <div class="form-outline mb-4">
                             <input type="text" name="newName" value="New name..." onclick="this.value=''" />
                             <br/>
                         </div>
    <div class="form-outline mb-4">
               <input type="text" name="newCategory" value="New category..." onclick="this.value=''" />
               <br/>
                   </div>

   <div class="form-outline mb-4">
                <input type="text" name="newDifficulty" value="New difficulty..." onclick="this.value=''" />
                <br>
                    </div>
                    <br>
                <input type="submit" value="Update quiz by name"/>
    </form>


</body>
</html>