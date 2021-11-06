<%-- 
    Document   : index
    Created on : Nov 5, 2021, 8:33:36 PM
    Author     : richartl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="partials/head.jsp">
       <jsp:param name="title" value="Ecuacion cuadratica" />
    </jsp:include>

    <body>
        <div class="container">
            <div class="jumbotron jumbotron-fluid">
              <div class="container">
                <h1 class="display-4">Resultado</h1>
              </div>
            </div>

            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text">R1</span>
                <span class="input-group-text">${r1}</span>
              </div>
            </div>

            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text">R2</span>
                <span class="input-group-text">${r2}</span>
              </div>
            </div>

            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text">R1</span>
                <span class="input-group-text">${message}</span>
              </div>
            </div>

            <a href="${pageContext.request.contextPath}/DownloadResultsFile"><button type="button" class="btn btn-primary">Resultados</button></a>
            <a href="${pageContext.request.contextPath}/"><button type="button" class="btn btn-primary">Regresar</button></a>


    <jsp:include page="partials/scripts.jsp"></jsp:include>
    </body>
</html>
