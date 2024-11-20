<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <style>/* General Reset */
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
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
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

/* Avatar Style */
.avatar {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    margin-bottom: 10px;
}

/* Announcement Section */
.announcement {
    margin-top: 30px;
    background: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.announcement-content {
    display: flex;
    gap: 20px;
    align-items: center;
}

.announcement-content img {
    width: 300px;
    height: 150px;
    object-fit: cover;
    border-radius: 8px;
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
            </ul>
        </aside>

        <!-- Main Content -->
        <main class="main-content">
            <header class="header">
                <div class="user-info">
                    <img src="./images/kyrie1.jpg" alt="User Profile" class="profile-pic">
                    <div>
                        <h4>${dashboard.name}</h4>
                        <p>${dashboard.email}</p>
                    </div>
                </div>
            </header>

            <section class="content">
                <h2>Dashboard</h2>

                <!-- User Info Section -->
                <div class="grid">
                    <div class="card user-info-card">
                        <h3>User Information</h3>
                        <img src="./images/kyrie1.jpg" alt="User Avatar" class="avatar">
                        <p>${dashboard.name}</p>
                        <a href="mailto:${dashboard.email}">${dashboard.email}</a>
                    </div>

                    <div class="card notification-card">
                        <h3>Notifications & Alerts</h3>
                        <div class="notification">
                            <span>👍</span>
                            <p>${dashboard.notification}</p>
                        </div>
                    </div>

                    <div class="card engagement-card">
                        <h3>Engagement</h3>
                        <p>${dashboard.posts} Posts</p>
                        <p>${dashboard.views} Views</p>
                        <p>${dashboard.likes} Likes</p>
                        <p>${dashboard.comments} Comments</p>
                    </div>

                    <div class="card streaks-card">
                        <h3>Streaks 🔥</h3>
                        <p>${dashboard.streak} 🔥</p>
                    </div>
                </div>

                <!-- Announcement Section -->
                <div class="announcement">
                    <h3>Announcement</h3>
                    <div class="announcement-content">
                        <img src="./images/tahniah.jpeg" alt="Announcement">
                        <div class="thanks">
                            <p>The Winner is Soon Yin Yi and Yeoh Jun Yean!!!</p>
                            <p>Congratulations to Saudari Soon Yin Yi and Saudari Teoh Jun Yean for their outstanding achievement...</p>
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </div>
</body>
</html>
