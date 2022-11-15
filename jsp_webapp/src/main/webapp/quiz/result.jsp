<%@ page import="com.webapp.model.Topic" %>
<%@ page import="com.webapp.MasterKey" %>
<%@ page import="com.webapp.model.Question" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // достаем тему из буферного класса
    Topic topic = MasterKey.topic;
    int userPoints = 0;
    int topicPoints = 0;
%>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Result for quiz : <%= topic.getTitle() %></title>
</head>
<body>
    <div style="width: 50%">
        <h1><%= topic.getTitle() %></h1>
        <p><%= topic.getDetails() %></p>
        <%
            // следующий цикл выводит вопрос, правильный ответ на него, ответ пользователя
            // количество заработанных баллов, и баллов отданных на вопрос
            for(Question question : topic.getQuestions()) {
                String userResponse = request.getParameter("" + question.getIdQuestion());
                String correctResponse = question.getCorrectResponse().getDescription();
                int questionPoints = correctResponse.equals(userResponse) ? question.getPoints() : 0;
                userPoints += questionPoints;
                topicPoints += question.getPoints();
        %>
            <h4><%= question.getDescription() %></h4>
            <ul>
                <li>Верный ответ : <%= correctResponse %></li>
                <li>Выбранный ответ : <%= userResponse == null ? "" : userResponse %></li>
                <li>Набрано баллов : <%= questionPoints %> / <%= question.getPoints() %></li>
            </ul>
        <%
            };
        %>
        <br><br>
        <p> Всего набрано баллов: <%= userPoints %> / <%= topicPoints %></p>
    </div>
</body>
</html>