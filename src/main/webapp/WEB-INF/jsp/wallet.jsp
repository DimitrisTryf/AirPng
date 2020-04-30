


<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>



        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
        <link rel="shortcut icon" href="assets/images/logo-102x121.png" type="image/x-icon">
        <meta name="description" content="">
        <script
            src="https://www.paypal.com/sdk/js?client-id=AaPVJsgzTdDgEIzSCLbfDUFb7lYnIOhoGkuv10aNmEv-J5QNw-9r_gh0rNXKPbrAddF0_yeRtysAeHIy"> // Required. Replace SB_CLIENT_ID with your sandbox client ID.
        </script>

        <jsp:include page = "includes_for_css.jsp"></jsp:include>  


            <title>My Wallet | AirPnG | Park & GO!</title>

            <style>
                .cid-rWPbspIEeg {
                    padding-top: 105px;
                    padding-bottom: 350px;
                    background-color: #f9f9f9;

                }
                .cid-rWPbspIEeg .mbr-figure {
                    -webkit-align-self: flex-start;
                    align-self: flex-start;
                    padding-left: 4rem;
                }

                .cid-rWPbspIEeg .accordion-content {

                    -webkit-flex-basis: 100%; 
                }

                .cid-rWPbspIEeg .card .card-header a.panel-title h4 {
                    padding: 1rem 1rem;
                    border: 1px solid #ccc;
                    margin-bottom: 0;}

                .display-7 {
                    font-family: 'Rubik', sans-serif;
                    font-size: 1rem;
                    font-display: swap;}

                .pt-5, .py-5 {
                    padding-top: 0rem!important; 
                }
                .mt-3, .my-3 {
                    margin-top: 0rem!important; 
                }
                .pt-5, .py-5 {
                    padding-top: 0rem!important; 
                }
                .mt-3, .my-3 {
                    margin-top: 0rem!important;
                }

                .card-header {
                    padding: 0rem 0rem!important;
                    background-color:#dfdfdf;
                }

                .mbr-figure{ 
                    position: -webkit-sticky;
                    position: sticky;
                    top: 100px;}

                .fancybox-slide--iframe .fancybox-content {
                    width  : 800px;
                    height : 600px;
                    max-width  : 80%;
                    max-height : 80%;
                    margin: 0;
                }
            </style>

        </head>
        <body>

        <jsp:include page = "includes/navBarSide.jsp"></jsp:include>


            <div class="preloader"></div>


        <jsp:include page = "includes/navBar.jsp"></jsp:include>

            <section class="accordion2 cid-rWPbspIEeg" id="accordion2-v" style="position: static">

                <div class="container-fluid" style="position:static">



                    <div class="container align-center" style="position:static">
                        <h1>My Wallet</h1>

                        <div id="paypal-button-container"></div>
                    </div>

                </div>
                </br></br> </section>




        <jsp:include page = "includes/footer.jsp"></jsp:include>  

        <jsp:include page = "includes_for_scripts_bottom.jsp"></jsp:include>  
        <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />


        <script>
                paypal.Buttons({
                    createOrder: function (data, actions) {
                        // This function sets up the details of the transaction, including the amount and line item details.
                        return actions.order.create({
                            purchase_units: [{
                                    amount: {
                                        value: '0.01'
                                    }
                                }]
                        });
                    },
                    onApprove: function (data, actions) {
                        // This function captures the funds from the transaction.
                        return actions.order.capture().then(function (details) {
                            // This function shows a transaction success message to your buyer.
                            alert('Transaction completed by ' + details.payer.name.given_name);
                        });
                    }
                }).render('#paypal-button-container');
                //This function displays Smart Payment Buttons on your web page.
        </script>


    </body>
</html>
