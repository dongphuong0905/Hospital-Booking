<%-- 
    Document   : confirm
    Created on : Aug 19, 2019, 11:55:26 PM
    Author     : phuon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
                                            <form:form action="${pageContext.request.contextPath}/user/saveDatabase" method="post"> 
                                            <div class="booking-right-payment">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <div class="brp-left mt-0 pt-2">
                                                            <h4 class="med_blue">CHỌN HÌNH THỨC THANH TOÁN</h4>
                                                            <div class="form-group">
                                                                <div class="form-check" ><label class="form-check-label form-check-label-visa"><input class="form-check-input" type="radio" name="payMethod" value="1" required><p>&nbsp;&nbsp;&nbsp;&nbsp;Thanh toán bằng thẻ</p></label></div>

                                                                <div class="form-check" ><label class="form-check-label form-check-label-visa"><input class="form-check-input" type="radio" name="payMethod" value="0" required><p>&nbsp;&nbsp;&nbsp;&nbsp;Thanh toán trực tiếp tại bệnh viện</p></label></div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <div class="card">
                                                            <div class="row">
                                                                <div class="col-12"><i class="fas fa-file-medical"></i><span class="font-weight-bold">${special.nameOfSpecial}</span></div>
                                                                <div class="col-12"><i class="far fa-calendar-alt"></i>Ngày khám: ${date} (${time}) ${calendarTimeId}</div>
                                                                <div class="col-12"> <i class="fas fa-user-md"></i>TS.BS.<b>${doctor.doctorName}</b> - Phòng ${calendar.room}</div>
                                                                <hr>
                                                                <div class="col-12 text-right">Tiền khám: <span class="font-weight-bold">${special.price}</span> đ</div>
                                                            </div>
                                                        </div>
                                                        <div class="Pay_total">
                                                            <p><span>Tổng tiền khám: </span><span class="t_left">150.000 đ</span></p>
                                                        </div>
                                                        <div class="bri-payment-btn" style="margin-top: 20px;">
                                                            <div class="row">
                                                                <div class=" col-lg-12  col-12 ml-auto">
                                                                    <div class="row">
                                                                        <div class=" col-12 lg-hidden">
                                                                            <div class=" Pay_total">
                                                                                <p class="sub_t_total">TỔNG CỘNG: <span class="t_left">150.000 đ</span></p>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        
                                                                        <div class="col-6"><button class="btn btn--rounded-blue btn--sm" type="submit">THANH TOÁN</button></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </form:form>
                                            <div class="guide-line">
                                                <div>Chọn: <b>Hình thức thanh toán cụ thể</b> &gt; <b>Kiểm tra Tổng Tiền</b> &gt; <b>Thanh toán</b>.</div>
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
