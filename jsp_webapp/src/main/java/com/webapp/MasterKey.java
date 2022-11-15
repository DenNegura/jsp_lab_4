package com.webapp;

import com.webapp.database.DatabaseConnection;
import com.webapp.model.Topic;
import com.webapp.repository.QuestionRepository;
import com.webapp.repository.ResponseRepository;
import com.webapp.repository.TopicRepository;

public class MasterKey {
    public static DatabaseConnection databaseConnection = new DatabaseConnection(
            "jdbc:sqlite:C:/Projects/java/lab_3/jsp_webapp/src/main/resources/questions.sqlite");
    public static ResponseRepository responseRepository =
            new ResponseRepository(databaseConnection.getConnection());

    public static QuestionRepository questionRepository =
            new QuestionRepository(databaseConnection.getConnection(), responseRepository);

    public static TopicRepository topicRepository =
            new TopicRepository(databaseConnection.getConnection(), questionRepository);

    public static Topic topic;
}
