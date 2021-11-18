<%-- 
    Document   : index
    Created on : Nov 5, 2021, 8:33:36 PM
    Author     : richartl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="partials/head.jsp">
       <jsp:param name="title" value="Bienvenido" />
    </jsp:include>

    <body>
        <div class="container">
            <div class="jumbotron jumbotron-fluid">
              <div class="container">
                <h2>${message}</h2>
              </div>
            </div>
              
            <div class="row">
                <a href="${pageContext.request.contextPath}/"><button type="button" class="btn btn-primary">Regresar</button></a>
            </div>

    <jsp:include page="partials/scripts.jsp"></jsp:include>
    </body>
</html>
