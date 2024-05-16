<%-- 
    Document   : index
    Created on : 14-05-2024, 18:13:00
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
        
        <div class="container mt-4 col-lg-4">  
            <div class="card col-sm-10">
                <div class="card-body">  
                    <form class="form-sign" action="Validar" method="POST">
                        <div class="form-group text-center">
                            <h3>Login</h3>
                            <img src="img/ventas.jpg" alt="70" width="170"/>
                            <label>Bienvenidos al Sistema</label>
                        </div>
                          <div class="form-group">
                              <label>Usuario:</label>
                              <input type="text" name="txtuser" class="form-control">
                            
                        </div>
                          <div class="form-group">
                            <label>Password:</label>
                              <input type="password" name="txtpass" class="form-control">
                                 
                        </div>
                        
                        <input type="submit" name="accion" value="Ingresar" class="btn btn-primary btn-block">
                      
                    </form>
                    
                </div>    
            </div>        
            
        </div>
        
        
       
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
