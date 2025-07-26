CREATE DATABASE feedbackDB;

USE feedbackDB;

CREATE TABLE feedbacks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    feedback_text TEXT NOT NULL,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
SELECT * FROM feedbacks;
drop database feedbackDB;

delete FROM feedbacks where id=1;




