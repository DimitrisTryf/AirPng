<%-- 
    Document   : main
    Created on : 15 Μαρ 2020, 6:25:45 μ.μ.
    Author     : kmbco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        ${userSession.userName}
        
        <a href="/addNewGarage">addGarage</a>
    </body>
</html>
