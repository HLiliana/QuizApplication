<%@ page import="com.QuizApplication.model.Quiz, com.QuizApplication.repository.QuizRepository" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Result list</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.21.4/dist/bootstrap-table.min.css">
    <link rel="stylesheet" href="style2.css">

  </head>

<table border="1" class="table table-striped table-hover w-50 p-3">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Category</th>
            <th>Difficulty</th>
        </tr>

<%
  String id = request.getParameter("id");
  QuizRepository repository = new QuizRepository();
  repository.findById(id);


                  if(repository.findById(id) != null) {
                  Quiz quiz = repository.findById(id);
  %>

  <tr>
                  <td><%= quiz.getId() %></td>
                  <td><%= quiz.getName() %></td>
                  <td><%= quiz.getCategory() %></td>
                  <td><%= quiz.getDifficulty() %></td>
              </tr>
              <% }
               else {response.sendRedirect("errorQuiz.jsp");
               }%>
              </table>

<form action="welcomeUser.jsp">
<input type="submit" value="Back"/>
</form>

  </body>
</html>