<%@ page import="com.QuizApplication.repository.QuestionRepository" %>
<%@ page import="com.QuizApplication.model.Question" %>
<%@ page import="com.QuizApplication.exception.BusinessException" %>


<html>
<head>
<link rel="stylesheet" href="style2.css">
    <title>Error Page</title>
</head>
<body>
    <h1 style="color:black">Error</h1>
    <p>${errorMessage}</p>
</body>
</html>