package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.Model.Auth;
import com.Model.User;

@WebServlet("/LoginController") // Matches the form action
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = new User(username, password);
        request.getSession().setAttribute("username", username);

        Auth auth = new Auth();
        String role = auth.authenticateUser(user);

        try {
            switch (role) {
                case "admin":
                    request.getRequestDispatcher("adminPage.jsp").forward(request, response);
                    break;
                case "coach":
                	response.sendRedirect("UserDashboardController");

//                    request.getRequestDispatcher("UserDashboard.jsp").forward(request, response);
                    break;
                case "trainee":
                    request.getRequestDispatcher("TraineePage.jsp").forward(request, response);
                    break;
                default:
                    request.setAttribute("errorMessage", "Invalid username or password");
                    request.getRequestDispatcher("errorPage.jsp").forward(request, response);
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred during login. Please try again.");
            request.getRequestDispatcher("errorPage.jsp").forward(request, response);
        }
    }
}
