<%@ page import="com.QuizApplication.model.Quiz, com.QuizApplication.repository.QuizRepository" %>
<%@ page import="com.QuizApplication.model.Question, com.QuizApplication.repository.QuestionRepository" %>
<%@ page import="java.util.List" %>
<%@ page import="com.QuizApplication.exception.BusinessException" %>
<%@ page import="com.QuizApplication.service.QuestionService" %>
<%@ page contentType="text/html; charset=UTF-8" %>

       <%
                            String id = request.getParameter("id");
                            String newQuestionDescription = request.getParameter("questionDescription");
                            String newCategory = request.getParameter("category");
                            String newDifficulty = request.getParameter("difficulty");
                            String newCorrectAnswer = request.getParameter("correctAnswer");
                            String newIncorrectAnswer1 = request.getParameter("incorrectAnswer1");
                            String newIncorrectAnswer2 = request.getParameter("incorrectAnswer2");
                            String newIncorrectAnswer3 = request.getParameter("incorrectAnswer3");
                            QuestionRepository repository = new QuestionRepository();
                            Question questionToBeUpdated = repository.findQuestionById(id);
                            Question questionFromUser = repository.retrieveQuestionFromUser(id, newCategory, newDifficulty, newCorrectAnswer, newIncorrectAnswer1, newIncorrectAnswer2, newIncorrectAnswer3, newQuestionDescription);
                            Question questionUpdated = repository.updateOneQuestion(questionToBeUpdated, questionFromUser);
                            try{
                            repository.updateQuestion(questionUpdated);
                                    String confirmationMessageUpdateQuestion = "Your question has been updated.";
                                    request.getSession().setAttribute("confirmationMessageUpdateQuestion", confirmationMessageUpdateQuestion);
                                    response.sendRedirect("mainQuestion.jsp");

                                } catch(BusinessException e){

                                    request.setAttribute("errorMessage", e.getMessage());
                                    request.getRequestDispatcher("errorQuizAdd.jsp").forward(request, response);
                                        }
               %>
