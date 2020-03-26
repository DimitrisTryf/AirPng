


<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
        <link rel="shortcut icon" href="assets/images/logo-102x121.png" type="image/x-icon">
        <meta name="description" content="">


        <jsp:include page = "includes_for_css.jsp"></jsp:include>  


            <title>AirPnG | Park & GO!</title>


        </head>
        <body>
            <section>
                <div id="mysidenav" class="sidenav" >


                    <a href="/addNewGarageForm" id="addNewGarageForm">
                        <div class=row>
                            <div class="col-2 padding-left-1 ">
                                <i class="fas fa-plus"></i>
                            </div>
                            <div class="col-10 align-right">
                                Add Garage </div>
                        </div>
                    </a>


                    <a href="/showUsersGarages" id="showUsersGarages">
                        <div class=row>
                            <div class="col-2 padding-left-1 ">
                                <i class="fas fa-eye"></i>
                            </div>
                            <div class="col-10 align-right">
                                Show Garages</div>
                        </div>
                    </a>

                    <a href="#" id="Projects"> Projects</a>
                    <a href="#" id="Contact2"> Contact</a>



                </div>  </section>



            <div class="preloader"></div>

        <%--<jsp:include page = "modalLoginForm.jsp"></jsp:include>--%>  

        <section class="menu cid-rSzxauFbCH" once="menu" id="menu2-0">



            <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <div class="hamburger">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </button>
                <div class="menu-logo">
                    <div class="navbar-brand">
                        <span class="navbar-logo">
                            <a href="#">
                                <img src="assets/images/logo-102x121.png" alt="AirPnG" title="" style="height: 5rem;">
                            </a>
                        </span>

                    </div>
                </div>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true"><li class="nav-item">
                            <a class="nav-link link text-black display-4" href="index.html#features15-5">
                                How it works</a>
                        </li></ul>
                    <div class="navbar-buttons mbr-section-btn"><a class="btn btn-sm btn-primary display-4" href="#"><span class="mbri-user mbr-iconfont mbr-iconfont-btn"></span>

                            Hello ${userSession.userName}!</a></div>
                </div>
            </nav>
        </section>

        <section class="tabs3 cid-rU8UTzIOoj" id="tabs3-i" style="position: static">





            <div class="container">
                <h2 class="mbr-section-title align-center pb-3 mbr-fonts-style display-2">
                    <br>Three Steps Away!</h2>
                <h3 class="mbr-section-subtitle  display-5 align-center mbr-light mbr-fonts-style">
                    Make your selections below and enjoy your parking spot!</h3>
            </div>
            <div class="container-fluid" style="position:static">
                <div class="row tabcont" >
                    <ul class="nav nav-tabs pt-3 mt-5" role="tablist">
                        <li class="nav-item mbr-fonts-style"><a class="nav-link show active display-7" role="tab"
                                                                data-toggle="tab" href="#tabs3-i_tab0" aria-selected="true">1. Choose Parking Spot</a></li>
                        <li class="nav-item mbr-fonts-style"><a class="nav-link  show active display-7" role="tab"
                                                                data-toggle="tab" href="#tabs3-i_tab1" aria-selected="true">
                                2. Choose Parking Duration</a></li>
                        <li class="nav-item mbr-fonts-style"><a class="nav-link show active display-7" role="tab"
                                                                data-toggle="tab" href="#tabs3-i_tab2" aria-selected="true">
                                3. Checkout</a></li>



                    </ul>
                </div>
            </div>

            <div class="container">
                <div class="row px-1">
                    <div class="tab-content">
                        <div id="tab1" class="tab-pane in active mbr-table" role="tabpanel">
                            <div class="row tab-content-row">
                                <div class="col-xs-12 col-md-10">
<!--                                    <div class="card-img ">
                                        <span class="mbri-responsive mbr-iconfont"></span>
                                    </div>
                                                                        <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">
                                                                            MOBILE FRIENDLY
                                                                        </h4>
                                                                        <p class="mbr-section-text  align-center mbr-fonts-style display-7">
                                                                            No special actions required, all sites you make with Mobirise are mobile-friendly. You
                                                                            don't have to create a special mobile version of your site, it will adapt automagically.
                                                                        </p>-->
                                    <section class="map1 cid-rSzIQODBwc" id="map1-9">



                                        <div class="google-map"><iframe frameborder="0" style="border:0" 
                                                                        src="../assets/custom/map/mainMap.html" allowfullscreen=""></iframe></div>
                                    </section>
                                </div>






                            </div>
                        </div>

                        <div id="tab2" class="tab-pane  mbr-table" role="tabpanel">
                            <div class="row tab-content-row">
                                <div class="col-xs-12 col-md-6">
                                    <div class="card-img ">
                                        <span class="mbri-bootstrap mbr-iconfont"></span>
                                    </div>
                                    <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">
                                        IT'S EASY AND SIMPLE
                                    </h4>
                                    <p class="mbr-section-text  align-center mbr-fonts-style display-7">
                                        Cut down the development time with drag-and-drop website builder. Drop the blocks into
                                        the page, edit content inline and publish - no technical skills required.
                                    </p>
                                </div>






                            </div>
                        </div>

                        <div id="tab3" class="tab-pane  mbr-table" role="tabpanel">
                            <div class="row tab-content-row">
                                <div class="col-xs-12 col-md-6">
                                    <div class="card-img ">
                                        <span class="mbri-extension mbr-iconfont"></span>
                                    </div>
                                    <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">
                                        TRENDY WEBSITE BLOCKS
                                    </h4>
                                    <p class="mbr-section-text  align-center mbr-fonts-style display-7">
                                        Choose from the large selection pre-made blocks - full-screen intro, bootstrap carousel,
                                        slider, responsive image gallery with, parallax scrolling, sticky header and more.
                                    </p>
                                </div>






                            </div>
                        </div>

                        <div id="tab4" class="tab-pane  mbr-table" role="tabpanel">
                            <div class="row tab-content-row">
                                <div class="col-xs-12 col-md-6">
                                    <div class="card-img ">
                                        <span class="mbri-responsive mbr-iconfont"></span>
                                    </div>
                                    <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">
                                        MOBILE FRIENDLY
                                    </h4>
                                    <p class="mbr-section-text  align-center mbr-fonts-style display-7">
                                        No special actions required, all sites you make with Mobirise are mobile-friendly. You
                                        don't have to create a special mobile version of your site, it will adapt automagically.
                                    </p>
                                </div>






                            </div>
                        </div>

                        <div id="tab5" class="tab-pane  mbr-table" role="tabpanel">
                            <div class="row tab-content-row">
                                <div class="col-xs-12 col-md-6">
                                    <div class="card-img ">
                                        <span class="mbri-bootstrap mbr-iconfont"></span>
                                    </div>
                                    <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">
                                        IT'S EASY AND SIMPLE
                                    </h4>
                                    <p class="mbr-section-text  align-center mbr-fonts-style display-7">
                                        Cut down the development time with drag-and-drop website builder. Drop the blocks into
                                        the page, edit content inline and publish - no technical skills required.
                                    </p>
                                </div>






                            </div>
                        </div>

                        <div id="tab6" class="tab-pane  mbr-table" role="tabpanel">
                            <div class="row tab-content-row">
                                <div class="col-xs-12 col-md-6">
                                    <div class="card-img ">
                                        <span class="mbri-extension mbr-iconfont"></span>
                                    </div>
                                    <h4 class="mbr-element-title  align-center mbr-fonts-style pb-2 display-5">
                                        TRENDY WEBSITE BLOCKS
                                    </h4>
                                    <p class="mbr-section-text  align-center mbr-fonts-style display-7">
                                        Choose from the large selection pre-made blocks - full-screen intro, bootstrap carousel,
                                        slider, responsive image gallery with, parallax scrolling, sticky header and more.
                                    </p>
                                </div>






                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section once="footers" class="cid-rSzz49kirZ" id="footer7-7">





            <div class="container">
                <div class="media-container-row align-center mbr-white">
                    <div class="row row-links">
                        <ul class="foot-menu">





                            <li class="foot-menu-item mbr-fonts-style display-7">
                                <a class="text-white mbr-bold" href="#" target="_blank">About us</a>
                            </li><li class="foot-menu-item mbr-fonts-style display-7">
                                <a class="text-white mbr-bold" href="#" target="_blank">Services</a>
                            </li><li class="foot-menu-item mbr-fonts-style display-7">
                                <a class="text-white mbr-bold" href="#" target="_blank">Get In Touch</a>
                            </li><li class="foot-menu-item mbr-fonts-style display-7">
                                <a class="text-white mbr-bold" href="#" target="_blank">Careers</a>
                            </li><li class="foot-menu-item mbr-fonts-style display-7">
                                <a class="text-white mbr-bold" href="#" target="_blank">Work</a>
                            </li></ul>
                    </div>
                    <div class="row social-row">
                        <div class="social-list align-right pb-2">






                            <div class="soc-item">
                                <a href="#" target="_blank">
                                    <span class="socicon-twitter socicon mbr-iconfont mbr-iconfont-social"></span>
                                </a>
                            </div><div class="soc-item">
                                <a href="#" target="_blank">
                                    <span class="socicon-facebook socicon mbr-iconfont mbr-iconfont-social"></span>
                                </a>
                            </div><div class="soc-item">
                                <a href="#" target="_blank">
                                    <span class="socicon-youtube socicon mbr-iconfont mbr-iconfont-social"></span>
                                </a>
                            </div><div class="soc-item">
                                <a href="#" target="_blank">
                                    <span class="socicon-instagram socicon mbr-iconfont mbr-iconfont-social"></span>
                                </a>
                            </div><div class="soc-item">
                                <a href="#" target="_blank">
                                    <span class="socicon-googleplus socicon mbr-iconfont mbr-iconfont-social"></span>
                                </a>
                            </div><div class="soc-item">
                                <a href="#" target="_blank">
                                    <span class="socicon-behance socicon mbr-iconfont mbr-iconfont-social"></span>
                                </a>
                            </div></div>
                    </div>
                    <div class="row row-copirayt">
                        <p class="mbr-text mb-0 mbr-fonts-style mbr-white align-center display-7">
                            © Copyright 2019 AirPnG - All Rights Reserved
                        </p>
                    </div>
                </div>
            </div>

        </section>



        <jsp:include page = "includes_for_scripts_bottom.jsp"></jsp:include>  

        <script>
            $.fn.outerFind = function (selector) {
                return this.find(selector).addBack(selector);
            };
            function initTabs(target) {
                if ($(target).find('.nav-tabs').length !== 0) {
                    $(target).outerFind('section[id^="tabs"]').each(function () {
                        var componentID = $(this).attr('id');
                        var $tabsNavItem = $(this).find('.nav-tabs .nav-item');
                        var $tabPane = $(this).find('.tab-pane');

                        $tabPane.removeClass('active').eq(0).addClass('active');

                        $tabsNavItem.find('a').removeClass('active').removeAttr('aria-expanded')
                                .eq(0).addClass('active');

                        $tabPane.each(function () {
                            $(this).attr('id', componentID + '_tab' + $(this).index());
                        });

                        $tabsNavItem.each(function () {
                            $(this).find('a').attr('href', '#' + componentID + '_tab' + $(this).index());
                        });
                    });
                }
            }


            var isBuilder = $('html').hasClass('is-builder');
            if (isBuilder) {
                $(document).on('add.cards', function (e) {
                    initTabs(e.target);
                });
            } else {
                if (typeof window.initTabsPlugin === 'undefined') {
                    window.initTabsPlugin = true;
                    console.log('init tabs by plugin');
                    initTabs(document.body);
                }
            }
        </script>




    </body>
</html>
