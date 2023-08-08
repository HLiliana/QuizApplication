<%@ page import="com.QuizApplication.model.Quiz, com.QuizApplication.repository.QuizRepository" %>
<%@ page import="com.QuizApplication.model.Question" %>
<%@ page import="com.QuizApplication.exception.BusinessException" %>
<%@ page import="com.QuizApplication.model.User, com.QuizApplication.repository.UserRepository" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>

<html>
<head>
<title>Update quiz</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    String newName = request.getParameter("newName");
    String newCategory = request.getParameter("newCategory");
    String newDifficulty = request.getParameter("newDifficulty");

        UserRepository userRepository = new UserRepository();
        User authenticatedUser = (User) session.getAttribute("authenticatedUser");
        QuizRepository quizRepository = new QuizRepository();

    try{
        boolean isQuizFromUserList = userRepository.doesQuizExistInUserList(authenticatedUser, name);

        if(isQuizFromUserList){

            userRepository.updateQuizFromUserList(authenticatedUser, name,newName,newCategory,newDifficulty);
            authenticatedUser = userRepository.getUserByEmail(authenticatedUser.getEmail());
            session.setAttribute("authenticatedUser", authenticatedUser);

            String confirmationUpdateMessage = "Your quiz has been updated.";
            request.getSession().setAttribute("confirmationUpdateMessage", confirmationUpdateMessage);

        %>
        <script>
            window.location.href = "userQuiz.jsp";
        </script>
        <%
        } else {
                request.setAttribute("errorMessage", "Quiz was not found in the user`s quiz list.");
                request.getRequestDispatcher("errorQuizAdd.jsp").forward(request, response);
            }
        } catch(BusinessException e){

        request.setAttribute("errorMessage", e.getMessage());
        request.getRequestDispatcher("errorQuizAdd.jsp").forward(request, response);
        }

%>

</body>
</html>