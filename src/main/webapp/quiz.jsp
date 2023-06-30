<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.QuizApplication.repository.QuizRepository" %>
<%@ page import="com.QuizApplication.repository.QuestionRepository" %>
<%@ page import="com.QuizApplication.model.Quiz" %>
<%@ page import="com.QuizApplication.model.Question" %>
<%@ page import="com.QuizApplication.controller.HomePageController" %>
<%@ page import="com.QuizApplication.controller.LoginUserServlet" %>

<html>
 <head>
    <!-- This will make the table look nicer -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>QuizME</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.21.4/dist/bootstrap-table.min.css">
  </head>
<body>
    <table border="1" class="table table-striped table-hover w-50 p-3">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Category</th>
            <th>Difficulty</th>
            <th>Question </th>
            </tr>
        <%

                    QuizRepository repository = new QuizRepository();

                    List<Quiz> quizList = repository.getAllQuizzes();
                    for (Quiz quiz : quizList) {
                %>
                    <tr>
                        <td><%= quiz.getId() %></td>
                        <td><%= quiz.getName() %></td>
                        <td><%= quiz.getCategory() %></td>
                        <td><%= quiz.getDifficulty() %></td>
                        <td><%= quiz.getQuestionsAsCsv() %></td>
                    </tr>
                <% } %>
 </table>


 <br/>
 <br/>
 <h2>Add a quiz</h2>

     <form action="addQuiz.jsp">
         <div class="form-outline mb-4">
             <input type="text" name="name" value="Name..." onclick="this.value=''"/><br/>
         </div>
         <div class="form-outline mb-4">
             <input type="text" name="category"  value="Category..." onclick="this.value=''"/><br/>
         </div>
         <div class="form-outline mb-4">
             <input type="text" name="difficulty" value="Difficulty..." onclick="this.value=''"/><br/>
         </div>

     <br/>
     <input type="submit" value="Add quiz" class="btn btn-primary btn-block"/>
     </form>



</body>
</html>