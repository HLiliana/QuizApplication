<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="java.util.List" %>
<%@ page import="com.QuizApplication.repository.QuizRepository" %>
<%@ page import="com.QuizApplication.repository.QuestionRepository" %>
<%@ page import="com.QuizApplication.model.Quiz" %>
<%@ page import="com.QuizApplication.model.Question" %>
<%@ page import="com.QuizApplication.exception.BusinessException" %>
<%@ page import="com.QuizApplication.model.User" %>
<%@ page import="com.QuizApplication.repository.UserRepository" %>

<%@ page import="java.util.List, java.util.Collections" %>

<!DOCTYPE html>
<html>
<head>
    <title>Start Quiz</title>
    <link rel="stylesheet" href="style3.css">
</head>
<body>
    <%
                          UserRepository userRepository = new UserRepository();
                          User authenticatedUser = (User) session.getAttribute("authenticatedUser");
                          String quizName = request.getParameter("quizName");

                          QuestionRepository questionRepo = new QuestionRepository();
                          QuizRepository quizRepository = new QuizRepository();
                          List<Quiz> userList = userRepository.getAllQuizzesForSpecificUser(authenticatedUser);
                          Quiz quiz = userRepository.findQuizFromUserList(quizName, userList);

                          List<Question> questionList = quizRepository.getQuestionListFromQuiz(quiz);
                          List<String> correctAnswer = questionRepo.getAllCorrectAnswer(questionList);
    %>

    <h2>Quiz Details:</h2>
    <p>Name: <%= quiz.getName() %></p>
    <p>Category: <%= quiz.getCategory() %></p>
    <p>Difficulty: <%= quiz.getDifficulty() %></p>

    <h2>Quiz Questions:</h2>
    <form action="submitQuiz.jsp" method="post">
        <% for (Question question : questionList) { %>
            <p><%= question.getQuestionDescription() %></p>
            <% List<String> shuffledOptions = question.getShuffledAnswerOptions(); %>
            <% for (String option : shuffledOptions) { %>
                <input type="radio" name="question_<%= question.getId() %>" value="<%= option %>">
                <%= option %><br>
            <% } %>
            <br>
        <% } %>
        <input type="hidden" name="quizName" value="<%= quiz.getName() %>">
        <input type="submit" value="Submit Quiz">
    </form>
</body>
</html>
