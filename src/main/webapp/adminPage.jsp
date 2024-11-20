<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Page</title>
</head>
<body>
    <h1>Welcome, Admin!</h1>
    <p>You are successfully logged in!</p>
    <p>Welcome, ${sessionScope.username}!</p>
    <p>Number of users: ${fn:length(sessionScope.userList)}</p>

    <p>Second user's username: <c:out value="${sessionScope.userList[1].username}" /></p>
    
   <p>Second user's username: 
        <c:choose>
            <c:when test="${not empty sessionScope.userList[1]}">
                <c:out value="${sessionScope.userList[1].username}" />
            </c:when>
            <c:otherwise>
                <em>No second user found</em>
            </c:otherwise>
        </c:choose>
    </p>

    <h2>User List:</h2>
    <c:forEach var="user" items="${sessionScope.userList}">
        <p>${user.username} - Role: ${user.role}</p>
    </c:forEach>
    
</body>
</html>
