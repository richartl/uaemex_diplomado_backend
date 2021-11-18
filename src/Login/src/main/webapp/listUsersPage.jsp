<%-- 
    Document   : index
    Created on : Nov 5, 2021, 8:33:36 PM
    Author     : richartl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <jsp:include page="partials/head.jsp">
       <jsp:param name="title" value="Productos" />
    </jsp:include>

    <body>
        <div class="container">
            <div class="jumbotron jumbotron-fluid">
              <div class="container">
                <h1 class="display-4">Usuarios</h1>
              </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <c:forEach var="user" items="${users}">
                        <div class="card" style="width: 18rem;">
                            <div class="card-header">
                                ${user.name}
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Nickname: <span class="badge badge-secondary">${user.nickname}</span></li>
                                <li class="list-group-item">Email: <span class="badge badge-info">${user.email}</span></li>
                            </ul>
                        </div>
                        </br>
                    </c:forEach>
                </div>
            </div>

            <a href="${pageContext.request.contextPath}/welcomePage.jsp"><button type="button" class="btn btn-primary">Regresar</button></a>


    <jsp:include page="partials/scripts.jsp"></jsp:include>
    </body>
</html>
