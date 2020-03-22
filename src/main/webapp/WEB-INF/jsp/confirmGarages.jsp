<%-- 
    Document   : confirmGarages
    Created on : Mar 22, 2020, 9:55:31 AM
    Author     : dimit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%-- 
    Document   : allUsers
    Created on : Jan 22, 2020, 9:45:36 PM
    Author     : dimit
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <title>JSP Page</title>

    <style>
        body {
            background-color: #f2f2f2;
        }

        .table {
            background-color: #fff;
            box-shadow: 0px 2px 2px #aaa;
            margin-top: 50px;
            text-align: center;
        }

    </style>

</head>
<body>
<div class="container">
    <div class="row">
        <h1 style="margin-top: 40px">A List Of All Products</h1>

        <table class="table table-bordered">

            <thead style="font-weight: bold;">
            <td>#</td>
            <td>name</td>
            <td>quantity</td>
            <td colspan="2">Actions</td>
            </thead>
            <tbody>
            <c:set var="i" value="0"/>
            <c:forEach items="${unconfirmedGarages}" var="gar">
                <tr>
                    <c:set var="i" value="${i + 1}" scope="page"/>
                    <td>${i}</td>
                    <td>${gar.garageAddress}</td>
                    <td>${gar.garageOwnercomment}</td>
                    
                    <td><image src ="${gar.garageBillimageurl}"></td>
                    <image src ="file://assets/garageImages/12/1.png">
                    
                    
                    <td>src ="${gar.garageBillimageurl}"</td>
                    
                    
                    

                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>


</body>
</html>

    </body>
</html>
