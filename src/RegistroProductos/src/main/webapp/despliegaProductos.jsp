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
                <h1 class="display-4">Productos</h1>
              </div>
            </div>

            <c:forEach var="product" items="${products}">
                <div class="card" style="width: 18rem;">
                  <div class="card-header">
                      ${product[1]}
                  </div>
                  <ul class="list-group list-group-flush">
                      <li class="list-group-item">Clave: <span class="badge badge-secondary">${product[0]}</span></li>
                      <li class="list-group-item">Precio: <span class="badge badge-info">${product[2]}</span></li>
                      <li class="list-group-item">Cantidad: <span class="badge badge-info">${product[3]}</span></li>
                  </ul>
                </div>
                </br>
            </c:forEach>


            <a href="${pageContext.request.contextPath}/DownloadResultsFile"><button type="button" class="btn btn-primary">Descargar archivo</button></a>
            <a href="${pageContext.request.contextPath}/"><button type="button" class="btn btn-primary">Regresar</button></a>


    <jsp:include page="partials/scripts.jsp"></jsp:include>
    </body>
</html>
