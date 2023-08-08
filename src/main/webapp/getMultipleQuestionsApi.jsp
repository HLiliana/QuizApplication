<%@ page import="com.QuizApplication.model.Quiz, com.QuizApplication.repository.QuizRepository" %>
<%@ page import="com.QuizApplication.model.Question, com.QuizApplication.repository.QuestionRepository" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.QuizApplication.exception.BusinessException" %>


<%
        QuestionRepository repository = new QuestionRepository();
        List<Question> generatedList = repository.getMultipleQuestions();

        for (Question generatedQuestion : generatedList) {
            String generatedCategory = generatedQuestion.getCategory();
            String generatedDifficulty = generatedQuestion.getDifficulty();
            String generatedCorrectAnswer = generatedQuestion.getCorrectAnswer();
            String generatedIncorrectAnswer1 = generatedQuestion.getIncorrectAnswer1();
            String generatedIncorrectAnswer2 = generatedQuestion.getIncorrectAnswer2();
            String generatedIncorrectAnswer3 = generatedQuestion.getIncorrectAnswer3();
            String generatedQuestionDescription = generatedQuestion.getQuestionDescription();

            repository.addQuestion(generatedQuestion);
%>
    <script>
        window.unload = function() {
            window.location.href = "addQuestion.jsp?questionDescription=<%= generatedQuestionDescription %>&category=<%= generatedCategory %>&difficulty=<%=generatedDifficulty%>&incorrectAnswer1=<%=generatedIncorrectAnswer1%>&incorrectAnswer2=<%=generatedIncorrectAnswer2%>&incorrectAnswer3=<%=generatedIncorrectAnswer3%>&correctAnswer=<%=generatedCorrectAnswer%>";
        };
    </script>
<%
        }
%>
    <html>
    <head>
    <link rel="stylesheet" href="style2.css">
        <title>API Page</title>
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
    <ul>
      <li><a href="welcomeUser.jsp">Back</a></li>
      <li style="float:right"><a href="welcomeUser.jsp">Homepage</a></li>

    </ul>
        <h1>Multiple questions were added!!</h1>
    </body>
    </html>