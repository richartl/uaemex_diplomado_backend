<%-- 
    Document   : index
    Created on : Nov 5, 2021, 8:33:36 PM
    Author     : richartl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="partials/head.jsp">
       <jsp:param name="title" value="Productos" />
    </jsp:include>

    <body>
        <div class="container">
            <div class="jumbotron jumbotron-fluid">
              <div class="container">
                <h1 class="display-4">Se guardaron los siguientes datos</h1>
              </div>
            </div>

            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text">Clave</span>
                <span class="input-group-text">${key}</span>
              </div>
            </div>

            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text">Nombre</span>
                <span class="input-group-text">${name}</span>
              </div>
            </div>

            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text">Precio</span>
                <span class="input-group-text">${price}</span>
              </div>
            </div>

            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text">Cantidad</span>
                <span class="input-group-text">${quantity}</span>
              </div>
            </div>

            <a href="${pageContext.request.contextPath}/"><button type="button" class="btn btn-primary">Regresar</button></a>


    <jsp:include page="partials/scripts.jsp"></jsp:include>
    </body>
</html>
