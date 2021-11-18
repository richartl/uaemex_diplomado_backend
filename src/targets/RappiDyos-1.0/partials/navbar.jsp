           <ul class="nav nav-tabs">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">Envios</a>
                <div class="dropdown-menu">
                  <form action="${pageContext.request.contextPath}/DeliveriesController" method="get">
                    <a class="dropdown-item" href="#"><button type="submit">Ver Todos</button></a>
                  </form>
                  <form action="${pageContext.request.contextPath}/DeliveryAddController" method="post">
                    <a class="dropdown-item" href="#"><button type="submit">Agregar</button></a>
                  </form>
                  <form action="${pageContext.request.contextPath}/DeliveryDeleteController" method="post">
                    <a class="dropdown-item" href="#"><button type="submit">Eliminar</button></a>
                  </form>
                  <form action="${pageContext.request.contextPath}/DeliveryUpdateController" method="post">
                    <a class="dropdown-item" href="#"><button type="submit">Actualizar</button></a>
                  </form>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">Repartidores</a>
                <div class="dropdown-menu">
                  <form action="${pageContext.request.contextPath}/DeliveryMenController" method="get">
                    <a class="dropdown-item" href="#"><button type="submit">Ver Todos</button></a>
                  </form>
                  <form action="${pageContext.request.contextPath}/DeliveryManAddController" method="post">
                    <a class="dropdown-item" href="#"><button type="submit">Agregar</button></a>
                  </form>
                  <form action="${pageContext.request.contextPath}/DeliveryManDeleteController" method="post">
                    <a class="dropdown-item" href="#"><button type="submit">Eliminar</button></a>
                  </form>
                  <form action="${pageContext.request.contextPath}/DeliveryManUpdateController" method="post">
                    <a class="dropdown-item" href="#"><button type="submit">Actualizar</button></a>
                  </form>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">Products</a>
                <div class="dropdown-menu">
                  <form action="${pageContext.request.contextPath}/ProductsController" method="get">
                    <a class="dropdown-item" href="#"><button type="submit">Ver Todos</button></a>
                  </form>
                  <form action="${pageContext.request.contextPath}/ProductAddController" method="post">
                    <a class="dropdown-item" href="#"><button type="submit">Agregar</button></a>
                  </form>
                  <form action="${pageContext.request.contextPath}/ProductDeleteController" method="post">
                    <a class="dropdown-item" href="#"><button type="submit">Eliminar</button></a>
                  </form>
                  <form action="${pageContext.request.contextPath}/ProductUpdateController" method="post">
                    <a class="dropdown-item" href="#"><button type="submit">Actualizar</button></a>
                  </form>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">Transports</a>
                <div class="dropdown-menu">
                  <form action="${pageContext.request.contextPath}/TransportsController" method="get">
                    <a class="dropdown-item" href="#"><button type="submit">Ver Todos</button></a>
                  </form>
                  <form action="${pageContext.request.contextPath}/TransportsAddController" method="post">
                    <a class="dropdown-item" href="#"><button type="submit">Agregar</button></a>
                  </form>
                  <form action="${pageContext.request.contextPath}/TransportsDeleteController" method="post">
                    <a class="dropdown-item" href="#"><button type="submit">Eliminar</button></a>
                  </form>
                  <form action="${pageContext.request.contextPath}/TransportsUpdateController" method="post">
                    <a class="dropdown-item" href="#"><button type="submit">Actualizar</button></a>
                  </form>
                </div>
              </li>
            </ul>
