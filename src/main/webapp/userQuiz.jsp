<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.QuizApplication.repository.QuizRepository" %>
<%@ page import="com.QuizApplication.repository.QuestionRepository" %>
<%@ page import="com.QuizApplication.model.Quiz" %>
<%@ page import="com.QuizApplication.model.Question" %>
<%@ page import="com.QuizApplication.model.User" %>
<%@ page import="com.QuizApplication.repository.UserRepository" %>

<html>
 <head>
    <!-- This will make the table look nicer -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <title>Quiz Application!</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.21.4/dist/bootstrap-table.min.css">
     <link rel="stylesheet" href="styles.css">
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
  <li><a href="welcomeUser.jsp">Back</a></li>
  <li><a href="toCreateAQuiz.jsp">Create Quiz</a></li>
  <li><a href="toUpdateQuiz.jsp">Update quiz</a></li>
  <li><a href="toDeleteQuiz.jsp">Delete quiz</a></li>
  <li style="float:right"><a href="welcomeUser.jsp">Homepage</a></li>


</ul>

         <%
            if (session.getAttribute("successMessageAddQuiz") != null) { %>
            <p><%= session.getAttribute("successMessageAddQuiz") %></p>
            <% session.removeAttribute("successMessageAddQuiz"); %>
         <% } %>
         <%
           if (session.getAttribute("confirmationMessageDelete") != null) { %>
           <p><%= session.getAttribute("confirmationMessageDelete") %></p>
           <% session.removeAttribute("confirmationMessageDelete"); %>
         <%
         } %>
         <%
           if (session.getAttribute("confirmationUpdateMessage") != null) { %>
           <p><%= session.getAttribute("confirmationUpdateMessage") %></p>
           <% session.removeAttribute("confirmationUpdateMessage"); %>
         <%
         } %>




       <h1 style="color:black; margin: auto;"> <strong>My quiz list</strong> </h1>
<br>
<div style="  width: 70%; margin: 0 auto; display:block; height: 500px; overflow-y:scroll; position: relative; display: flex; background-color: rgba(153,217,234, 0.9); text-color: white;"

<table>

   <table border="1" class="table table-striped table-hover w-50 p-3">
      <thread>
       <tr>
           <th>Number</th>
           <th>Name</th>
           <th>Category</th>
           <th>Difficulty</th>
           <th>Play Quiz</th>
           <th>View Quiz</th>

       </tr>
       </thread>
<%
        User authenticatedUser = (User) session.getAttribute("authenticatedUser");

        List<Quiz> userList  = authenticatedUser.getAllQuizzesForSpecificUser(authenticatedUser);
        int count=1;
        for(Quiz quiz : userList){
        %>
        <tr>
            <td><%= count++ %> </td>
            <td><%=quiz.getName() %></td>
            <td><%=quiz.getCategory() %></td>
            <td><%=quiz.getDifficulty() %></td>
            <td><form action="startQuiz.jsp">
            <input type="hidden" name="quizName" value="<%= quiz.getName() %>">
            <input type="submit" value="Play Quiz" />
            </form></td>
            <td><form action="viewQuiz.jsp">
            <input type="hidden" name="quizName" value="<%= quiz.getName() %>">
            <input type="submit" value="View Quiz" />
            </form></td>
        </tr>
        <%
        } %>
</table>
</div>
</body>
</html>