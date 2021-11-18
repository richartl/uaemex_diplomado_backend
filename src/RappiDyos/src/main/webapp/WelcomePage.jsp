<%-- 
    Document   : index
    Created on : Nov 5, 2021, 8:33:36 PM
    Author     : richartl
--%>

    <jsp:include page="partials/head.jsp">
       <jsp:param name="title" value="Error" />
    </jsp:include>

        <div class="container">
            <jsp:include page="partials/navbar.jsp"></jsp:include>

            </br>
            </br>
            </br>
            <div class="row">
                <form action="${pageContext.request.contextPath}/" method="get">
                  <button type="submit" class="btn btn-primary">Regresar</button>
                </form>
            </div>

    <jsp:include page="partials/scripts.jsp"></jsp:include>
    </body>
</html>
