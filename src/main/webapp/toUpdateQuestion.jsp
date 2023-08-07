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
<h1 style="color:black">Update question</h1>

     <form action="testUpdateQuestion.jsp">
             <div class="form-outline mb-4">
                  <input type="text" name="id" value="Id..." onclick="this.value=''" /><br/>
              </div>
         <div class="form-outline mb-4">
             <input type="text" name="questionDescription" placeholder="Question..."/><br/>
         </div>
         <div class="form-outline mb-4">
             <input type="text" name="category"  placeholder="Category..."/><br/>
         </div>
         <div class="form-outline mb-4">
             <input type="text" name="difficulty" placeholder="Difficulty..."/><br/>
         </div>
         <div class="form-outline mb-4">
             <input type="text" name="correctAnswer" placeholder="Correct answer..."/><br/>
         </div>
         <div class="form-outline mb-4">
              <input type="text" name="incorrectAnswer1" placeholder="IncorrectAnswer 1..."/><br/>
          </div>
          <div class="form-outline mb-4">
             <input type="text" name="incorrectAnswer2" placeholder="IncorrectAnswer 2..." /><br/>
         </div>
         <div class="form-outline mb-4">
             <input type="text" name="incorrectAnswer3" placeholder="IncorrectAnswer 3..." /><br/>
         </div>


     <br/>
     <input type="submit" value="Update Question" class="btn btn-primary btn-block"/>
     </form>

</body>
</html>