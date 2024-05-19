 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
  
    <nav class="navbar navbar-expand-lg navbar-light bg-info">
     
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?accion=Producto" target="myFrame">Producto</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?accion=Empleado" target="myFrame">Empleado</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?accion=Cliente" target="myFrame">Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?accion=NuevaVenta" target="myFrame">Nueva Venta</a>
                    </li>
                </ul> 
                 <div class="dropdown">
                    <button  name="v" class="btn btn-outline-light dropdown-toggle" style="border: none;" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                       
                        ${datos.getNombre()}
                    </button>
                    <ul class="dropdown-menu dropdown-menu-end text-center" aria-labelledby="dropdownMenuButton">
                        <li>
                            <a class="dropdown-item" href="#">
                                <img src="img/user.png" alt="User" width="60"/>
                            </a>
                        </li>
                        <li><a class="dropdown-item" href="#">${datos.getUser()}</a></li>
                        <li><a class="dropdown-item" href="#">${datos.getTel()}</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li>
                            <form action="Validar" method="POST">
                                <button name="accion" value="Salir" class="dropdown-item">Salir</button>
                            </form>
                        </li>
                    </ul>
                </div>
                  </div>
            </div>
          

    </nav>
    <div class="m-4"  style="height: 550px; border:2px solid #3498db">

        <iframe name="myFrame" style="height: 100%; width: 100%"></iframe>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>