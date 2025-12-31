<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
        <nav class="navbar">
            <div class="nav-container">
                <h1 class="logo"><i class="fas fa-graduation-cap"></i> Student Portal</h1>
                <div class="nav-links">
                    <a href="${pageContext.request.contextPath}/register" class="nav-link active">
                        <i class="fas fa-user-plus"></i> Register
                    </a>
                    <a href="${pageContext.request.contextPath}/show_all" class="nav-link">
                        <i class="fas fa-users"></i> View Students
                    </a>
                </div>
            </div>
        </nav>

        <div class="main-content">
            <div class="card registration-card">
                <div class="card-header">
                    <h2><i class="fas fa-user-graduate"></i> Register New Student</h2>
                    <p>Fill in the details below to register a new student</p>
                </div>
                
                <div class="card-body">
                    <c:if test="${not empty error}">
                        <div class="alert alert-error">
                            <i class="fas fa-exclamation-circle"></i> ${error}
                        </div>
                    </c:if>
                    
                    <form action="${pageContext.request.contextPath}/register" method="post" class="registration-form">
                        <div class="form-group">
                            <label for="name">
                                <i class="fas fa-user"></i> Full Name
                            </label>
                            <input type="text" id="name" name="name" required 
                                   placeholder="Enter student's full name"
                                   value="${param.name}">
                            <div class="input-icon"></div>
                        </div>
                        
                        <div class="form-group">
                            <label for="email">
                                <i class="fas fa-envelope"></i> Email Address
                            </label>
                            <input type="email" id="email" name="email" required 
                                   placeholder="student@example.com"
                                   value="${param.email}">
                            <div class="input-icon"></div>
                        </div>
                        
                        <div class="form-group">
                            <label for="year">
                                <i class="fas fa-calendar-alt"></i> Academic Year
                            </label>
                            <div class="select-wrapper">
                                <select id="year" name="year" required>
                                    <option value="" disabled selected>Select year</option>
                                    <option value="1" ${param.year == '1' ? 'selected' : ''}>First Year</option>
                                    <option value="2" ${param.year == '2' ? 'selected' : ''}>Second Year</option>
                                    <option value="3" ${param.year == '3' ? 'selected' : ''}>Third Year</option>
                                    <option value="4" ${param.year == '4' ? 'selected' : ''}>Fourth Year</option>
                                    <option value="5" ${param.year == '5' ? 'selected' : ''}>Fifth Year</option>
                                </select>
                                <i class="fas fa-chevron-down select-arrow"></i>
                            </div>
                        </div>
                        
                        <div class="form-actions">
                            <button type="submit" class="btn btn-primary">
                                <i class="fas fa-user-plus"></i> Register Student
                            </button>
                            <button type="reset" class="btn btn-secondary">
                                <i class="fas fa-redo"></i> Reset Form
                            </button>
                        </div>
                    </form>
                </div>
                

            </div>
        </div>
        
        <footer class="footer">
            <p>© 2024 Student Registration System. All rights reserved.</p>
            <p>Built with <i class="fas fa-heart" style="color: #e74c3c;"></i> by Ermias</p>
        </footer>
    </div>
    
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>