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
              <h1 class="display-4">Actualizar transporte</h1>
            </div>
            </br>

            <div class="row">
                <div class="col-6">
                    <table class="table">
                      <thead>
                        <tr>
                          <th scope="col">ID</th>
                          <th scope="col">Tipo de transporte</th>
                          <th scope="col">Placa</th>
                        </tr>
                      </thead>
                      <tbody>
                          <c:forEach var="transport" items="${transports}">
                              <tr>
                                <td scope="row">${transport.getId()}</td>
                                <td scope="row">${transport.getTransportType()}</td>
                                <td scope="row">${transport.getVin()}</td>
                              </tr>
                          </c:forEach>
                      </tbody>
                    </table>
                </div>
                <div class="col-6">
                    <form action="${pageContext.request.contextPath}/TransportUpdateController" method="post" id="transport_form">
                        <div class="form-group">
                            <label for="exampleInputID">ID</label>
                            <input type="text" class="form-control" id="exampleInputID" name="transport_id" placeholder="ID del transporte a actualizar">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputNombre">Tipo de transporte</label>
                            <input type="text" class="form-control" id="exampleInputTipo" name="transport_type" placeholder="Bici, Moto, Carro">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputNombre">Placa</label>
                            <input type="text" class="form-control" id="exampleInputVin" name="vin" placeholder="Placa">
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
