<%-- 
    Document   : searchpage
    Created on : Aug 21, 2019, 11:16:49 PM
    Author     : phuon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<jsp:include page="includes/header.jsp"></jsp:include>
    <div class="container">
        <div class="row">
            <div class="banner-info">
                <div class="banner-text text-center">
                    <h1 class="white">Tra cứu lịch sử đặt khám</h1>
                </div>
            </div>
            <div class="col-md-push-12">
                <div class="booking-form">
                    <center>
                    <form:form action="${pageContext.request.contextPath}/user/searchBooking" method="post">
                        <div class="col-sm-12" style="padding-bottom: 10px">
                            <span class="form-label">Nhập mã giao dịch: </span>
                            <input type=text" name="bookingId" class="form-control"/>

                        </div>
                        <button class="btn btn-danger" type="submit">
                            Tìm kiếm</button>
                        </form:form>
                </center>
                <hr>

            </div>
            <c:if test="${check == 'yes'}">
                <br/><br/>

                <div class="booking-form">

                    <div class="form-group">
                        <span class="form-label">Họ tên bệnh nhân: </span>
                        <span class="form-label">${patient.patientName}</span>
                    </div>
                    <hr>
                    <div class="form-group">
                        <span class="form-label">Tên khoa đã chọn: </span>
                        <span class="form-label">${special.nameOfSpecial}</span>
                    </div>
                    <hr>
                    <div class="form-group">
                        <span class="form-label">Tên bác sĩ: </span>
                        <span class="form-label">${doctor.doctorName}</span>
                    </div>
                    <hr>

                    <div class="form-group">
                        <span class="form-label">Thời gian: </span>
                        <span class="form-label">${booking.appointmentDate} (${bookingDetail.time}) ${clt}</span>
                    </div>
                    <hr>
                    <div class="form-group">
                        <span class="form-label">Tiền thanh toán: </span>
                        <span class="form-label">${booking.price}</span>
                    </div>
                    <c:if test="${booking.status==true}">
                        <div class="form-group">
                            <span class="form-label">Tình trạng thanh toán: </span>
                            <span class="form-label"><p style="color: greenyellow">Đã thanh toán</p></span>
                        </div>
                    </c:if>
                    <hr>
                    <c:if test="${booking.status==false}">
                        <div class="form-group">
                            <span class="form-label">Tình trạng thanh toán: </span>
                            <span class="form-label"><p style="color: red">Chưa thanh toán</p></span>
                        </div>
                    </c:if>
                    <div class="form-group">
                        <button class="btn btn-danger" onclick="location.href = '<c:url value="/user/cancelBooking/${booking.id}"/>'">
                            Huỷ buổi khám</button>
                    </div>
                </div>
            </c:if>
            <c:if test="${check=='no'}">
                <br/><br/>
                <div class="booking-form">
                    <div class="form-group">
                        <center><span class="form-label">Không tìm thấy giao dịch</span></center>               
                    </div>
                </div>
                <br/><br/>
            </c:if>
        </div>

    </div>
</div>
</div>
</section>
<!--/ banner-->


<!--footer-->
<jsp:include page="includes/footer.jsp"></jsp:include>

