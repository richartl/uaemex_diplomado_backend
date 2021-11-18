<%-- 
    Document   : index
    Created on : Nov 5, 2021, 8:33:36 PM
    Author     : richartl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <jsp:include page="partials/head.jsp">
       <jsp:param name="title" value="Borrar usuario" />
    </jsp:include>

    <body>
        <div class="container">
            <div class="jumbotron jumbotron-fluid">
              <div class="container">
                <h1 class="display-4">Borrar usuario</h1>
              </div>
            </div>
            
            <div class="row">
                <div class="col-lg-6">
                    <c:forEach var="user" items="${users}">
                        <div class="card" style="width: 18rem;">
                            <div class="card-header">
                                ${user.name}
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Nickname: <span class="badge badge-secondary">${user.nickname}</span></li>
                                <li class="list-group-item">Email: <span class="badge badge-info">${user.email}</span></li>
                            </ul>
                        </div>
                        </br>
                    </c:forEach>
                </div>
                <div class="col-lg-6">
                    <form action="${pageContext.request.contextPath}/DeleteUserController" method="post">
                        <div class="form-group">
                            <label for="exampleInputNombre">Nickname</label>
                            <input type="text" class="form-control" id="exampleInputNickname" name="nickname" placeholder="Nickname del usuario a borrar">
                        </div>
                        <button class="btn btn-primary" id="eraseButton">Borrar texto</button>
                        <button type="submit" class="btn btn-primary">Enviar</button>
                    </form>
                </div>
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
