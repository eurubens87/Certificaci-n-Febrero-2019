/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;
import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author Rubens
 */
public class conexion {
    Connection con = null;
    public static String driver = "com.mysql.jdbc.Driver";
    public static String path = "jdbc:mysql://localhost:3306/mydb?autoReconnect=true&useSSL=false";
    public static String user = "root";
    public static String pass = "riverplate";
    
    public void conectar()
    {
        try
        {
            Class.forName(driver);
            con = DriverManager.getConnection(path, user, pass);
        }
        catch(ClassNotFoundException | SQLException e)
        {
            JOptionPane.showMessageDialog(null, e.toString(), "ERROR DE CONEXIÓN", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public void desconectar()
    {
        try
        {
            con.close();
            con = null;
        }
        catch(SQLException e)
        {
            JOptionPane.showMessageDialog(null, e.toString(), "NO EXISTE UNA CONEXIÓN ACTIVA", JOptionPane.ERROR_MESSAGE);
        }
    }
    
    //Permite retornar la conexión
   public Connection getConnection(){
      return con;
   }
    
}
