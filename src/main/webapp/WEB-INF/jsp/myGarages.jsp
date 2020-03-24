<%-- 
    Document   : myGarages
    Created on : Mar 24, 2020, 10:16:38 AM
    Author     : dimit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
        <title>JSP Page</title>

        <style>
            body {
                background-color: #f2f2f2;
            }


            .collapsible {
                background-color: #777;
                color: white;
                cursor: pointer;
                padding: 18px;
                width: 100%;
                border: none;
                text-align: left;
                outline: none;
                font-size: 15px;
                margin: 10px;
            }

            .active, .collapsible:hover {
                background-color: #555;
            }

            .content {
                padding: 0 18px;
                display: none;
                overflow: hidden;
                background-color: #f1f1f1;
            }

        </style>

    </head>
    <body>
        <div class="container">
            <div class="row">
                <h1 style="margin-top: 40px">A List Of All Products</h1>

                <table class="table table-bordered">


                    <c:forEach items="${userGarages}" var="gar">
                        <button type="button" class="collapsible">${gar.garageAddress}</button>
                        <div class="content">
                            <div class="container">
                                <form action="/addDates/${gar.garageId}">
                                    <input type="text" name="datetimes" style="width:250px;"/>
                                    <button type="submit">Add dates</button>
                                </form>
                                

    
                            </div>	
                        </div>
                    </c:forEach>

            </div>
        </div>
        <script>
            $(function() {
              $('input[name="datetimes"]').daterangepicker({
                timePicker: true,
                startDate: moment().startOf('hour'),
                endDate: moment().startOf('hour').add(32, 'hour'),
                locale: {
                  format: 'M/DD hh:mm A'
                }
              });
            });
        </script>
        <script>
            var coll = document.getElementsByClassName("collapsible");
            var i;

            for (i = 0; i < coll.length; i++) {
                coll[i].addEventListener("click", function () {
                    this.classList.toggle("active");
                    var content = this.nextElementSibling;
                    if (content.style.display === "block") {
                        content.style.display = "none";
                    } else {
                        content.style.display = "block";
                    }
                });
            }



        </script>
    </body>
</html>
