<%-- 
    Document   : choose-special
    Created on : Aug 13, 2019, 12:54:51 PM
    Author     : phuon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="includes/choosedate-header.jsp"></jsp:include>
    <div class="container">
        <div class="booking-form">
            <div id="root">
                <div>
                    <header>
                        <div class="nav-desk">
                            <div class="nav-top">
                                <div class="container">

                                </div>
                            </div>
                        </div>
                        <div id="black-screen" class="black-screen in"> </div>
                        <ul id="main-menu" class="menu-collapse in">
                        </ul>
                    </header>
                    <div class="main">
                        <div>
                            <div id="navigation-bar">
                                <div class="container"><a href="/" class="nav-bar-homepage">Trang chủ </a><i class="fas fa-angle-right"></i><a class="active">Đặt khám</a></div>
                            </div>
                            <div id="section-booking-3">
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
                                                              <li class="circle"><i class="far fa-hospital"></i>Medilab</li>
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
                                                    <li><a class="active" href="/booking-new">Ngày khám, Chuyên khoa <i class="fas fa-angle-right"></i></a></li>
                                                    <li><a class="">Phòng khám, giờ khám<i class="fas fa-angle-right"></i></a></li>
                                                    <li><a class="">Thông tin đăng ký <i class="fas fa-angle-right"></i></a></li>
                                                    <li><a class="">Thanh toán</a></li>
                                                </ul>
                                            </div>
                                            <div class="user-navigate mb-2"> Vui lòng chọn chuyên khoa cần khám</div>
                                            <div class="booking-right-calendar">
                                                <div>
                                                    <!--
                                                    <div class="brc-top d-flex align-items-center text-center" data-count="0">
                                                        <h2 class="mounth-title">Tháng 08-2019</h2><button type="button" class="arrow-right"><i class="fas fa-arrow-circle-right"></i></button></div>
                                                    <div class="table-responsive">
                                                        <table class="calTable table" id="tableCalendar">
                                                            <tbody>
                                                                <tr>
                                                                    <th class="cn">CN</th>
                                                                    <th>Hai</th>
                                                                    <th>Ba</th>
                                                                    <th>Tư</th>
                                                                    <th>Năm</th>
                                                                    <th>Sáu</th>
                                                                    <th class="t7">Bảy</th>
                                                                </tr>
                                                                <tr class="btn-booking-tr">
                                                                    <td><button type="button" class="btn-booking-calendar-disable btn btn-secondary disabled"><span>11</span></button></td>
                                                                    <td class=""><button type="button" class="btn-booking-calendar-disable btn btn-secondary "><span>12</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary btnCurrent"><span>13</span></button></td>
                                                                    <td class="active"><button type="button" class="active round-button btn btn-secondary "><span>14</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary "><span>15</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary "><span>16</span></button></td>
                                                                    <td class=""><button calmonth="2" type="button" class="round-button btn btn-secondary "><span>17</span></button></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    -->
                                                    <div id="ds_chuyen_khoa" class="brc-scroll-group show">
                                                        <div class="brc-scroll-auto" id="chua_danh_sach_chuyen_khoa">
                                                            <c:forEach var="spec" items="${list}">
                                                                <ul class="table-ul-cont">
                                                                    <li>${spec.nameOfSpecial}</li>
                                                                    <li>${spec.price} đ<a><span><button class="btn btn-primary" onclick="location.href = '<c:url value="/user/choose-list/${spec.id}"/>'">
                                                                                    Chọn</button></span></a></li>
                                                                </ul>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                               
                                            </div>
                                        </div>
                                        <div class="guide-line">
                                            <div>Chọn: <b>Ngày khám</b> &gt; <b>Chuyên khoa</b> &gt; <b>Tiếp tục</b>.</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="help-call" style="display: none;"><a class="icons-top" href="javascript:;"><i class="fas fa-arrow-circle-up"></i></a><a class="icons-email" href="/contact"><i class="fas fa-envelope"></i></a><a href="tel:19002267" title="19002267"><i class="fas fa-phone-square"></i><span class="text-hot">Hotline</span><span class="text-phone">19002267</span></a>
                            <a href="javascript:;" title="right" class="arrow-change"><i class="fas fa-angle-double-right"></i></a>
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

<script>
    function myFunction() {
        var dots = document.getElementById("dots");
        var moreText = document.getElementById("more");
        var btnText = document.getElementById("myBtn");

        if (dots.style.display === "none") {
            dots.style.display = "inline";
            btnText.innerHTML = "Chi tiết";
            moreText.style.display = "none";
        } else {
            dots.style.display = "none";
            btnText.innerHTML = "Rút gọn";
            moreText.style.display = "inline";
        }
    }
</script>
<script src="/asset/scripts/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js"></script>
<script src="/asset/scripts/jquery-ui.js"></script>
<script src="/asset/scripts/popper.min.js"></script>
<script src="/asset/scripts/bootstrap.min.js"></script>
<script src="/asset/scripts/main.js"></script>
<script src="/asset/scripts/logged-step.js"></script>
<script src="/asset/scripts/find-doctor.js"></script>
<script src="/asset/scripts/jquery.simplePagination.js"></script>
<script src="/asset/scripts/JsBarcode.all.min.js"></script>
<script type="text/javascript">
    function LoadJsBarcode(o) {
        JsBarcode("#barcode_0", 123434, {
            format: "CODE128",
            height: 100,
            fontSize: 25,
            width: 2
        })
    }
</script>
<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-124622675-1"></script>
<script>
    function gtag() {
        dataLayer.push(arguments)
    }
    window.dataLayer = window.dataLayer || [], gtag("js", new Date), gtag("config", "UA-124622675-1")
</script>

<script src="/static/js/2.e18b96ba.chunk.js"></script>
<script src="/static/js/main.fb437262.chunk.js"></script>
</body>

</html>
