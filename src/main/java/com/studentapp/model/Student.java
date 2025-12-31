package com.studentapp.model;

import java.time.LocalDateTime;

public class Student {

    private int id;
    private String name;
    private String email;
    private int year;
    private LocalDateTime createdAt;

    // ✅ No-argument constructor (REQUIRED)
    public Student() {}

    // ✅ Constructor used by RegisterServlet
    public Student(String name, String email, int year) {
        this.name = name;
        this.email = email;
        this.year = year;
        this.createdAt = LocalDateTime.now();
    }

    // ✅ Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public int getYear() { return year; }
    public void setYear(int year) { this.year = year; }

    public LocalDateTime getCreatedAt() { return createdAt; }
    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }
}
