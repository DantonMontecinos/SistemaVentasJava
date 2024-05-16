/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author dmont
 */
public class Conexion {
    
   Connection conectar =null;
   String usuario = "root";
   String contrasenia = "1234";
   String bd = "bd_ventas";
   String ip = "localhost";
   String puerto = "3306";
   
   String cadena ="jdbc:mysql://"+ip+":"+puerto+"/"+bd;
   
   public Connection establecerConection(){
       
       try{
           Class.forName("com.mysql.jdbc.Driver");
           conectar = DriverManager.getConnection(cadena,usuario,contrasenia);
           System.out.println("Conexion exitosa");
           
       }catch(Exception e){
           e.printStackTrace();
       }
       return conectar;
   }
    
}
