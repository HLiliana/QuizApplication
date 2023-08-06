<%@ page import="com.QuizApplication.model.Quiz, com.QuizApplication.repository.QuizRepository" %>
<%@ page import="com.QuizApplication.model.Question" %>
<%@ page import="com.QuizApplication.exception.BusinessException" %>
<%@ page import="com.QuizApplication.model.User, com.QuizApplication.repository.UserRepository" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>

<html>
<body>
<%
        String name = request.getParameter("name");

        UserRepository userRepository = new UserRepository();

        User authenticatedUser = (User) session.getAttribute("authenticatedUser");

    try {
          boolean isDeleted = userRepository.deleteQuizFromDatabase(authenticatedUser, name);
          if(isDeleted){

            String confirmationMessageDelete = "Quiz was deleted";
            request.getSession().setAttribute("confirmationMessageDelete", confirmationMessageDelete);
            response.sendRedirect("mainQuiz.jsp");

            } else {
                request.setAttribute("errorMessage", "Quiz was not found in the user`s quiz list.");
                request.getRequestDispatcher("errorQuizAdd.jsp").forward(request, response);
            }
        }catch (BusinessException e) {
            request.setAttribute("errorMessage", e.getMessage());
            request.getRequestDispatcher("errorQuizAdd.jsp").forward(request, response);
    }
%>

</body>
</html>
