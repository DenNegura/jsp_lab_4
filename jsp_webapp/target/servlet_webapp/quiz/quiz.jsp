<%@ page import="com.webapp.model.Question" %>
<%@ page import="com.webapp.model.Response" %>
<%@ page import="com.webapp.model.Topic" %>
<%@ page import="com.webapp.MasterKey" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Long idTopic = Long.valueOf(request.getParameter("topic"));
    Topic topic = MasterKey.topicRepository.findById(idTopic).orElseThrow();
    MasterKey.topic = topic;
%>
<html>
<head>
    <meta charset="UTF-8"/>
    <title> Quiz topic : <%= topic.getTitle() %></title>
</head>
<body>
        <div style="width: 50%">
            <form action="result.jsp" method="GET">
                <h1><%= topic.getTitle() %></h1>
                <p><%= topic.getDetails() %></p>
                <%
                    for(Question question : topic.getQuestions()) {
                %>
                    <h4><%= question.getDescription() %></h4>
                    <%
                        for(Response responseForQuestion : question.getResponses()) {
                    %>
                        <input type="radio" name="<%= question.getIdQuestion() %>"
                        value='<%= responseForQuestion.getDescription() %>'>
                            <%= responseForQuestion.getDescription() %>
                            <br/>
                <%
                        };
                    };
                %>
                <br/><br/>
                <input type="submit" value="Отправить"/>
            </form>
        </div>
</body>
</html>
