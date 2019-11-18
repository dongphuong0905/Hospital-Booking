<%-- 
    Document   : add-patient-information
    Created on : Jul 30, 2019, 8:49:45 PM
    Author     : phuon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="includes/header.jsp"></jsp:include>
    <div class="container">
        <div class="row">
            <div class="banner-info">
                <div class="banner-text text-center">
                    <h1 class="white">Choose patient records!</h1>
                </div>
            </div>
            <div class="col-md-push-12">
                <div class="booking-form">
                <c:if test="${message!=null && message!=''}">
                    <div class="row">
                        <div class="col-sm-12">
                            <c:if test="${status!=null && status=='success'}">
                                <div class="alert alert-success">
                                    ${message}
                                </div>
                            </c:if>
                            <c:if test="${status!=null && status=='fail'}">
                                <div class="alert alert-danger">
                                    ${message}
                                </div>
                            </c:if>
                        </div>
                    </div>
                </c:if>
                <form:form action="${pageContext.request.contextPath}/user/${action}" method="post" 
                           modelAttribute="relative" class="form-horizontal">
                    <c:if test="${action=='up-patient'}">
                        <input name="id" value="${relative.id}"  />
                        <input name="patientDetail.id" 
                               value="${patient.id}"  />
                        <h3>${pageContext.request.contextPath}/user/${action}</h3>
                    </c:if>
                        <h1>${action}</h1>
                            
                    <div class="form-group">
                        <span class="form-label">Họ tên bệnh nhân: </span>
                        <input class="form-control" type="text" name="patientDetail.patientName" value="${patient.patientName}" placeholder="" required>
                    </div>
                    <hr>
                    <div class="form-group">
                        <span class="form-label">Ngày sinh: </span>
                        <input class="form-control" type="date" name="patientDetail.birthday" value="${patient.birthday}" placeholder="" required>
                    </div>
                    <hr>
                    <div class="form-group">
                        <span class="form-label">Số điện thoại: </span>
                        <input class="form-control" type="text" name="patientDetail.patientPhoneNumber" value="${patient.patientPhoneNumber}" placeholder="" required>
                    </div>
                    <hr>
                    <div class="form-group">
                        <span class="form-label">Giới tính: </span>
                        <select name="patientDetail.patientGender" class="form-control">
                            <option value="Nam" <c:if test="${relative.relationshipRole=='Nam'}">selected</c:if>>Nam</option>
                            <option value="Nữ" <c:if test="${relative.relationshipRole=='Nữ'}">selected</c:if>>Nữ</option>
                        </select>
                        <span class="select-arrow"></span>
                    </div>
                    <hr>
                    <div class="form-group">
                        <span class="form-label">CMND: </span>
                        <input class="form-control" type="text" name="patientDetail.patientCardId" value="${patient.patientCardId}" placeholder="" required>
                    </div>
                    <hr>

                    <div class="form-group">
                        <span class="form-label">Email: </span>
                        <input class="form-control" type="text" name="patientDetail.email" value="${patient.email}" placeholder="" required>
                    </div>
                    <hr>
                    <div class="form-group">
                        <span class="form-label">Địa chỉ: </span>
                        <input class="form-control" type="text" name="patientDetail.patientAddress" value="${patient.patientAddress}" placeholder="" required>
                    </div>

                    <input name="patientDetail.account.id" value="${userId}" hidden/>
                    
                    <div class="form-group">
                        <span class="form-label">Họ tên người nhà: </span>
                        <input class="form-control" type="text" name="name" value="${relative.name}" placeholder="" required>
                    </div>
                    <div class="form-group">
                        <span class="form-label">Số điện thoại: </span>
                        <input class="form-control" type="text" name="phoneNumber" value="${relative.phoneNumber}" placeholder="" required>
                    </div>
                    <div class="form-group">
                        <span class="form-label">Email: </span>
                        <input class="form-control" type="text" name="email" value="${relative.email}" placeholder="" required>
                    </div>
                    <div class="form-group">
                        <span class="form-label">Quan hệ: </span>
                        <select name="relationshipRole" class="form-control">
                            <option value="">--Chọn--</option>
                            <option value="Chong" <c:if test="${relative.relationshipRole=='Chong'}">selected</c:if>>Chồng</option>
                            <option value="Phu huynh" <c:if test="${relative.relationshipRole=='Phu huynh'}">selected</c:if>>Phụ huynh</option>
                            <option value="Vo" <c:if test="${relative.relationshipRole=='Vo'}">selected</c:if>>Vợ</option>
                            <option value="Bo" <c:if test="${relative.relationshipRole=='Bo'}">selected</c:if>>Bố</option>
                            <option value="Me" <c:if test="${relative.relationshipRole=='Me'}">selected</c:if>>Mẹ</option>
                            <option value="Con trai" <c:if test="${relative.relationshipRole=='Con trai'}">selected</c:if>>Con gái</option>
                            <option value="Con gai" <c:if test="${relative.relationshipRole=='Con gai'}">selected</c:if>>Con trai</option>
                            <option value="Ba" <c:if test="${relative.relationshipRole=='Ba'}">selected</c:if>>Bà</option>
                            <option value="Ong" <c:if test="${relative.relationshipRole=='Ong'}">selected</c:if>>Ông</option>
                            <option value="Anh trai/Em trai" <c:if test="${relative.relationshipRole=='Anh trai/Em trai'}">selected</c:if>>Anh trai/Em trai</option>
                            <option value="Chi gai/Em gai" <c:if test="${relative.relationshipRole=='Chi gai/Em gai'}">selected</c:if>>Chị gái/Em gái</option>
                            <option value="Cau/Chu/Duong" <c:if test="${relative.relationshipRole=='Cau/Chu/Duong'}">selected</c:if>>Cậu/Chú/Dượng/Bác trai</option>
                            <option value="Co/Di/Thim" <c:if test="${relative.relationshipRole=='Co/Di/Thim'}">selected</c:if>>Cô/Dì/Mợ/Thím/Bác gái</option>
                        </select>
                        <span class="select-arrow"></span>
                    </div>

                    <div class="col-sm-12" style="padding-bottom: 10px">
                        <button class="btn btn-primary" type="submit">
                            Xong</button>
                    </div>
                </form:form>
            </div>

            <br />
        </div>
    </div>
</div>
</div>
</section>
<!--/ banner-->


<!--footer-->
<jsp:include page="includes/footer"/>s
<!--/ footer-->
