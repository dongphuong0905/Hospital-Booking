<%-- 
    Document   : index
    Created on : Aug 1, 2019, 10:38:32 AM
    Author     : phuon
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="includes/header.jsp"></jsp:include>
    <div class="container">
        <div class="row">
            <div class="banner-info">
                <div class="banner-logo text-center">
                    <img src="<c:url value="/resources/img/logo.png"/>" class="img-responsive">
            </div>
            <div class="banner-text text-center">
                <h1 class="white">Booking hospital online!</h1>
                <p>Không đợi chờ ở bệnh viện, bạn chỉ cần đặt lịch khám ở đây và đến bệnh viện vào ngày hẹn.</p>
                <sec:authorize access="!isAuthenticated()">
                    <button class="btn btn-appoint" onclick="location.href = '<c:url value="/user/"/>'">
                        Đăng nhập</button>
                    </sec:authorize>

                <sec:authorize access="isAuthenticated()">
                    <sec:authentication var="account" property="principal" />
                    <button class="btn btn-appoint" onclick="location.href = '<c:url value="/user/choose-info/${account.id}"/>'">
                        Đặt lịch khám</button>
                    </sec:authorize>
            </div>
            <div class="overlay-detail text-center">
                <a href="#service"><i class="fa fa-angle-down"></i></a>
            </div>
        </div>
    </div>
</div>
</div>
</section>
<!--service-->
<!--/ service-->

<!--footer-->
<jsp:include page="includes/service.jsp"></jsp:include>
    <!--/footer-->
<jsp:include page="includes/footer.jsp"></jsp:include>