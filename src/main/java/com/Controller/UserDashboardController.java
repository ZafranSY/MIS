package com.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Model.Dashboard;

/**
 * Servlet implementation class UserDashboardController
 */
@WebServlet("/UserDashboardController")
public class UserDashboardController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserDashboardController() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Simulate data from a database or service
        Dashboard dashboard = new Dashboard(
            "Kyrie Irving",
            "kyrieirving1@gmail.com",
            20, // posts
            20, // views
            20, // likes
            20, // comments
            "Ahmed Hassan liked your post", // notification
            5  // streaks
        );
        // Set the Dashboard object as a request attribute
        request.setAttribute("dashboard", dashboard);

        // Forward the request to the JSP file
        request.getRequestDispatcher("UserDashboard.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
