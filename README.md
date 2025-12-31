# Student Registration System

A simple Student Registration System developed to allow users to register students, display registered student information, and show a registration success message.

📌 Project Description

The Student Registration System is a basic web application designed for learning purposes.
It allows users to:

Register a student using a form

Store student details

Display registered student information

Show a success message after successful registration

This project is suitable for beginners learning Java, Servlets, JSP, and web application development.

✨ Features

Student Registration Form

Displays Registered Student Details

Registration Success Message

Simple and user-friendly interface

MVC-based structure (Controller, DAO, View)

🧑‍🎓 Functionalities
1. Student Registration

Users can enter student details such as:

Full Name

Email

Student ID

Course / Department

Data is submitted to the backend for processing

2. Registration Success Message

After successful registration, the system displays:

"Student Registered Successfully"

3. Display Student Information

Registered student details are displayed on a separate page

Confirms that the registration was completed correctly

🛠 Technology Stack
Frontend

HTML

CSS

JSP

Backend

Java

Java Servlets

JDBC

Database (Optional)

MySQL (if used)

Can also work with in-memory storage for learning

Server

Apache Tomcat

📂 Project Structure
Student-Registration-System
│
├── src
│   ├── controller
│   │   └── StudentServlet.java
│   ├── dao
│   │   └── StudentDAO.java
│   ├── model
│   │   └── Student.java
│
├── webapp
│   ├── register.jsp
│   ├── success.jsp
│   ├── display.jsp
│
├── WEB-INF
│   └── web.xml
│
└── README.md

▶️ How to Run the Project

Install Java (JDK 8 or above)

Install Apache Tomcat

Import the project into:

Eclipse / IntelliJ IDEA / NetBeans

Configure Tomcat server

Run the project

Open browser and go to:

http://localhost:8080/Student-Registration-System

✅ Output

Student Registration Form

Registration Success Message

Display of Registered Student Details

🎯 Purpose of the Project

To understand Java web application development

To practice Servlets and JSP

To learn basic CRUD operations

To understand form handling and request/response flow
