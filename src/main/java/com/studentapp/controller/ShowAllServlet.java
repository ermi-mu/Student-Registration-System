// ShowAllServlet.java
package com.studentapp.controller;

import com.studentapp.dao.StudentDAO;
import com.studentapp.model.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/show_all")
public class ShowAllServlet extends HttpServlet {
    
    private StudentDAO studentDAO;
    
    @Override
    public void init() throws ServletException {
        studentDAO = new StudentDAO();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        List<Student> students = studentDAO.getAllStudents();
        request.setAttribute("students", students);
        request.getRequestDispatcher("/views/showAll.jsp").forward(request, response);
    }
}