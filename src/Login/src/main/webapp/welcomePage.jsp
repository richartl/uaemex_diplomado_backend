<%-- 
    Document   : index
    Created on : Nov 5, 2021, 8:33:36 PM
    Author     : richartl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="partials/head.jsp">
       <jsp:param name="title" value="Bienvenido" />
    </jsp:include>

    <body>
        <div class="container">
            <div class="jumbotron jumbotron-fluid">
              <div class="container">
                <h1 class="display-4">Bienvenido ${loggedUser.getName()}</h1>
                <h2>${message}</h2>
              </div>
            </div>

            <div class="row">
                <form action="${pageContext.request.contextPath}/GetUsersController" method="get">
                  <button type="submit" class="btn btn-primary">Consultar Usuarios</button>
                </form>
            </div>
            </br>      
            <div class="row">
                <form action="${pageContext.request.contextPath}/DeleteUserController" method="get">
                  <button type="submit" class="btn btn-primary">Borrar Usuario</button>
                </form>
            </div>
                  </br>      
            <div class="row">
                <form action="${pageContext.request.contextPath}/LogoutController" method="post">
                  <button type="submit" class="btn btn-primary">Salir</button>
                </form>
            </div>

    <jsp:include page="partials/scripts.jsp"></jsp:include>
    <script>
                 let view = {
                    init: function() {
                        this.input_for_a = $('#exampleInputEmail');
                        this.input_for_b = $('#exampleInputPassword');
                        this.erase_button = $('#eraseButton');
                    }
                 }
                 const controller = {
                    init: function() {
                        view.init();
                        this.eraseData();
                    },
                    eraseData: function() {
                        const _self = this;
                        view.erase_button.click(function(event) {
                            event.preventDefault();
                            view.input_for_a.val('');
                            view.input_for_b.val('');
                        });
                    }
                 }
                 controller.init()
    </script>
    </body>
</html>
