<%-- 
    Document   : myReviews
    Created on : Apr 15, 2020, 11:37:11 AM
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
        <h1>MyReviews</h1>
        
         <table class="table table-bordered">

            <thead style="font-weight: bold;">
            <td>#</td>
            <td>name</td>
            <td>quantity</td>
            <td colspan="2">Actions</td>
            </thead>
            <tbody>
            <c:forEach items="${userReviews}" var="gar">
                <tr>
                    <td>${gar.ureviewRating}</td>
                    <td>${gar.ureviewComment}</td>
                    
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </body>
</html>
