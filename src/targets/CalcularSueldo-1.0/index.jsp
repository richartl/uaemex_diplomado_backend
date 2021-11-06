<%-- 
    Document   : index
    Created on : Nov 5, 2021, 8:33:36 PM
    Author     : richartl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="partials/head.jsp">
       <jsp:param name="title" value="Calcular sueldo" />
    </jsp:include>

    <body>
        <div class="container">
            <div class="jumbotron jumbotron-fluid">
              <div class="container">
                <h1 class="display-4">Pagina de inicio</h1>
              </div>
            </div>

            <div class="row">
                <form action="${pageContext.request.contextPath}/SueldoController" method="post">
                  <div class="form-group">
                    <label for="exampleInputNombre">Nombre</label>
                    <input type="text" class="form-control" id="exampleInputNombre" name="name" aria-describedby="emailHelp" placeholder="Escribe tu nombre">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputSueldo">Sueldo</label>
                    <input type="text" class="form-control" id="exampleInputSueldo" name="salary" placeholder="Escribe tu sueldo">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputSueldo">Dias trabajados</label>
                    <input type="text" class="form-control" id="exampleInputDias" name="days" placeholder="Escribe tus dias trabajados">
                  </div>
                  <button type="submit" class="btn btn-primary">Enviar</button>
                </form>
            </div>

    <jsp:include page="partials/scripts.jsp"></jsp:include>
    </body>
</html>
