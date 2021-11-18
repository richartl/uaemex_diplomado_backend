<%-- 
    Document   : index
    Created on : Nov 5, 2021, 8:33:36 PM
    Author     : richartl
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <jsp:include page="partials/head.jsp">
       <jsp:param name="title" value="Error" />
    </jsp:include>

        <div class="container">
            <jsp:include page="partials/navbar.jsp"></jsp:include>
            </br>

            <div class="jumbotron">
              <h1 class="display-4">Repartidores</h1>
            </div>
            </br>

            <table class="table">
              <thead>
                <tr>
                  <th scope="col">Nombre</th>
                  <th scope="col">ID</th>
                  <th scope="col">Id de Transporte</th>
                  <th scope="col">Tipo de transporte</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="delivery_man" items="${delivery_men}">
                    <tr>
                      <td scope="row">${delivery_man.getName()}</td>
                      <td scope="row">${delivery_man.getOwnId()}</td>
                      <td scope="row">${delivery_man.getTransport().getVin()}</td>
                      <td scope="row">${delivery_man.getTransport().getTransportType()}</td>
                    </tr>
                </c:forEach>
              </tbody>
            </table>
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
