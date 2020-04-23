<%-- 
    Document   : customerService
    Created on : Apr 23, 2020, 4:24:20 PM
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
        <h1>Customer Support</h1>
        
         <table class="table table-bordered">
             our Admins
            <tbody>
            <c:forEach items="${admins}" var="adm">
                <tr>
                    <td>${adm.userName}</td>
                    
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </body>
</html>

