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
        <h1>Hello employes!</h1>
        
        <div class="card">
            <div class="card-body">
                <form>
                    <div class="form-group">
                        <label>Dni</label>
                        <input type="text" name="txtDni" class="form-control">
                    </div>
                    <div>
                        <label>Nombres</label>
                        <input type="text" name="txtNombres" class="form-control">
                    </div>
                    <div>
                        <label>Telefono</label>
                        <input type="text" name="txtTel" class="form-control">
                    </div>
                    <div>
                        <label>Estado</label>
                        <input type="text" name="txtEstado" class="form-control">
                    </div>
                    <div>
                        <label>Usuario</label>
                        <input type="text" name="txtUsuario" class="form-control">
                    </div>
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                    
                </form>
            </div>
        </div>
        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
