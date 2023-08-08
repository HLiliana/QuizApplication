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
<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #D18812;
}

li {
  float: left;
}

li a {
  display: block;
  color: blue;
  text-align: center;
  font-weight: bold;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #c7d112;
}
</style>


<ul>
  <li><a href="userQuiz.jsp">My Quizzes</a></li>
  <li style="float:right"><a href="welcomeUser.jsp">Homepage</a></li>

</ul>
    <%!
         List<Question> questionList;
         QuizRepository quizRepository = new QuizRepository();
         List<String> getShuffledAnswerOptions(Question question) {
             return question.getShuffledAnswerOptions();
         }
     %>

    <%
        UserRepository userRepository = new UserRepository();
        User authenticatedUser = (User) session.getAttribute("authenticatedUser");
        String quizName =request.getParameter("quizName");
        List<Quiz> userList = userRepository.getAllQuizzesForSpecificUser(authenticatedUser);
        Quiz quiz = userRepository.findQuizFromUserList(quizName, userList);

        questionList = quiz.getQuestionList();

        int score = 0;
        int totalQuestions = questionList.size();
        int totalScore = totalQuestions * 10;
        for (Question question : questionList) {
            String userAnswer="";
             if(request.getParameter("question_" + question.getId())!=null){
             userAnswer = request.getParameter("question_" + question.getId());
            }
            else
            {
            userAnswer="null";
            }
            if (question.isUserAnswerCorrect(userAnswer)) {
                score+=10;
            }
        }
    %>

    <h2>Quiz Result:</h2>
    <h2>Total Score: <%= score %>/<%= totalScore %></h2>
    <%
    if(score> totalScore/2) {
    %> <h2> Congratulations, you passed the quiz!!! </h2> <%}
    else {%> <h2> Please repeat the quiz </h2> <% } %>


</body>
</html>

