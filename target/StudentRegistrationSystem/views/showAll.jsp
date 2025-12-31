<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Students</title>
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
                    <a href="${pageContext.request.contextPath}/register" class="nav-link">
                        <i class="fas fa-user-plus"></i> Register
                    </a>
                    <a href="${pageContext.request.contextPath}/show_all" class="nav-link active">
                        <i class="fas fa-users"></i> View Students
                    </a>
                </div>
            </div>
        </nav>

        <div class="main-content">
            <div class="card">
                <div class="card-header">
                    <h2><i class="fas fa-users"></i> Registered Students</h2>
                    <p>Total Students: <span class="badge">${students.size()}</span></p>
                </div>
                
                <div class="card-body">
                    <c:choose>
                        <c:when test="${empty students}">
                            <div class="empty-state">
                                <i class="fas fa-user-slash"></i>
                                <h3>No Students Registered Yet</h3>
                                <p>Be the first to register a student!</p>
                                <a href="${pageContext.request.contextPath}/register" class="btn btn-primary">
                                    <i class="fas fa-user-plus"></i> Register First Student
                                </a>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="table-container">
                                <table class="styled-table">
                                    <thead>
                                        <tr>
                                            <th><i class="fas fa-id-badge"></i> ID</th>
                                            <th><i class="fas fa-user"></i> Name</th>
                                            <th><i class="fas fa-envelope"></i> Email</th>
                                            <th><i class="fas fa-calendar-alt"></i> Year</th>
                                            <th><i class="fas fa-clock"></i> Registered Date</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="student" items="${students}" varStatus="status">
                                            <tr class="${status.index % 2 == 0 ? 'even-row' : 'odd-row'}">
                                                <td>${student.id}</td>
                                                <td>${student.name}</td>
                                                <td><a href="mailto:${student.email}" class="email-link">${student.email}</a></td>
                                                <td>
                                                    <span class="year-badge year-${student.year}">
                                                        Year ${student.year}
                                                    </span>
                                                </td>
                                                <td>
                                                    <i class="far fa-calendar"></i> 
                                                    ${student.createdAt.toLocalDate()}
                                                    <br>
                                                    <small>
                                                        <i class="far fa-clock"></i> 
                                                        ${student.createdAt.toLocalTime()}
                                                    </small>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
                
                <div class="card-footer">
                    <div class="action-buttons">
                        <a href="${pageContext.request.contextPath}/register" class="btn btn-primary">
                            <i class="fas fa-user-plus"></i> Add New Student
                        </a>
                        <button onclick="window.print()" class="btn btn-secondary">
                            <i class="fas fa-print"></i> Print List
                        </button>
                    </div>
                </div>
            </div>
        </div>
        
        <footer class="footer">
            <p>© 2024 Student Registration System. All rights reserved.</p>
            <p>Showing ${students.size()} student(s)</p>
        </footer>
    </div>
    
    <script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>