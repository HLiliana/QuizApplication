<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.QuizApplication.model.User" %>
<%@ page import="com.QuizApplication.repository.UserRepository" %>
<%@ page import="com.QuizApplication.exception.BusinessException" %>

<%
    UserRepository userRepository = new UserRepository();
    String loggedInEmail = session.getAttribute("loggedInEmail").toString();
    String username = session.getAttribute("username").toString();

    session.setAttribute("username", username);
    // Retrieve the user's existing data based on the logged-in email
    User user = userRepository.getUserByEmail(loggedInEmail);
%>

<html>
<head><meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">

            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
            <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.21.4/dist/bootstrap-table.min.css">
            <link rel="stylesheet" href="styles.css">
<title>Quiz Application!</title>
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
    <li><a href="userQuiz.jsp">Quizzes</a></li>
    <li><a href="mainQuestion.jsp">Questions</a></li>
    <li style="float:right"><a href="index.jsp">Sign out</a></li>
  <li style ="float:right"><a href="editUserInformation.jsp">Edit Profile</a></li>
</ul>
    <h1>Welcome <%= username %></h1>



</body>
</html>