<%-- 
    Document   : index
    Created on : Nov 5, 2021, 8:33:36 PM
    Author     : richartl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="partials/head.jsp">
       <jsp:param name="title" value="Calcular sueldo" />
    </jsp:include>

    <body>
        <div class="container">
            <div class="jumbotron jumbotron-fluid">
              <div class="container">
                <h1 class="display-4">Login</h1>
              </div>
            </div>

         <div class="row">
                <form action="${pageContext.request.contextPath}/LoginController" method="post">
                  <div class="form-group">
                    <label for="exampleInputNombre">Email</label>
                    <input type="text" class="form-control" id="exampleInputEmail" name="email" aria-describedby="emailHelp" placeholder="Email">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputSueldo">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword" name="password" placeholder="Password">
                  </div>
                  <button class="btn btn-primary" id="eraseButton">Borrar</button>
                  <button type="submit" class="btn btn-primary">Enviar</button>
                </form>
            </div>
                  </br>      
            <div class="row">
                <form action="${pageContext.request.contextPath}/AddUserController" method="get">
                  <button type="submit" class="btn btn-primary">Registrar</button>
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
