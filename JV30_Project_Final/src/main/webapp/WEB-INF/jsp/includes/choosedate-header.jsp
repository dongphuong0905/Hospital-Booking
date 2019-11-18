<%-- 
    Document   : choosedate-header
    Created on : Aug 3, 2019, 8:43:33 PM
    Author     : phuon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Medilab Free Bootstrap HTML5 Template</title>
        <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
        <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/font-awesome.min.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.min.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style-form.css"/>">
        <!-- =======================================================
        Theme Name: Medilab
        Theme URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
        Author: BootstrapMade.com
        Author URL: https://bootstrapmade.com
      ======================================================= -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.0/themes/smoothness/jquery-ui.css">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/font-awesome/fontawesome-all.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/core.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/normalize.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/header.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/footer.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/home.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/logged-steps.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/booking.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/signup.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/find-doctor.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/faq.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/contact.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/term.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/pager.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/loading.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/thanhtoanvienphi.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/error.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/login.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/quytrinh.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/notification.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/taikham.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/help-user.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/support.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/kqcls.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/styles/spinner.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/asset/rs-plugin/css/settings.css"/>" media="screen">
        <script src="https://connect.facebook.net/en_US/sdk.js?hash=c446df9f41b60ac8bd9c32d618884d05&amp;ua=modern_es6" async="" crossorigin="anonymous"></script>
        <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
        <script id="facebook-jssdk" src="https://connect.facebook.net/en_US/sdk.js"></script>
        <script src="https://sdk.accountkit.com/vi_VN/sdk.js?hash=0f5cb01f18fec036e4bcfe49fa84c862" async="" crossorigin="anonymous"></script>
        <script type="text/javascript" async="" src="https://www.gstatic.com/recaptcha/api2/v1563777128698/recaptcha__vi.js"></script>
        <script src="https://www.google.com/recaptcha/api.js" async="" defer="defer"></script>
        <script src="https://sdk.accountkit.com/vi_VN/sdk.js"></script>
        <script type="text/javascript">
            AccountKit_OnInteractive = function () {
                AccountKit.init({
                    appId: "153422365349408",
                    state: "csrf",
                    version: "v1.1",
                    fbAppEventsEnabled: !0,
                    display: "modal"
                })
            }
        </script>
        <script>
            window.fbAsyncInit = function () {
                FB.init({
                    appId: "153422365349408",
                    cookie: !0,
                    xfbml: !0,
                    version: "v3.2"
                }), FB.AppEvents.logPageView()
            },
                    function (e, n, t) {
                        var o, c = e.getElementsByTagName(n)[0];
                        e.getElementById(t) || ((o = e.createElement(n)).id = t, o.src = "https://connect.facebook.net/en_US/sdk.js", c.parentNode.insertBefore(o, c))
                    }(document, "script", "facebook-jssdk")
        </script>
        <link href="/static/css/2.fd1761bc.chunk.css" rel="stylesheet">
        <style type="text/css">

        </style>
    </head>

    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
        <!--banner-->
        <section id="banner" class="banner">
            <div class="bg-color">
                <nav class="navbar navbar-default navbar-fixed-top">
                    <div class="container">
                        <div class="col-md-12">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="#"><img src="<c:url value="/resources/img/logo.png"/>" class="img-responsive" style="width: 140px; margin-top: -16px;"></a>
                            </div>
                            <div class="collapse navbar-collapse navbar-right" id="myNavbar">
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href='<c:url value="user/"/>'>Trang chủ</a></li>
                                    <li class=""><a onclick="location.href = '<c:url value="/user/searchh"/>'">Tra cứu</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
