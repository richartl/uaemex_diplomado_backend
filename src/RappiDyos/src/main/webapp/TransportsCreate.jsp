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
            <div class="row justify-content-lg-center justify-content-md-center">
                <div class="col-4">
                    <form action="${pageContext.request.contextPath}/TransportAddController" method="post" id="transport_form">
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
