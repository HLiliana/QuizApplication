<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.QuizApplication.repository.QuizRepository" %>
<%@ page import="com.QuizApplication.repository.QuestionRepository" %>
<%@ page import="com.QuizApplication.model.Quiz" %>
<%@ page import="com.QuizApplication.model.Question" %>
<%@ page import="com.QuizApplication.exception.BusinessException" %>
<%@ page import="com.QuizApplication.model.User" %>
<%@ page import="com.QuizApplication.repository.UserRepository" %>

<!DOCTYPE html>
<html>
<head>
    <title>Quiz Result</title>
    <link rel="stylesheet" href="style2.css">
</head>
<body>
    <h1>Quiz Result</h1>

    <%!
         List<Question> questionList;
         QuizRepository quizRepository = new QuizRepository();
         List<String> getShuffledAnswerOptions(Question question) {
             return question.getShuffledAnswerOptions();
         }
     %>

    <%
        String quizName =request.getParameter("quizName");
        Quiz quiz = quizRepository.findByName(quizName);
        questionList = quiz.getQuestionList();

        int score = 0;
        int totalQuestions = questionList.size();
        for (Question question : questionList) {
            String userAnswer = request.getParameter("question_" + question.getId());
            if (question.isUserAnswerCorrect(userAnswer)) {
                score++;
            }
        }
    %>

    <h2>Quiz Result:</h2>
    <p>Total Score: <%= score %>/<%= totalQuestions %></p>
    <h1>Sper ca va place guys</h1>
</body>
</html>

