
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class EmpleadoDAO {
    
    Conexion conexion = new Conexion();
    Connection connection;
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
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
    
    //Operaciones crud
    
    public List listar(){
        String sql = "select * from empleado";
        List<Empleado>lista = new ArrayList<>();
        
        try{
            connection = conexion.establecerConection();
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Empleado emp =new Empleado();
                emp.setId(rs.getInt(1));
                emp.setDni(rs.getString(2));
                emp.setNombre(rs.getString(3));
                emp.setTel(rs.getString(4));
                emp.setEstado(rs.getString(5));
                emp.setUser(rs.getString(6));
                lista.add(emp);   
            }   
        }catch(Exception e){        
        }
         
        return lista;
    }
    public int agregar(Empleado em){
        String sql = "insert into empleado(Dni,Nombres,Telefono,Estado,User)values(?,?,?,?,?)";
        
        try{
         connection = conexion.establecerConection();
         ps = connection.prepareStatement(sql);
         ps.setString(1,em.getDni());
         ps.setString(2,em.getNombre());
         ps.setString(3,em.getTel());
         ps.setString(4,em.getEstado());
         ps.setString(5,em.getUser());
         
         
         
         ps.executeUpdate();
            
        }catch(Exception e){
            
        }
        
        return r;
    }
    
    public Empleado listarId(int id){
         Empleado em = new Empleado();
            String sql = "select * from empleado where IdEmpleado="+id;
        try {
           
            connection = conexion.establecerConection();
            ps = connection.prepareStatement(sql);
            rs=ps.executeQuery();
            
            while(rs.next()){
         em.setId(rs.getInt(1));
         em.setDni(rs.getString(2));
         em.setNombre(rs.getString(3));
         em.setTel(rs.getString(4));
         em.setEstado(rs.getString(5));
         em.setUser(rs.getString(6));
     
            }
            
         
        } catch (SQLException ex) {
            Logger.getLogger(EmpleadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
           return em;
    }
    
    
    public int actualizar(Empleado em){
        
        String sql = "update empleado set Dni=?,Nombres=?,Telefono=?,Estado=?,User=? where IdEmpleado=?";
        
        try{
         connection = conexion.establecerConection();
         ps = connection.prepareStatement(sql);
         ps.setString(1,em.getDni());
         ps.setString(2,em.getNombre());
         ps.setString(3,em.getTel());
         ps.setString(4,em.getEstado());
         ps.setString(5,em.getUser());
         ps.setInt(6, em.getId());
         
         
         ps.executeUpdate();
            
        }catch(Exception e){
            
        }
        
        return r;
    }
        
    public void  delete(int id){
        String sql = "delete from empleado where IdEmpleado="+id;
        try {
            
            
            connection = conexion.establecerConection();
            ps = connection.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(EmpleadoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
}
