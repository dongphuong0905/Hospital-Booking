<%-- 
    Document   : confirm
    Created on : Aug 19, 2019, 11:55:26 PM
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
                    <div>
                        <div class="main">
                            <div>
                                <div id="navigation-bar">
                                    <div class="container"><a href="/" class="nav-bar-homepage">TRANG CHỦ </a><i class="fas fa-angle-right"></i><a class="active">ĐẶT KHÁM</a></div>
                                </div>
                                <div id="section-booking-6">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-4 col-lg-3 order-2 order-md-1">
                                                <div class="booking-left-menu shadow-2">
                                                    <div class="booking-left-menu-top shadow-2">
                                                        <div class="blmt-name">
                                                            <div class="nav-title-name">${patient.patientName}</div>
                                                        </div>
                                                        <div class="blmt-info">Địa chỉ: ${patient.patientAddress}</div>
                                                        <div class="blmt-info">Điện thoại: ${patient.patientPhoneNumber}</div>
                                                    </div>
                                                    <div id="section-find-doctor-2">
                                                        <div class="find-doctor-left-1 shadow-2">
                                                            <h4 class="title1">THÔNG TIN KHÁM</h4>
                                                            <ul>
                                                                <li class="circle"><i class="far fa-hospital"></i>BỆNH VIỆN ĐẠI HỌC Y DƯỢC</li>
                                                                <li class="circle"><i class="fas fa-file-medical"></i>${special.nameOfSpecial}</li>
                                                                <li class="circle"><i class="fas fa-user-md"></i>TS.BS.<span>${doctor.doctorName}</span></li>
                                                                <li class="circle"><i class="far fa-calendar-check"></i>Ngày khám: <span>${date}</span></li>
                                                                <li class="circle"><i class="far fa-clock"></i>Giờ khám: <span>${time}</span></li>
                                                            </ul>
                                                        </div>
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
                                                        <li><a class="active" href="/booking-new-step-3">Ngày khám, Chuyên khoa <i class="fas fa-angle-right"></i></a></li>
                                                        <li><a class="active">Phòng khám, giờ khám<i class="fas fa-angle-right"></i></a></li>
                                                        <li><a class="active">Thông tin đăng ký <i class="fas fa-angle-right"></i></a></li>
                                                        <li><a class="">Thanh toán</a></li>
                                                    </ul>
                                                </div>
                                                <div class="user-navigate mb-2"> Vui lòng xác nhận thông tin</div>
                                                <div class="booking-right-info">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <h4>THÔNG TIN KHÁM</h4>
                                                        </div>
                                                    </div>
                                                    <div class="table-responsive">
                                                        <table class="table table-striped bri-show-records">
                                                            <thead>
                                                                <tr>
                                                                    <th scope="col-3">Chuyên khoa</th>
                                                                    <th scope="col-3">Ngày khám</th>
                                                                    <th scope="col-5">Bác sĩ</th>
                                                                    <th scope="col">Phòng</th>
                                                                    <th scope="col">Tiền khám</th>
                                                                    <th scope="col"></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td class="no_border_bot"><strong>${special.nameOfSpecial}</strong></td>
                                                                    <td class="no_border_bot"><span>${date}</span><br><span>${time}</span></td>
                                                                    <td class="no_border_bot">${doctor.doctorName}</td>
                                                                    <td class="no_border_bot">${calen.room}</td>
                                                                    <td class="no_border_bot">${special.price}</td>
                                                                </tr>
                                                                <tr>
                                                                    <td colspan="6" class="no_border_top">
                                                                        <div class="col-md-6">
                                                                            <div class="row">
                                                                            </div>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <!--<div class="bri-price d-lg-flex align-items-center"><a class="btn btn-default order-md-1" href="/booking-new"><i class="fas fa-file-medical"></i> Đăng ký thêm chuyên khoa</a></div>-->
                                                    <div class="bri-profile">
                                                        <div class="row">
                                                            <div class="col-xl-6 col-lg-8 ">
                                                                <div class="bri-profile-top d-md-flex align-items-center">
                                                                    <h4>THÔNG TIN BỆNH NHÂN</h4>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-xl-6 col-lg-8">
                                                                <ul>
                                                                    <li class="li-left">
                                                                        <p class="conf-f"><i class="fas fa-user"></i>Họ Tên:</p>
                                                                    </li>
                                                                    <li class="li-right">
                                                                        <p class="conf-t" id="patient-name">${patient.patientName}</p>
                                                                    </li>
                                                                    <li class="li-left">
                                                                        <p class="conf-f"><i class="far fa-calendar-alt"></i>Ngày sinh:</p>
                                                                    </li>
                                                                    <li class="li-right">
                                                                        <p class="conf-t" id="patient-date">${patient.birthday}</p>
                                                                    </li>
                                                                   
                                                                    <li class="li-left">
                                                                        <p class="conf-f"><i class="fas fa-mobile-alt"></i>Điện thoại:</p>
                                                                    </li>
                                                                    <li class="li-right">
                                                                        <p class="conf-t" id="patient-phone">${patient.patientPhoneNumber}</p>
                                                                    </li>
                                                                    <li class="li-left">
                                                                        <p class="conf-f"><i class="fas fa-map-marker"></i>Địa chỉ:</p>
                                                                    </li>
                                                                    <li class="li-right">
                                                                        <p class="conf-t" id="patient-city">${patient.patientAddress}</p>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <div class="col-xl-6 col-lg-8">
                                                                <ul>
                                                                    <li class="li-left">
                                                                        <p class="conf-f"><i class="fas fa-venus-mars"></i>Giới tính:</p>
                                                                    </li>
                                                                    <li class="li-right">
                                                                        <p class="conf-t" id="patient-gender">${patient.patientGender}</p>
                                                                    </li>
                                                                    <li class="li-left">
                                                                        <p class="conf-f"><i class="fas fa-id-card"></i>CMND:</p>
                                                                    </li>
                                                                    <li class="li-right">
                                                                        <p class="conf-t" id="patient-cmnd">${patient.patientCardId}</p>
                                                                    </li>
                                               
                                                                    <li class="li-left">
                                                                        <p class="conf-f"><i class="fas fa-at"></i>Email:${sld}</p>
                                                                    </li>
                                                                    <li class="li-right">
                                                                        <p class="conf-t" id="patient-email">${patient.email}</p>
                                                                    </li>
                                       
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class=" bri-payment-btn">
                                                        <div class="row">
                                                            <div class=" col-lg-6  col-12 ml-auto">
                                                                <div class="row">
                                                                    <div class="col-6"><button class="btn btn--rounded-gray btn--sm">Quay lại</button></div>
                                                                    <div class="col-6"><button class="btn btn--rounded-blue btn--sm" onclick="location.href = '<c:url value="/user/confirm"/>'">Tiếp tục</button></div>
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
