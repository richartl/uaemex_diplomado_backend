<%-- 
    Document   : index
    Created on : Nov 5, 2021, 8:33:36 PM
    Author     : richartl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="partials/head.jsp">
       <jsp:param name="title" value="MVC" />
    </jsp:include>

    <body>
        <div class="container">
            <div class="jumbotron jumbotron-fluid">
              <div class="container">
                <h1 class="display-4">Guardar productos</h1>
              </div>
            </div>

            <div class="row">
                <form action="${pageContext.request.contextPath}/registrarProducto" method="post">
                  <div class="form-group">
                    <label for="exampleInputA">Clave</label>
                    <input type="text" class="form-control" id="exampleInputClave" name="key"  placeholder="Clave">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputB">Nombre</label>
                    <input type="text" class="form-control" id="exampleInputNombre" name="name" placeholder="Nombre">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputC">Precio</label>
                    <input type="text" class="form-control" id="exampleInputPrecio" name="price" placeholder="Precio">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputCantidad">Cantidad</label>
                    <input type="text" class="form-control" id="exampleInputCantidad" name="quantity" placeholder="Cantidad" pattern="[0-9]+">
                  </div>
                  <button class="btn btn-primary" id="eraseButton">Borrar</button>
                  <button type="submit" class="btn btn-primary">Enviar</button>
                </form>
            </div>

            <div class="row">
                </br>
            </div>

            <div class="row">
                <form action="${pageContext.request.contextPath}/muestraProducto" method="get">
                  <button type="submit" class="btn btn-primary">Ver productos</button>
                </form>
            </div>

    <jsp:include page="partials/scripts.jsp"></jsp:include>
    <script>
                 let view = {
                    init: function() {
                        this.input_for_a = $('#exampleInputClave');
                        this.input_for_b = $('#exampleInputNombre');
                        this.input_for_c = $('#exampleInputPrecio');
                        this.input_for_d = $('#exampleInputCantidad');
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
                            view.input_for_c.val('');
                            view.input_for_d.val('');
                        });
                    }
                 }
                 controller.init()
    </script>
    </body>
</html>
