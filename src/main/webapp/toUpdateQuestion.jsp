<html>
<head>
<link rel="stylesheet" href="style2.css">
</head>
<body>

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