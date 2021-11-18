<%-- 
    Document   : index
    Created on : Nov 5, 2021, 8:33:36 PM
    Author     : richartl
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <jsp:include page="partials/head.jsp">
       <jsp:param name="title" value="Repartidores" />
    </jsp:include>

        <div class="container">
            <jsp:include page="partials/navbar.jsp"></jsp:include>
            </br>

            <div class="jumbotron">
              <h1 class="display-4">Actualizar repartidor</h1>
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
                            <th scope="col">Id de Transporte</th>
                            <th scope="col">Tipo de transporte</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach var="delivery_man" items="${delivery_men}">
                            <tr>
                                <td scope="row">${delivery_man.getId()}</td>
                                <td scope="row">${delivery_man.getName()}</td>
                                <td scope="row">${delivery_man.getOwnId()}</td>
                                <td scope="row">${delivery_man.getTransport().getVin()}</td>
                                <td scope="row">${delivery_man.getTransport().getTransportType()}</td>
                            </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                </div>
                <div class="col-6">
                    <form action="${pageContext.request.contextPath}/DeliveryManUpdateController" method="post" id="delivery_man_form">
                        <div class="form-group">
                            <label for="exampleInputID">ID</label>
                            <input type="text" class="form-control" id="exampleInputID" name="delivery_man_id" placeholder="ID del repartidor a actualizar">
                        </div>
                        <div class="form-group">
                          <label for="exampleInputNombre">Nombre</label>
                          <input type="text" class="form-control" id="exampleInputNombre" name="name" placeholder="Nombre">
                        </div>
                        <div class="form-group">
                          <label for="exampleInputID">ID</label>
                          <input type="text" class="form-control" id="exampleInputId" name="own_id" placeholder="SKU de repartidor">
                        </div>
                        <div class="form-group">
                          <label for="delivery_men">Transporte:</label>
                          <select id="transport" name="transports_list" form="delivery_man_form">
                              <c:forEach var="transport" items="${transports}">
                                  <option value="${transport.getId()}">${transport.getVin()} - ${transport.getTransportType()}</option>
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
                <form action="${pageContext.request.contextPath}/WelcomePage.jsp" method="get">
                  <button type="submit" class="btn btn-primary">Regresar</button>
                </form>
            </div>

    <jsp:include page="partials/scripts.jsp"></jsp:include>
    </body>
</html>
