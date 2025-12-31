// ValidationUtil.java
package com.studentapp.util;

public class ValidationUtil {
    
    public static String validateStudentData(String name, String email, String yearStr) {
        if (name == null || name.trim().isEmpty()) {
            return "Name is required";
        }
        
        if (email == null || email.trim().isEmpty()) {
            return "Email is required";
        }
        
        if (!email.matches("^[A-Za-z0-9+_.-]+@(.+)$")) {
            return "Invalid email format";
        }
        
        if (yearStr == null || yearStr.trim().isEmpty()) {
            return "Year is required";
        }
        
        try {
            int year = Integer.parseInt(yearStr);
            if (year < 1 || year > 5) {
                return "Year must be between 1 and 5";
            }
        } catch (NumberFormatException e) {
            return "Year must be a number";
        }
        
        return null;
    }
}