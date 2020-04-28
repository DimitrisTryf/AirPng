<%-- 
    Document   : garageReviews
    Created on : Apr 21, 2020, 12:03:17 PM
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
    
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center" style="margin-bottom: 15px">Garage Reviews</h1>
        
         <div class="container">
            <c:forEach items="${garageReviews}" var="gar">
                <div class="row" style="border: 1px solid black; margin-top: 3px">
                    <div class="col-3">
                        
                    <c:forEach var = "i" begin = "1" end = "${gar.greviewRating}">
                        <i class="fa fa-star" aria-hidden="true"></i>
                        </c:forEach>
                    </div>
                        <br/>
                        <div class="col-8">
                            
                        ${gar.greviewComment}
                        </div>
                </div>

            </c:forEach>
        </div>
    </body>
</html>
