<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.QuizApplication.repository.QuizRepository" %>
<%@ page import="com.QuizApplication.repository.QuestionRepository" %>
<%@ page import="com.QuizApplication.model.Quiz" %>
<%@ page import="com.QuizApplication.model.Question" %>
<%@ page import="com.QuizApplication.exception.BusinessException" %>
<html>
<head>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.21.4/dist/bootstrap-table.min.css">
<link rel="stylesheet" href="style2.css">
<title>Create quiz</title>
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
<h1 style="color:black">Create quiz</h1>
<div style= "width 100%;" >
    <div style= " width: 50%; margin: 0 0 0 690px;">
        <div style="  width: 20%; height: 100px; background-color: rgba(153,217,234, 0.9); text-color: white;">
     <form action="createQuiz.jsp">
         <div class="form-outline mb-4">
             <input type="text" name="name" value="Name..." onclick="this.value=''" required/><br/>
         </div>
         <div class="form-outline mb-4">
             <input type="text" name="category"  value="Category..." onclick="this.value=''" required/><br/>
         </div>
         <div class="form-outline mb-4">
             <input type="text" name="difficulty" value="Difficulty..." onclick="this.value=''" required/><br/>
         </div>
         <div class="form-outline mb-4">
                  <input type="text" name="numberOfQuestions" value="Enter Number..." onclick="this.value=''" required/><br/>
                          </div>

                    <br/>
                  <input type="submit" value="Create quiz" class="btn btn-primary btn-block"/>
     </form>
         </div>
     </div>
     <br>
     <br>
     <div style=" width: 50%; margin: 0 0 0 690px">
             <div style="  width: 100%;  position: relative; height: 100px; background-color: rgba(153,217,234, 0.9); text-color: white;">
    <table border="2" class="table table-striped table-hover w-50 p-3">
          <thread>
           <tr>
               <th>Category you can use</th>
           </tr>
           </thread>
            <tr>
                <td><p> Sports </p></td>
                </tr>
                <tr>
                <td><p> Geography </p></td>
                </tr>
                <tr>
                <td><p> History </p></td>
                </tr>
                <tr>
                <td><p> Computers </p></td>
                </tr>
                <tr>
                <td><p> Music </p></td>
                </tr>
                <tr>
                <td><p> Film </p></td>
                </tr>
            </tr>

    </table>
        </div>
    </div>
</div>
</body>
</html>