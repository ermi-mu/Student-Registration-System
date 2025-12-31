// RegisterServlet.java
package com.studentapp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studentapp.dao.StudentDAO;
import com.studentapp.model.Student;
import com.studentapp.util.ValidationUtil;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    
    private StudentDAO studentDAO;
    
    @Override
    public void init() throws ServletException {
        studentDAO = new StudentDAO();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.getRequestDispatcher("/views/register.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String yearStr = request.getParameter("year");
        
        // Validation
        String error = ValidationUtil.validateStudentData(name, email, yearStr);
        
        if (error != null) {
            request.setAttribute("error", error);
            request.getRequestDispatcher("/views/register.jsp").forward(request, response);
            return;
        }
        
        int year = Integer.parseInt(yearStr);
        Student student = new Student(name, email, year);
        
        if (studentDAO.insertStudent(student)) {
            request.getRequestDispatcher("/views/success.jsp").forward(request, response);
            return;
        } else {
            request.setAttribute("error", "Registration failed. Email might already exist.");
            request.getRequestDispatcher("/views/register.jsp").forward(request, response);
        }
    }
}