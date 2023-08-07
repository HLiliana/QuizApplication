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

<h1 style="color:black">Add a new question</h1>

     <form action="addQuestion.jsp">
         <div class="form-outline mb-4">
             <input type="text" name="questionDescription" value="Question..." onclick="this.value=''" required/><br/>
         </div>
         <div class="form-outline mb-4">
             <input type="text" name="category"  value="Category..." onclick="this.value=''" required/><br/>
         </div>
         <div class="form-outline mb-4">
             <input type="text" name="difficulty" value="Difficulty..." onclick="this.value=''" required/><br/>
         </div>
         <div class="form-outline mb-4">
             <input type="text" name="correctAnswer" value="Correct answer..." onclick="this.value=''" required/><br/>
         </div>
         <div class="form-outline mb-4">
              <input type="text" name="incorrectAnswer1" value="IncorrectAnswer 1..." onclick="this.value=''" required/><br/>
          </div>
          <div class="form-outline mb-4">
             <input type="text" name="incorrectAnswer2" value="IncorrectAnswer 2..." onclick="this.value=''" required/><br/>
         </div>
         <div class="form-outline mb-4">
             <input type="text" name="incorrectAnswer3" value="IncorrectAnswer 3..." onclick="this.value=''" required/><br/>
         </div>


     <br/>
     <input type="submit" value="Add question" class="btn btn-primary btn-block"/>
     </form>

</body>
</html>