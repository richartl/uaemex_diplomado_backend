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
                <h1 class="display-4">Ecuacion Cuadratica</h1>
              </div>
            </div>

            <div class="card" style="width: 18rem;">
              <img src="./assets/images/ecu.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Ecuacion cuadratica</h5>
              </div>
            </div>

            <div class="row">
                <form action="${pageContext.request.contextPath}/EcuacionController" method="post">
                  <div class="form-group">
                    <label for="exampleInputA">A</label>
                    <input type="text" class="form-control" id="exampleInputA" name="a"  placeholder="Valor para A" pattern="[0-9]+">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputB">C</label>
                    <input type="text" class="form-control" id="exampleInputB" name="b" placeholder="Valor para B" pattern="[0-9]+">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputC">C</label>
                    <input type="text" class="form-control" id="exampleInputC" name="c" placeholder="Valor para C" pattern="[0-9]+">
                  </div>
                  <button class="btn btn-primary" id="eraseButton">Borrar</button>
                  <button type="submit" class="btn btn-primary">Enviar</button>
                </form>
            </div>

    <jsp:include page="partials/scripts.jsp"></jsp:include>
    <script>
                 let view = {
                    init: function() {
                        this.input_for_a = $('#exampleInputA');
                        this.input_for_b = $('#exampleInputB');
                        this.input_for_c = $('#exampleInputC');
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
                        });
                    }
                 }
                 controller.init()
    </script>
    </body>
</html>
