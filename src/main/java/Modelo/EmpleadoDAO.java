
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class EmpleadoDAO {
    
    Conexion conexion = new Conexion();
    Connection connection;
    PreparedStatement ps;
    ResultSet rs;
    
    //recuperamos el empleado encontrado
    public Empleado Validar(String user, String dni){
        
        Empleado empleado1 = new Empleado();
        String sql = "select * from empleado where User=? and Dni=?";
        
        try{
            connection = conexion.establecerConection();
            ps = connection.prepareStatement(sql);
            //Asignar valores a nuestros parametros de nuesta consulta
            ps.setString(1, user);
            ps.setString(2, dni);
            rs=ps.executeQuery();
            
           
             while(rs.next()){
                empleado1.setId(rs.getInt("IdEmpleado"));
                empleado1.setDni(rs.getString("Dni"));
                empleado1.setNombre(rs.getString("Nombres"));
                empleado1.setTel(rs.getString("Telefono"));
                empleado1.setEstado(rs.getString("Estado"));
                empleado1.setUser(rs.getString("User"));
              
            }
         
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return empleado1;
    }
}
