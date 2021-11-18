<%-- 
    Document   : index
    Created on : Nov 5, 2021, 8:33:36 PM
    Author     : richartl
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <jsp:include page="partials/head.jsp">
       <jsp:param name="title" value="Transportes" />
    </jsp:include>

        <div class="container">
            <jsp:include page="partials/navbar.jsp"></jsp:include>
            </br>

            <div class="jumbotron">
              <h1 class="display-4">Actualizar producto</h1>
            </div>
            </br>

            <div class="row">
                <div class="col-6">
                    <table class="table">
                      <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">SKU</th>
                        </tr>
                      </thead>
                      <tbody>
                          <c:forEach var="product" items="${products}">
                              <tr>
                                <td scope="row">${product.getId()}</td>
                                <td scope="row">${product.getName()}</td>
                                <td scope="row">${product.getVin()}</td>
                              </tr>
                          </c:forEach>
                      </tbody>
                    </table>
                </div>
                <div class="col-6">
                    <form action="${pageContext.request.contextPath}/ProductUpdateController" method="post" id="product_form">
                        <div class="form-group">
                            <label for="exampleInputID">ID</label>
                            <input type="text" class="form-control" id="exampleInputID" name="product_id" placeholder="ID del producto a actualizar">
                        </div>
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
                <form action="${pageContext.request.contextPath}/WelcomePage.jsp" method="get">
                  <button type="submit" class="btn btn-primary">Regresar</button>
                </form>
            </div>

    <jsp:include page="partials/scripts.jsp"></jsp:include>
    </body>
</html>
