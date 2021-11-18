<%-- 
    Document   : index
    Created on : Nov 5, 2021, 8:33:36 PM
    Author     : richartl
--%>

    <jsp:include page="partials/head.jsp">
       <jsp:param name="title" value="Error" />
    </jsp:include>

        <div class="container">
            <div class="jumbotron jumbotron-fluid">
              <div class="container">
                <h1 class="display-4">Error, no existe ese usuario</h1>
              </div>
            </div>

            <div class="row">
                <form action="${pageContext.request.contextPath}/LoginController" method="get">
                  <button type="submit" class="btn btn-primary">Regresar</button>
                </form>
            </div>

    <jsp:include page="partials/scripts.jsp"></jsp:include>
    </body>
</html>
