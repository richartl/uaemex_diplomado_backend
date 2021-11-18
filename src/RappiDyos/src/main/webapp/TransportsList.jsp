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

            <table class="table">
              <thead>
                <tr>
                  <th scope="col">Tipo</th>
                  <th scope="col">ID</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach var="transport" items="${transports}">
                    <tr>
                      <td scope="row">${transport.getTransportType()}</td>
                      <td scope="row">${transport.getVin()}</td>
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
