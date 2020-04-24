<%-- 
    Document   : customerService
    Created on : Apr 23, 2020, 4:24:20 PM
    Author     : dimit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <br/>
        <br/>
        <p>Send a message to our admins:</p>
        <form action="/custSendMessage" method="post">
            <input type="text" name="message">
            <input type="submit">
        </form>
        <br/>
        <br/>
        <br/>
        <div id="messages"></div>


        <script>
            $(document).ready(function () {
                getRentals();
            });
            
            setInterval(function(){ getRentals(); }, 5000);
            
            function getRentals() {
                const URL = "/getMessages";
                const settings = {
                    url: URL,
                    success: handleSuccess,
                    type: "POST"
                            // handleSuccess( dataFromServer )
                };
                $.ajax(settings);
                function handleSuccess(data) {
                    document.getElementById("messages").innerHTML = "";
                    document.getElementById("messages").innerHTML += "<p>Your Messages</p>\n\
             <table class='table table - bordered'><thead style='font-weight: bold;'><td>message</td><td>date</td></thead><tbody id='mesbody'></tbody></table>";
                    $.each(data, function (i, element) {
                        let fromAdmin="";
                            if (element.cmessageFromuserid === null) {
                                fromAdmin="(fromAdmin)";
                            }
                        let date = new Date(element.cmessageDaytime);
                        let formatted_date = date.getDate() + "-" + (date.getMonth() + 1) + "-" + date.getFullYear() + " " + date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();
                        console.log(element);
                        document.getElementById("mesbody").innerHTML += "<tr><td>" + fromAdmin +" "+element.cmessageMessage + "</td><td>" + formatted_date + "</td></tr>";

                    });
                }

            }
        </script>
    </body>
</html>

