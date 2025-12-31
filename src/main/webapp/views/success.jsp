<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Registration Successful</title>
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/css/style.css"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="container">
      <nav class="navbar">
        <div class="nav-container">
          <h1 class="logo">
            <i class="fas fa-graduation-cap"></i> Student Portal
          </h1>
          <div class="nav-links">
            <a
              href="${pageContext.request.contextPath}/register"
              class="nav-link"
            >
              <i class="fas fa-user-plus"></i> Register
            </a>
            <a
              href="${pageContext.request.contextPath}/show_all"
              class="nav-link"
            >
              <i class="fas fa-users"></i> View Students
            </a>
          </div>
        </div>
      </nav>

      <div class="main-content">
        <div class="success-container">
          <div class="success-icon">
            <i class="fas fa-check-circle"></i>
          </div>
          <h2>Registration Successful!</h2>
          <p>The student has been successfully registered in the system.</p>

          <div class="success-actions">
            <a
              href="${pageContext.request.contextPath}/register"
              class="btn btn-primary"
            >
              <i class="fas fa-user-plus"></i> Register Another Student
            </a>
            <a
              href="${pageContext.request.contextPath}/show_all"
              class="btn btn-success"
            >
              <i class="fas fa-users"></i> View All Students
            </a>
            <a
              href="${pageContext.request.contextPath}/"
              class="btn btn-secondary"
            >
              <i class="fas fa-home"></i> Go to Home
            </a>
          </div>
        </div>
      </div>

      <footer class="footer">
        <p>© 2024 Student Registration System. All rights reserved.</p>
      </footer>
    </div>
  </body>
</html>
