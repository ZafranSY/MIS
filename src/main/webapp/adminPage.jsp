
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
    /* General Reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    color: #333;
    background-color: #f4f4f9;
}

/* Dashboard Layout */
.dashboard {
    display: flex;
    min-height: 100vh;
}

/* Sidebar */
.sidebar {
    width: 250px;
    background: #e8f6ed;
    padding: 20px;
}

.sidebar .logo {
    font-size: 20px;
    font-weight: bold;
    color: #4caf50;
    margin-bottom: 30px;
}

.sidebar .menu {
    list-style: none;
}

.sidebar .menu li {
    margin: 15px 0;
    padding: 10px 15px;
    border-radius: 8px;
    cursor: pointer;
}

.sidebar .menu li.active,
.sidebar .menu li:hover {
    background: #4caf50;
    color: #fff;
}

/* Main Content */
.main-content {
    flex: 1;
    padding: 20px;
}

.header {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    margin-bottom: 20px;
}

.header .user-info {
    display: flex;
    align-items: center;
    gap: 10px;
}

.header .user-info .profile-pic {
    width: 50px;
    height: 50px;
    border-radius: 50%;
}

.content h2 {
    margin-bottom: 20px;
}

/* Grid Cards */
.grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 20px;
}

.card {
    background: #fff;
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.card h3 {
    margin-bottom: 15px;
}

.card p {
    margin: 5px 0;
}

.card a {
    color: #4caf50;
    text-decoration: none;
    font-weight: bold;
}

.card a:hover {
    text-decoration: underline;
}

/* Announcement Section */
.announcement {
    margin-top: 20px;
    background: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.announcement h4 {
    margin-bottom: 10px;
}

.announcement-actions button {
    background-color: #4caf50;
    color: white;
    border: none;
    padding: 5px 10px;
    border-radius: 5px;
    cursor: pointer;
    margin-left: 10px;
}

.announcement-actions button:hover {
    background-color: #45a049;
}

/* Button Styles */
.btn-add, .btn-edit, .btn-remove {
    background-color: #4caf50;
    color: white;
    border: none;
    padding: 8px 12px;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 10px;
}

.btn-add:hover, .btn-edit:hover, .btn-remove:hover {
    background-color: #45a049;
}

/* Card Layout */
.user-info-card, .announcement-card, .content-overview-card, .maintenance-card, .delete-account-card {
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.maintenance-card, .delete-account-card {
    background: #f8f8f8;
}
    
    </style>
</head>
<body>
    <div class="dashboard">
        <!-- Sidebar -->
        <aside class="sidebar">
            <div class="logo">
                <span>🏠 TMS</span>
            </div>
            <ul class="menu">
                <li class="active">Dashboard</li>
                <li>Property</li>
                <li>Invoices</li>
                <li>Contact</li>
                <li>Users Information</li>
                <li>Content Overview</li>
                <li>Maintenance Status</li>
                <li>Delete Account Request</li>
            </ul>
        </aside>

        <!-- Main Content -->
        <main class="main-content">
            <header class="header">
                <div class="user-info">
                    <img src="./images/kyrie1.jpg" alt="Admin Profile" class="profile-pic">
                    <div>
                        <h4>John Doe</h4>
                        <p>TID-33450</p>
                    </div>
                </div>
            </header>

            <section class="content">
                <h2>Admin Dashboard</h2>

                <!-- User Info Section -->
                <div class="grid">
                    <div class="card user-info-card">
                        <h3>User Information</h3>
                        <p>Total users over the years: <strong> 1.2M </strong></p>
                        <p>New users in the past 30 days: <strong> 20K</strong></p>
                    </div>

                    <div class="card announcement-card">
                        <h3>Announcements</h3>
                        <div class="announcement-actions">
                            <button class="btn-add">Add New Announcement</button>
                        </div>
                        <div class="announcement">
                            <h4>Winner for Highest Liked Content: John Doe!</h4>
                            <div class="announcement-actions">
                                <button class="btn-edit">Edit</button>
                                <button class="btn-remove">Remove</button>
                            </div>
                        </div>
                    </div>

                    <!-- Content Overview -->
                    <div class="card content-overview-card">
                        <h3>Content Overview</h3>
                        <p>Total Content: <strong> 200K </strong></p>
                        <p>Awaiting Approval: <strong> 20 </strong></p>
                        <p>Recently Uploaded: <strong>30K</strong></p>
                    </div>

                    <!-- Maintenance Status -->
                    <div class="card maintenance-card">
                        <h3>Maintenance Status</h3>
                        <p>Request #001: <strong>In Progress</strong></p>
                        <p>Request #002: <strong>Completed</strong></p>
                        <p>Request #003: <strong>Pending</strong></p>
                    </div>

                    <!-- Delete Account Requests -->
                    <div class="card delete-account-card">
                        <h3>Delete Account Requests</h3>
                        <p>Ahmed Hassan</p>
                        <p>Hussaini Kyree</p>
                        <p>Hussaini Kyree</p>
                    </div>
                </div>
            </section>
        </main>
    </div>
</body>
</html>
