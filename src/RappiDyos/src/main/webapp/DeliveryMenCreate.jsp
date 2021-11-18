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
            <div class="row justify-content-lg-center justify-content-md-center">
                <div class="col-4">
                    <form action="${pageContext.request.contextPath}/DeliveryManAddController" method="post" id="delivery_man_form">
                      <div class="form-group">
                        <label for="exampleInputNombre">Nombre</label>
                        <input type="text" class="form-control" id="exampleInputNombre" name="name" placeholder="Nombre">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputID">ID</label>
                        <input type="text" class="form-control" id="exampleInputId" name="own_id" placeholder="ID de repartidor">
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
