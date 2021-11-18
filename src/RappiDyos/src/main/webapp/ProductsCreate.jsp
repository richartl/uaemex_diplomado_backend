<%-- 
    Document   : index
    Created on : Nov 5, 2021, 8:33:36 PM
    Author     : richartl
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <jsp:include page="partials/head.jsp">
       <jsp:param name="title" value="Entregas" />
    </jsp:include>

        <div class="container">
            <jsp:include page="partials/navbar.jsp"></jsp:include>
            </br>

            <div class="jumbotron">
              <h1 class="display-4">Crear Producto</h1>
            </div>
            </br>

            <div class="row justify-content-lg-center justify-content-md-center">
                <div class="col-4">
                    <form action="${pageContext.request.contextPath}/ProductAddController" method="post" id="product_form">
                      <div class="form-group">
                        <label for="exampleInputNombre">Nombre</label>
                        <input type="text" class="form-control" id="exampleInputNombre" name="name" placeholder="Nombre">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputNombre">SKU</label>
                        <input type="text" class="form-control" id="exampleInputVin" name="vin" placeholder="SKU del producto">
                      </div>
                      <button type="submit" class="btn btn-primary">Enviar</button>
                    </form>
                </div>
            </div>

            </br>
            </br>
            <div class="row">
                <form action="${pageContext.request.contextPath}/LoginController" method="get">
                  <button type="submit" class="btn btn-primary">Regresar</button>
                </form>
            </div>

    <jsp:include page="partials/scripts.jsp"></jsp:include>
    </body>
</html>
