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
                    <form action="${pageContext.request.contextPath}/DeliveryAddController" method="post" id="delivery_form">
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
                <form action="${pageContext.request.contextPath}/WelcomePage.jsp" method="get">
                  <button type="submit" class="btn btn-primary">Regresar</button>
                </form>
            </div>

    <jsp:include page="partials/scripts.jsp"></jsp:include>
    </body>
</html>
