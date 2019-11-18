<%-- 
    Document   : endpage
    Created on : Aug 21, 2019, 10:01:22 PM
    Author     : phuon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="includes/choosedate-header.jsp"></jsp:include>
    <div class="container">
        <div class="booking-form">
            <div class="container">
                <div class="booking-form">
                    <div id="root">
                        <div></div>
                        <div class="main">
                            <div>
                                <div id="navigation-bar">
                                    <div class="container"><a href="/" class="nav-bar-homepage">Trang chủ</a><i class="fas fa-angle-right"></i><a class="active">Đặt khám</a></div>
                                </div>
                                <div id="section-booking-78">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-4 col-lg-3 order-2 order-md-1">
                                                <div class="booking-left-menu">
                                                    <div class="booking-left-menu-top shadow-2">
                                                        <div class="blmt-name">
                                                            <div class="nav-title-name">${patient.patientName}</div>
                                                    </div>
                                                    <div class="blmt-info">Địa chỉ: ${patient.patientAddress}</div>
                                                    <div class="blmt-info">Điện thoại: ${patient.patientPhoneNumber}</div>
                                                </div>
                                                <div class="booking-left-menu-hotline text-center shadow-2">
                                                    <div class="blmh-name">Hộ trợ chuyên môn</div><a href="tel:19007178" class="d-block">19007178</a>
                                                    <hr>
                                                    <div class="blmh-name">Hỗ trợ kỹ thuật</div><a href="tel:19002267" class="d-block">19002267</a></div>
                                            </div>
                                        </div>
                                        <div class="col-md-8 col-lg-9 order-1 order-md-2">
                                            <div id="bhyt" class="booking-right-navigation">
                                                <ul>
                                                    <li><a class="active" href="/booking-new-step-4">Ngày khám, Chuyên khoa <i class="fas fa-angle-right"></i></a></li>
                                                    <li><a class="active">Phòng khám, giờ khám<i class="fas fa-angle-right"></i></a></li>
                                                    <li><a class="active">Thông tin đăng ký <i class="fas fa-angle-right"></i></a></li>
                                                    <li><a class="active">Thanh toán</a></li>
                                                </ul>
                                            </div>
                                            <div class="user-navigate mb-2"> Vui lòng chọn hình thức thanh toán</div>
                                           
                                                <div class="booking-right-payment">
                                                    <div class="row">

                                                        <div class="col-lg-10">
                                                            <div class="card">
                                                                <center>
                                                                    <div class="row">
                                                                        <div class="col-12"><i class=""></i><span class="font-weight-bold" style="color: green"><h2>GIAO DỊCH HOÀN TẤT</h2></span></div>
                                                                        <div class="col-12"><i class=""></i>
                                                                            <h3 style="color: red">Kiểm tra email của bạn để xem thông tin đặt khám</h3>
                                                                        </div>
                                                                        <div class="col-12"> <i class=""></i>
                                                                            <h3>Mã số giao dịch: <strong>${bookingId}</strong></h3>
                                                                        </div>

                                                                    </div>
                                                                </center>
                                                            </div>


                                                        </div>
                                                    </div>
                                                </div>
                                           
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</section>

<!--/ banner-->


<!--footer-->
<footer id="footer">
    <div class="top-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4 marb20">
                    <div class="ftr-tle">
                        <h4 class="white no-padding">Giới thiệu</h4>
                    </div>
                    <div class="info-sec">
                        <p>##
                        </p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 marb20">
                    <div class="ftr-tle">
                        <h4 class="white no-padding">Truy cập nhanh</h4>
                    </div>
                    <div class="info-sec">
                        <ul class="quick-info">
                            <li><a href="index.html"><i class="fa fa-circle"></i>Home</a></li>
                            <li><a href="#service"><i class="fa fa-circle"></i>Service</a></li>
                            <li><a href="#contact"><i class="fa fa-circle"></i>Appointment</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 marb20">
                    <div class="ftr-tle">
                        <h4 class="white no-padding">Theo dõi chúng tôi</h4>
                    </div>
                    <div class="info-sec">
                        <ul class="social-icon">
                            <li class="bglight-blue"><i class="fa fa-facebook"></i></li>
                            <li class="bgred"><i class="fa fa-google-plus"></i></li>
                            <li class="bgdark-blue"><i class="fa fa-linkedin"></i></li>
                            <li class="bglight-blue"><i class="fa fa-twitter"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-line">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">

                    <div class="credits">

                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!--/ footer-->

</body>

</html>
