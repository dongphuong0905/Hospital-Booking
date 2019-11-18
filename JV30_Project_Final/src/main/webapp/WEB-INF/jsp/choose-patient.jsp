<%-- 
    Document   : choosePatient
    Created on : Jul 30, 2019, 8:28:01 PM
    Author     : phuon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="includes/header.jsp"></jsp:include>
    <div class="container">
        <div class="row">
            <div class="banner-info">
                <div class="banner-text text-center">
                    <h1 class="white">Choose patient records!</h1>
                </div>
            </div>
        <c:if test="${empty patient}">
            <div class="col-md-push-12">
                <div class="booking-form">
                    <div class="form-group">
                        <center><span class="form-label">Không có hồ sơ bệnh nhân </span></center>
                    </div>
                    <center>
                        <div class="col-sm-12" style="padding-bottom: 10px">
                            <button class="btn btn-danger" onclick="location.href = '<c:url value="/user/add/${userId}"/>'">
                                Thêm bệnh nhân</button>
                        </div>
                    </center>
                    <hr>

                </div>
            </div>
        </c:if>
        <c:if test="${not empty patient}">
            <div class="col-md-push-12">
                <c:forEach var="patientDetail" items="${patient}">
                    <div class="booking-form">
                        <button class="btn btn-info" onclick="myFunction()" id="myBtn">Chi tiết</button><br/><br/>
                        <div class="form-group">
                            <span class="form-label">Họ tên bệnh nhân: </span>
                            <span class="form-label">${patientDetail.patientName}</span>
                        </div>
                        <hr>
                        <div class="form-group">
                            <span class="form-label">Ngày sinh: </span>
                            <span class="form-label">${patientDetail.birthday}</span>
                        </div>
                        <hr>
                        <span id="dots"></span>
                        <span id="more">
                            <div class="form-group">
                                <span class="form-label">Số điện thoại: </span>
                                <span class="form-label">${patientDetail.patientPhoneNumber}</span>
                            </div>
                            <hr>

                            <div class="form-group">
                                <span class="form-label">Giới tính: </span>
                                <span class="form-label">${patientDetail.patientGender}</span>
                            </div>
                            <hr>
                            <div class="form-group">
                                <span class="form-label">CMND: </span>
                                <span class="form-label">${patientDetail.patientCardId}</span>
                            </div>
                            <hr>

                            <div class="form-group">
                                <span class="form-label">Email: </span>
                                <span class="form-label">${patientDetail.email}</span>
                            </div>
                            <hr>
                            <div class="form-group">
                                <span class="form-label">Địa chỉ: </span>
                                <span class="form-label">${patientDetail.patientAddress}</span>
                            </div>

                            <div class="col-sm-12" style="padding-bottom: 10px">
                                <button class="btn btn-primary" onclick="location.href = '<c:url value="/user/choose/${patientDetail.id}"/>'">

                                    Chọn</button>
                                <button class="btn btn-warning" onclick="location.href = '<c:url value="/user/update/${patientDetail.id}"/>'">
                                    <!---->
                                    Sửa</button>
                                <button class="btn btn-danger" onclick="location.href = '<c:url value="/user/delete/${patientDetail.id}/${userId}"/>'">
                                    <!---->
                                    Xoá</button>
                            </div>
                        </span>

                    </div>
                    <br/>
                </c:forEach>
                <div class="booking-form">
                    <center>
                        <div class="col-sm-12" style="padding-bottom: 10px">
                            <button class="btn btn-danger" onclick="location.href = '<c:url value="/user/add/${userId}"/>'">
                                Thêm bệnh nhân</button>
                        </div>
                    </center>
                </div>

            </div>
        </c:if>
    </div>
</div>
</div>
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
</section>
<!--/ banner-->


<!--footer-->
<jsp:include page="includes/footer.jsp"></jsp:include>

<div class="brc-scroll-auto" id="chua_danh_sach_chuyen_khoa">
                                                            <c:forEach var="spec" items="${list}">
                                                                <ul class="table-ul-cont">
                                                                    <li>${spec.nameOfSpecial}</li>
                                                                    <li>${spec.price} đ<a><span><button class="btn btn-primary" onclick="location.href = '<c:url value="/user/choose-list/${spec.id}"/>'">
                                                                                    Chọn</button></span></a></li>
                                                                </ul>
                                                            </c:forEach>
                                                        </div>