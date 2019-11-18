<%-- 
    Document   : choose-date
    Created on : Aug 2, 2019, 7:47:41 PM
    Author     : phuon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="includes/choosedate-header.jsp"></jsp:include>
    <div class="container">
        <div class="booking-form">
            <div id="root">
                <div>
                    <header>
                        <nav class="nav-mobile">
                            <div class="container d-flex">
                                <div class="row"><button id="toggle-menu" class="menu-toggler mt-home"><span></span></button>
                                    <ul class="d-flex">
                                        <li class="dhyd_logo">
                                            <a class="nav-menu-logo" href="/"><img src="/asset/images/app/logo_test.png" alt="logo-DHYD"></a>
                                        </li>
                                        <li><span><strong>BỆNH VIỆN ĐẠI HỌC Y DƯỢC TP.HCM<sup>®</sup></strong></span><span class="">UNIVERSITY MEDICAL CENTER HCMC</span><span class="">Tiên Phong - Thấu Hiểu - Chuẩn Mực - An Toàn</span></li>
                                    </ul>
                                </div>
                            </div>
                        </nav>
                        <div id="black-screen" class="black-screen in"> </div>
                        <ul id="main-menu" class="menu-collapse in">
                            <div class="m-menu-top">
                                <div>
                                    <div class="dw-userlive">
                                        <div class="name-user"><i class="fas fa-user-circle mr-2"></i><span class="ml-2">Tài khoản</span></div>
                                    </div>
                                </div>
                            </div>
                            <div class="m-menu">
                                <ul>
                                    <li><a href="/"><i class="fas fa-home fa-xs"></i>trang chủ</a></li>
                                    <li> <a href="/intro"><i class="fab fa-black-tie"></i>giới thiệu</a> </li>
                                    <li><a href="/quytrinh"><i class="fas fa-circle-notch"></i>quy trình</a></li>
                                    <li><a href="/tro-giup-medpro"><i class="fas fa-book"></i>Hướng dẫn sử dụng</a></li>
                                    <li><a href="/notification"><i class="fas fa-bell"></i>Thông báo <span data-count="2" class="bell-counter">2</span></a></li>
                                    <li><a href="/patient-profile"><i class="fas fa-user-shield"></i>Thông tin tài khoản</a></li>
                                    <li><a href="/faq"><i class="fas fa-question-circle"></i>thắc mắc</a></li>
                                    <li><a href="/contact"><i class="fas fa-envelope"></i>liên hệ</a></li>
                                    <li><a href="/booking-new"><i class="fas fa-sign-out-alt"></i>Thoát</a></li>
                                </ul>
                                <div class="left-support"><a class="nav-top-phone" href="tel:19002267">1900-2267</a><a class="nav-top-mail" href="mailto:hotro@medpro.com.vn">hotro@medpro.com.vn</a></div>
                            </div>
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
                                                <div class="blmh-name">Hộ trợ chuyên môn</div><a href="tel:19001900" class="d-block">19001900</a>
                                                <hr>
                                                <div class="blmh-name">Hỗ trợ kỹ thuật</div><a href="tel:19001999" class="d-block">19001999</a></div>
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
                                        <div class="user-navigate mb-2"> Vui lòng chọn ngày khám</div>
                                        <div class="booking-right-calendar">
                                            <div>
                                                <div class="brc-top d-flex align-items-center text-center" data-count="0">
                                                    <h2 class="mounth-title">Tháng 08-2019</h2><button type="button" class="arrow-right" 
                                                                                                       onclick="location.href = '<c:url value="/user/nextMonth"/>'"><i class="fas fa-arrow-circle-right"></i></button></div>
                                                        <form:form action="${pageContext.request.contextPath}/user/chooseDate" method="post" class="form-horizontal" id="dateForm">
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
                                                                <c:if test = "${current=='yes'}">
                                                                <c:forEach var="i" begin="0" end="4">
                                                                    <tr class="btn-booking-tr">
                                                                        <c:forEach var="j" begin="0" end="6">
                                                                            <c:if test="${i<curi}">
                                                                                <td><button type="button" class="btn-booking-calendar-disable btn btn-secondary disabled" id="${calendar[i][j]}" onClick="reply_click(this.id)"><span>${calendar[i][j]}</span></button></td>
                                                                            </c:if>
                                                                                <c:if test="${i==curi&&j<curj}">
                                                                                <td><button type="button" class="btn-booking-calendar-disable btn btn-secondary disabled" id="${calendar[i][j]}" onClick="reply_click(this.id)"><span>${calendar[i][j]}</span></button></td>
                                                                            </c:if>
                                                                            <c:if test="${i==curi&&j==curj}">
                                                                                <td class=""><button type="button" class="round-button btn btn-secondary btnCurrent" id="${calendar[i][j]}"><span>${calendar[i][j]}</span></button></td>
                                                                            </c:if>
                                                                            <c:if test="${i==curi&&j>curj}">
                                                                               <td class=""><button type="button" class="round-button btn btn-secondary " id="${calendar[i][j]}" onClick="reply_click(this.id)"><span>${calendar[i][j]}</span></button></td>
                                                                            </c:if>
                                                                            <c:if test="${i>curi&&i<4}">
                                                                               <td class=""><button type="button" class="round-button btn btn-secondary " id="${calendar[i][j]}" onClick="reply_click(this.id)"><span>${calendar[i][j]}</span></button></td>
                                                                            </c:if>
                                                                            <c:if test="${i==4}"> 
                                                                                <c:if test="${calendar[i][j]<max}">
                                                                                    <td class=""><button type="button" class="btn-booking-calendar-disable btn btn-secondary disabled" id="${calendar[i][j]}" onClick="reply_click(this.id)"><span>${calendar[i][j]}</span></button></td>
                                                                                </c:if>
                                                                                <c:if test="${calendar[i][j]>=max}">
                                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="${calendar[i][j]}" onClick="reply_click(this.id)"><span>${calendar[i][j]}</span></button></td>
                                                                                </c:if>
                                                                            </c:if>
                                                                        </c:forEach>
                                                                    </tr>
                                                                </c:forEach>
                                                                </c:if>
                                                                <c:if test = "${current=='no'}">
                                                                    <c:forEach var="i" begin="0" end="4">
                                                                    <tr class="btn-booking-tr">
                                                                        <c:forEach var="j" begin="0" end="6">
                                                                            <c:if test="${j==0}">
                                                                                <td><button type="button" class="btn-booking-calendar-disable btn btn-secondary disabled" id="${calendar[i][j]}" onClick="reply_click(this.id)"><span>${calendar[i][j]}</span></button></td>
                                                                            </c:if>
                                                                            <c:if test="${j!=0}">
                                                                                 <td class=""><button type="button" class="round-button btn btn-secondary" id="${calendar[i][j]}" onClick="reply_click(this.id)"><span>${calendar[i][j]}</span></button></td>
                                                                            </c:if>
                                                                        </c:forEach>
                                                                    </tr>
                                                                </c:forEach>
                                                                </c:if>
                                                                <!--
                                                                <tr class="btn-booking-tr">
                                                                    <td><button type="button" class="btn-booking-calendar-disable btn btn-secondary disabled" id="28" onClick="reply_click(this.id)"><span>28</span></button></td>
                                                                    <td class=""><button type="button" class="btn-booking-calendar-disable btn btn-secondary " id="29" onClick="reply_click(this.id)"><span>29</span></button></td>
                                                                    <td class=""><button type="button" class="btn-booking-calendar-disable btn btn-secondary " id="30" onClick="reply_click(this.id)"><span>30</span></button></td>
                                                                    <td class=""><button type="button" class="btn-booking-calendar-disable btn btn-secondary " id="31" onClick="reply_click(this.id)"><span>31</span></button></td>
                                                                    <td class=""><button type="button" class="btn-booking-calendar-disable btn btn-secondary " id="01" onClick="reply_click(this.id)"><span>01</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary btnCurrent" id="02"><span>02</span></button></td>
                                                                    <td class=""><button calmonth="2" type="button" class="btn-booking-calendar-disable btn btn-secondary "><span>03</span></button></td>
                                                                </tr>
                                                                <tr class="btn-booking-tr">
                                                                    <td><button type="button" class="btn-booking-calendar-disable btn btn-secondary disabled" id="04" onClick="reply_click(this.id)"><span>04</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="05" onClick="reply_click(this.id)"><span>05</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="06" onClick="reply_click(this.id)"><span>06</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="07" onClick="reply_click(this.id)"><span>07</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="08" onClick="reply_click(this.id)"><span>08</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="09" onClick="reply_click(this.id)"><span>09</span></button></td>
                                                                    <td class=""><button calmonth="2" type="button" class="round-button btn btn-secondary " onClick="reply_click(this.id)"><span>10</span></button></td>
                                                                </tr>
                                                                <tr class="btn-booking-tr">
                                                                    <td><button type="button" class="btn-booking-calendar-disable btn btn-secondary disabled" id="11" onClick="reply_click(this.id)"><span>11</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="12" onClick="reply_click(this.id)"><span>12</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="13" onClick="reply_click(this.id)"><span>13</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="14" onClick="reply_click(this.id)"><span>14</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="15" onClick="reply_click(this.id)"><span>15</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="16" onClick="reply_click(this.id)"><span>16</span></button></td>
                                                                    <td class=""><button calmonth="2" type="button" class="round-button btn btn-secondary " id="17" onClick="reply_click(this.id)"><span>17</span></button></td>
                                                                </tr>
                                                                <tr class="btn-booking-tr">
                                                                    <td><button type="button" class="btn-booking-calendar-disable btn btn-secondary disabled" id="18" onClick="reply_click(this.id)"> <span>18</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="19" onClick="reply_click(this.id)"><span>19</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="20" onClick="reply_click(this.id)"><span>20</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="21" onClick="reply_click(this.id)"><span>21</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="22" onClick="reply_click(this.id)"><span>22</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="23" onClick="reply_click(this.id)"><span>23</span></button></td>
                                                                    <td class=""><button calmonth="2" type="button" class="round-button btn btn-secondary " id="24" onClick="reply_click(this.id)"><span>24</span></button></td>
                                                                </tr>
                                                                <tr class="btn-booking-tr">
                                                                    <td><button type="button" class="btn-booking-calendar-disable btn btn-secondary disabled" id="25" onClick="reply_click(this.id)"><span>25</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="26" onClick="reply_click(this.id)"><span>26</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="27" onClick="reply_click(this.id)"><span>27</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="28" onClick="reply_click(this.id)"><span>28</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="29" onClick="reply_click(this.id)"><span>29</span></button></td>
                                                                    <td class=""><button type="button" class="round-button btn btn-secondary " id="30" onClick="reply_click(this.id)"><span>30</span></button></td>
                                                                    <td class=""><button calmonth="2" type="button" class="round-button btn btn-secondary " id="31" onClick="reply_click(this.id)"><span>31</span></button></td>
                                                                </tr>
                                                                -->
                                                            </tbody>
                                                        </table>
                                                        <input hidden name="selectedDate" id="selectedDate"/>
                                                        <script type="text/javascript">
                                                            function reply_click(clicked_id)
                                                            {
                                                                document.getElementById("selectedDate").value = clicked_id;
                                                            }
                                                        </script>
                                                    </div>
                                                    <button class="btn btn--rounded-blue btn--sm" type ="submit">TIẾP TỤC</button>
                                                </form:form>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
                                                            function process() {
                                                                $("button").click(function () {
                                                                    var fired_button = $(this).val();
                                                                    document.getElementById("selectedDate").value = fired_button;
                                                                });
                                                            }
</script>
</body>

</html>
