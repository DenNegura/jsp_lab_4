<%--
  Created by IntelliJ IDEA.
  User: dnegura
  Date: 06.11.2022
  Time: 12:44
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page extends="com.webapp.servlet.QuizServlet" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="UTF-8"/>
        <title>Quiz board</title>
    </head>
    <body>
        <div style="margin-left: 30%; margin-right: 30%; padding-top: 10%">
            <form method="GET" action="./quiz/quiz.jsp?topic=1">
                <button style="font-size: 30px; background-color: blue; width: 100%; height: 50%"
                        type="submit" name="topic" value="1">НАЧАТЬ ТЕСТ!</button>
            </form>
        </div>
    </body>
</html>
