<%-- 
    Document   : Empleado
    Created on : 19-05-2024, 11:52:45
    Author     : dmont
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
    <head>
     
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-6">
            <div class="card-body">
                <form action="Controlador?menu=Empleado" method="POST"> 
                    <div class="form-group">
                        <label>Dni</label>
                        <input type="text" value="${empleado.getDni()}" name="txtDni" class="form-control">
                    </div>
                    <div>
                        <label>Nombres</label>
                        <input type="text" value="${empleado.getNombre()}" name="txtNombres" class="form-control">
                    </div>
                    <div>
                        <label>Telefono</label>
                        <input type="text" value="${empleado.getTel()}" name="txtTel" class="form-control">
                    </div>
                    <div>
                        <label>Estado</label>
                        <input type="text" value="${empleado.getEstado()}" name="txtEstado" class="form-control">
                    </div>
                    <div>
                        <label>Usuario</label>
                        <input type="text" value="${empleado.getUser()}" name="txtUsuario" class="form-control">
                    </div>
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                      <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                    
                </form>
            </div>
        </div>
        
            <div class="col-sm-8">
            
            <table class="table table-hover">
                <thead>

                    <tr>

                        <th>DNI</th>
                        <th>NOMBRES</th>
                        <th>TELEFONO</th>
                        <th>ESTADO  </th>
                        <th>USER</th>
                        <th>ACCIONES</th>

                    </tr>
                </thead>
                <tbody>
                    
              ${em.getUser()}
                    
                <c:forEach var="emp" items="${empleados}">
                    
                    <tr>
                        <td>${empleados.get(emp).getDni()}</td>
                        <td>${empleados.get(emp).getNombre()}</td>
                         <td>${empleados.get(emp).getTel()}</td>
                        <td>${empleados.get(emp).getEstado()}</td>
                        <td>${empleados.get(emp).getUser()}</td>
                               
                        <td>
                            <a class="btn btn-warning" href="Controlador?menu=Empleado&accion=Editar&id=${em.getId()}">Editar</a>
                            <a class="btn btn-danger" href="Controlador?menu=Empleado&accion=Delete&id=${em.getId()}">Eliminar</a>
                           
                        </td>

                    </tr>
                    </c:forEach>
                    
                </tbody>
            </table>
            
        </div>
        </div>

        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
