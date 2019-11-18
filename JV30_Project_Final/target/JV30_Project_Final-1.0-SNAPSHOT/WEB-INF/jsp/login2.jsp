<%-- 
    Document   : login
    Created on : Jun 5, 2019, 7:31:56 PM
    Author     : AnhLe
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.min.css"/>" 
              type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12" style="text-align: center">
                    <h2>Login</h2>
                </div> 
            </div>

            <c:if test="${message!=null && message!=''}">
                <div class="row">
                    <div class="col-xs-12 col-sm-12">
                        <div class="alert alert-danger">
                            ${message}
                        </div>
                    </div> 
                </div>
            </c:if>

            <div class="row">
                <div class="col-xs-12 col-sm-12">
                    <form action="<c:url value="j_spring_security_check"/>" method="post" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 col-xs-4 control-label">
                                Email</label>
                            <div class="col-sm-8 col-xs-8">
                                <input name="email" type="email" 
                                       class="form-control" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 col-xs-4 control-label">
                                Password</label>
                            <div class="col-sm-8 col-xs-8">
                                <input name="password" type="password" 
                                       class="form-control" />
                            </div>
                        </div>
                        <div class="form-group" style="text-align: center">
                            <input class="btn btn-primary" type="submit" value="Login" />
                        </div>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
