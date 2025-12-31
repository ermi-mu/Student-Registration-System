// script.js
document.addEventListener("DOMContentLoaded", function () {
  // Form validation enhancement
  const forms = document.querySelectorAll("form");
  forms.forEach((form) => {
    form.addEventListener("submit", function (e) {
      const inputs = this.querySelectorAll("input[required], select[required]");
      let isValid = true;

      inputs.forEach((input) => {
        if (!input.value.trim()) {
          isValid = false;
          input.style.borderColor = "#f72585";
          input.parentElement.classList.add("error");
        } else {
          input.style.borderColor = "";
          input.parentElement.classList.remove("error");
        }
      });

      if (!isValid) {
        e.preventDefault();
        showNotification("Please fill in all required fields", "error");
      }
    });
  });

  // Input focus effects
  const inputs = document.querySelectorAll("input, select");
  inputs.forEach((input) => {
    input.addEventListener("focus", function () {
      this.parentElement.classList.add("focused");
    });

    input.addEventListener("blur", function () {
      this.parentElement.classList.remove("focused");
    });
  });

  // Notification function
  function showNotification(message, type = "info") {
    const notification = document.createElement("div");
    notification.className = `notification notification-${type}`;
    notification.innerHTML = `
            <i class="fas fa-${
              type === "error" ? "exclamation-circle" : "check-circle"
            }"></i>
            <span>${message}</span>
            <button class="notification-close"><i class="fas fa-times"></i></button>
        `;

    document.body.appendChild(notification);

    // Auto remove after 5 seconds
    setTimeout(() => {
      notification.classList.add("fade-out");
      setTimeout(() => notification.remove(), 300);
    }, 5000);

    // Close button
    notification
      .querySelector(".notification-close")
      .addEventListener("click", () => {
        notification.remove();
      });
  }

  // Add notification styles
  const style = document.createElement("style");
  style.textContent = `
        .notification {
            position: fixed;
            top: 20px;
            right: 20px;
            padding: 16px 20px;
            background: white;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.15);
            display: flex;
            align-items: center;
            gap: 12px;
            z-index: 1000;
            animation: slideIn 0.3s ease;
            max-width: 400px;
        }
        
        .notification-error {
            border-left: 4px solid #f72585;
        }
        
        .notification-success {
            border-left: 4px solid #4ade80;
        }
        
        .notification i {
            font-size: 20px;
        }
        
        .notification-error i {
            color: #f72585;
        }
        
        .notification-success i {
            color: #4ade80;
        }
        
        .notification-close {
            margin-left: auto;
            background: none;
            border: none;
            color: #6c757d;
            cursor: pointer;
            padding: 4px;
            border-radius: 4px;
        }
        
        .notification-close:hover {
            background: #f8f9fa;
        }
        
        @keyframes slideIn {
            from {
                transform: translateX(100%);
                opacity: 0;
            }
            to {
                transform: translateX(0);
                opacity: 1;
            }
        }
        
        .fade-out {
            animation: fadeOut 0.3s ease forwards;
        }
        
        @keyframes fadeOut {
            to {
                opacity: 0;
                transform: translateX(100%);
            }
        }
    `;
  document.head.appendChild(style);
});
