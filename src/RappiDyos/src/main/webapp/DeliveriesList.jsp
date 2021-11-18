<%-- 
    Document   : index
    Created on : Nov 5, 2021, 8:33:36 PM
    Author     : richartl
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <jsp:include page="partials/head.jsp">
       <jsp:param name="title" value="Pedidos" />
    </jsp:include>

        <div class="container">
            <jsp:include page="partials/navbar.jsp"></jsp:include>
            </br>

            <div class="jumbotron">
              <h1 class="display-4">Todos los pedidos</h1>
            </div>
            </br>

            <table class="table">
              <thead>
                <tr>
                  <th scope="col">Repartidor</th>
                  <th scope="col">Producto</th>
                  <th scope="col">Transporte</th>
                  <th scope="col">Placa</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="delivery" items="${deliveries}">
                    <tr>
                      <td scope="col">${delivery.getDeliveryMan().getName()}</td>
                      <td scope="col">${delivery.getProduct().getName()}</td>
                      <td scope="col">${delivery.getDeliveryMan().getTransport().getTransportType()}</td>
                      <td scope="col">${delivery.getDeliveryMan().getTransport().getVin()}</td>
                    </tr>
                </c:forEach>
              </tbody>
            </table>
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
