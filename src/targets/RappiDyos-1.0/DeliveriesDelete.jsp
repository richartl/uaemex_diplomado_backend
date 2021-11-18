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
              <h1 class="display-4">Eliminar entrega</h1>
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
                    <form action="${pageContext.request.contextPath}/DeliveryDeleteController" method="post" id="delivery_form">
                        <div class="form-group">
                            <label for="exampleInputID">ID</label>
                            <input type="text" class="form-control" id="exampleInputID" name="delivery_id" placeholder="ID del pedido a eliminar">
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
