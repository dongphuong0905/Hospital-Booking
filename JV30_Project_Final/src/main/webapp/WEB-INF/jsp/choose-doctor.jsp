<%-- 
    Document   : choose-doctor
    Created on : Aug 13, 2019, 3:58:06 PM
    Author     : phuon
--%>

<%-- 
    Document   : choose-date
    Created on : Aug 2, 2019, 7:47:41 PM
    Author     : phuon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
                                        <div class="container"><a href="/" class="nav-bar-homepage">TRANG CHỦ</a><i class="fas fa-angle-right"></i><a class="active">ĐẶT KHÁM</a></div>
                                    </div>
                                    <div id="section-booking-45">
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
                                                    <div id="section-find-doctor-2">
                                                        <div class="find-doctor-left-1 shadow-2">
                                                            <h4 class="title1">THÔNG TIN KHÁM</h4>
                                                            <ul>
                                                                <li class="circle"><i class="far fa-hospital"></i>BỆNH VIỆN ĐẠI HỌC Y DƯỢC</li>
                                                                <li class="circle"><i class="fas fa-file-medical"></i>H. ẢNH HỌC CAN THIỆP</li>
                                                                <li class="circle"><i class="fas fa-user-md"></i>BS.<span>Nguyễn Quang Thái Dương</span></li>
                                                                <li class="circle"><i class="far fa-calendar-check"></i>Ngày khám: <span>21/08/2019</span></li>
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
                                                <div class="booking-right-navigation">
                                                    <ul>
                                                        <li><a class="active" href="/booking-new-step-2">Ngày khám, Chuyên khoa <i class="fas fa-angle-right"></i></a></li>
                                                        <li><a class="active" style="cursor: not-allowed;">Phòng khám, giờ khám<i class="fas fa-angle-right"></i></a></li>
                                                        <li><a class="">Thông tin đăng ký <i class="fas fa-angle-right"></i></a></li>
                                                        <li><a class="">Thanh toán</a></li>
                                                    </ul>
                                                </div>
                                                <div class="user-navigate mb-2"> Vui lòng chọn phòng khám và giờ khám</div>
                                                <form:form action="${pageContext.request.contextPath}/user/chooseDoctor" method="post" class="form-horizontal">
                                                <div class="booking-right-time">
                                                    <c:forEach var="calendar" items="${calendar}">
                                                        <c:forEach var="doctor" items="${listDoctor}">
                                                                <c:if test="${calendar.doctor.id==doctor.id}">
                                                                    <div class="brt-cont-group active">
                                                                        <div class="brt-cont d-flex align-items-center"><i class="fas fa-angle-left"></i><span class="fas fas fa-user-md"></span>                                                                  
                                                                                    <div class="brt-cont-right">
                                                                                        <div class="brt-cont-name">${doctor.doctorName}</div>
                                                                                        <div class="brt-cont-code">Phòng số: ${calendar.room}</div>
                                                                                    </div>

                                                                        </div>	
                                                                        <div class="brt-cont-hide show">
                                                                            <ul>
                                                                                <c:forEach var="time" items="${calendarTime}">
                                                                                    <c:if test="${time.calendarTime.id==calendar.id}">
                                                                                        <c:if test="${time.participant==5}">
                                                                                            <li title="Chọn giờ khám">
                                                                                                <a class="active-full" style="cursor: not-allowed;" 
                                                                                                                         id="${time.time},${calendar.id},${calendar.doctor.id},${time.id}" onClick="reply_click(this.id)">${time.time}</a></li>
                                                                                        </c:if>
                                                                                        <c:if test="${time.participant<5}">
                                                                                            <li title="Chọn giờ khám">
                                                                                                <a class="" style="cursor: pointer;" 
                                                                                                                         id="${time.time},${calendar.id},${calendar.doctor.id},${time.id}" onClick="reply_click(this.id)">${time.time}</a></li>
                                                                                        </c:if>
                                                                                    </c:if>
                                                                                </c:forEach>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </c:if>
                                                        </c:forEach>
                                                    </c:forEach>
                                                    <div class="brc-btn row align-items-center text-center show">
                                                        <div class="col-lg-6 col-12 ml-auto">
                                                            <div class="row">
                                                                <div class="col-6"><button type="submit" class="btn btn--rounded-blue btn--sm">Tiếp tục</button></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <input type="hidden" id="selectedDoctor" name="selectedDoctor">
                                                <script type="text/javascript">
                                                    function reply_click(clicked_id){
                                                        document.getElementById("selectedDoctor").value = clicked_id;
                                                    }
                                                </script>
                                                </form:form>
                                                <div class="guide-line">
                                                    
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
