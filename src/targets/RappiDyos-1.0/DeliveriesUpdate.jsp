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
              <h1 class="display-4">Actualizar pedido</h1>
            </div>
            </br>

            <div class="row">
                <div class="col-6">
                    <table class="table">
                      <thead>
                        <tr>
                          <th scope="col">ID</th>
                          <th scope="col">Repartidor</th>
                          <th scope="col">Producto</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach var="delivery" items="${deliveries}">
                            <tr>
                              <td scope="col">${delivery.getId()}</td>
                              <td scope="col">${delivery.getDeliveryMan().getName()}</td>
                              <td scope="col">${delivery.getProduct().getName()}</td>
                            </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                </div>

                <div class="col-6">
                    <form action="${pageContext.request.contextPath}/DeliveryUpdateController" method="post" id="delivery_form">
                        <div class="form-group">
                            <label for="exampleInputID">ID</label>
                            <input type="text" class="form-control" id="exampleInputID" name="delivery_id" placeholder="ID del pedido a actualizar">
                        </div>
                      <div class="form-group">
                        <label for="delivery_men">Repartidor:</label>
                        <select id="delivery_men" name="delivery_men_list" form="delivery_form">
                            <c:forEach var="delivery_man" items="${delivery_men}">
                                <option value="${delivery_man.getId()}">${delivery_man.getName()}</option>
                            </c:forEach>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="product">Producto:</label>
                        <select id="products" name="products_list" form="delivery_form">
                            <c:forEach var="product" items="${products}">
                                <option value="${product.getId()}">${product.getName()}</option>
                            </c:forEach>
                        </select>
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
