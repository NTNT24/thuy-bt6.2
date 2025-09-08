<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Survey Results</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
    <div class="header">
        <img src="images/murachlogo.jpg" alt="Murach Logo">
        <div class="header-content">
            <h1>Thank You!</h1>
            <h2>Here’s the information you submitted:</h2>
        </div>
    </div>

    <div class="form-content">
        <p><b>First Name:</b> ${user.firstName}</p>
        <p><b>Last Name:</b> ${user.lastName}</p>
        <p><b>Email:</b> ${user.email}</p>
        <p><b>Date of Birth:</b> ${user.dob}</p>

        <p><b>You heard about us from:</b> ${user.heardFrom}</p>
        <p><b>Wants updates:</b> ${user.wantsUpdates}</p>
        <p><b>Wants email announcements:</b> ${user.emailOK}</p>

        <!-- Chỉ hiển thị Contact Via nếu user chọn nhận updates -->
        <c:if test="${user.wantsUpdates == 'Yes'}">
            <p><b>Preferred contact method:</b> ${user.contactVia}</p>
        </c:if>
    </div>
</body>
</html>
