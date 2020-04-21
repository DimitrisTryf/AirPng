<%-- 
    Document   : myRentalHistory
    Created on : Apr 21, 2020, 10:15:38 AM
    Author     : dimit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>My Rental History</h1>

        <table class="table table-bordered">

            <thead style="font-weight: bold;">
            <td>address</td>
            <td>dates</td>
            <td>action</td>
        </thead>
        <tbody>
        <c:forEach items="${userRentals}" var="rent">
            <tr>
                <td>${rent.rentalGarageid.garageAddress}</td>
                <td>${rent.rentalStart} - ${rent.rentalEnd}</td>
                <td><a href="reviewGarage/${rent.rentalGarageid.garageId}">review garage</a></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
